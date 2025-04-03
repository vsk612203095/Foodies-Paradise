create database foodies_db;
use foodies_db;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    category_image VARCHAR(255) NOT NULL
);


CREATE TABLE cuisines (
    cuisine_id INT NOT NULL,
    cuisine_name VARCHAR(255) NOT NULL,
    category_id INT NOT NULL,
    cuisine_image VARCHAR(255) NOT NULL,
    PRIMARY KEY (cuisine_id, category_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);




CREATE TABLE food_items (
    food_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(255) NOT NULL,
    food_descript TEXT NOT NULL,
    cuisine_id INT NOT NULL,
    category_id INT NOT NULL,
    food_image VARCHAR(255),
    food_type ENUM('Veg', 'Non-Veg') NOT NULL,
    FOREIGN KEY (cuisine_id, category_id) REFERENCES cuisines(cuisine_id, category_id) ON DELETE CASCADE
);

CREATE TABLE recipes (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY,
    food_id INT,
    food_name VARCHAR(255),
    recipe_ingredients TEXT,
    recipe_instructions TEXT,
    cook_time VARCHAR(50),
    FOREIGN KEY (food_id) REFERENCES food_items(food_id) ON DELETE CASCADE
);



CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE liked_items (
    liked_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    item_id INT NOT NULL,
    item_type ENUM('cuisine', 'food', 'recipe') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, item_id, item_type),  -- Prevent duplicate likes
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

select*from food_items;
select*from recipes;

SELECT * FROM recipes WHERE recipe_ingredients LIKE '%Eggs%' OR recipe_ingredients LIKE '%Butter%';

SELECT * FROM recipes WHERE LOWER(recipe_ingredients) LIKE '%egg%' OR LOWER(recipe_ingredients) LIKE '%onion%';

SELECT * FROM recipes WHERE LOWER(recipe_ingredients) LIKE '%egg%' OR LOWER(recipe_ingredients) LIKE '%onion%';


