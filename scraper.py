import requests
from bs4 import BeautifulSoup
import mysql.connector
import logging
import random
import time

# Setup logging for debugging
logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

# User-Agent rotation to avoid getting blocked
USER_AGENTS = [
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36",
    "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/109.0",
]

# Setup a session for persistent requests
session = requests.Session()
session.headers.update({"User-Agent": random.choice(USER_AGENTS)})

# Connect to MySQL
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Mahi7781@",  # Update with your actual MySQL password
    database="foodies_db"
)
cursor = db.cursor()

# Function to get recipe links from category page
def get_recipe_links(category_url, limit=10):
    try:
        response = session.get(category_url, timeout=10)
        logging.info(f"Request to {category_url} returned status {response.status_code}")
        
        if response.status_code != 200:
            logging.warning(f"Failed to fetch {category_url}")
            return []

        soup = BeautifulSoup(response.text, 'html.parser')

        # Extract recipe links
        links = []
        for a_tag in soup.find_all('a', class_='card__titleLink', href=True):
            link = a_tag['href']
            if link.startswith("https://www.allrecipes.com/recipe/"):  # Ensure it's a valid recipe link
                links.append(link)
            if len(links) >= limit:
                break
        
        logging.info(f"Extracted {len(links)} recipe links")
        return links

    except Exception as e:
        logging.error(f"Error fetching recipe links: {e}")
        return []

# Function to scrape individual recipes
def scrape_recipe(url, food_id):
    try:
        response = session.get(url, timeout=10)
        logging.info(f"Fetching {url} (Status Code: {response.status_code})")

        if response.status_code != 200:
            logging.warning(f"Skipping {url} due to HTTP {response.status_code}")
            return

        soup = BeautifulSoup(response.text, 'html.parser')

        # Extract details
        title_tag = soup.find('h1', class_='headline')
        ingredients_tags = soup.find_all('span', class_='ingredients-item-name')
        instructions_tags = soup.find_all('div', class_='paragraph')
        prep_time_tag = soup.find('div', class_='recipe-meta-item-body')

        if not (title_tag and ingredients_tags and instructions_tags and prep_time_tag):
            logging.warning(f"Skipping {url} due to missing elements")
            return

        title = title_tag.text.strip()
        recipe_ingredients = "; ".join([i.text.strip() for i in ingredients_tags])
        recipe_instructions = " ".join([i.text.strip() for i in instructions_tags])
        prep_time = prep_time_tag.text.strip()

        # Insert into MySQL
        cursor.execute(
            "INSERT INTO recipes (food_id, recipe_ingredients, recipe_instructions, prep_time) VALUES (%s, %s, %s, %s)",
            (food_id, recipe_ingredients, recipe_instructions, prep_time)
        )
        db.commit()
        logging.info(f"Added recipe: {title}")

        # Sleep to prevent rate-limiting
        time.sleep(random.uniform(1, 3))

    except Exception as e:
        logging.error(f"Error scraping {url}: {e}")

# **Example Usage**
category_url = "https://www.allrecipes.com/recipes/78/breakfast-and-brunch/"
recipe_links = get_recipe_links(category_url, limit=10)

# Assume food_id = 1 for breakfast items, update based on your database
for link in recipe_links:
    scrape_recipe(link, 1)

# Close connection
cursor.close()
db.close()
