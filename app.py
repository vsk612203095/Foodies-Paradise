from flask import Flask, render_template, request, redirect, url_for, session, flash
from flask_bcrypt import Bcrypt
import pymysql

app = Flask(__name__)
app.secret_key = "vskokare7"  # Use a strong secret key
bcrypt = Bcrypt(app)

# Database connection function
def get_db_connection():
    return pymysql.connect(
        host='localhost',
        user='root',
        password='vskokare7',  # Replace with your actual MySQL password
        database='foodies_db',
        cursorclass=pymysql.cursors.DictCursor  # Returns results as dictionaries
    )

# Function to fetch user details
def get_user_from_db(identifier):
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM users WHERE username = %s OR email = %s", (identifier, identifier))
    user = cursor.fetchone()
    connection.close()
    return user

# Homepage Route
@app.route('/')
def home():
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT category_id, category_name FROM categories")
    categories = cursor.fetchall()
    connection.close()
    
    return render_template('index.html', categories=categories, username=session.get('username'))

# About Us Route
@app.route('/about')
def about():
    return render_template('about.html', username=session.get('username'))

# Cuisines Page Route
@app.route('/cuisines/<int:category_id>')
def show_cuisines(category_id):
    connection = get_db_connection()
    cursor = connection.cursor(pymysql.cursors.DictCursor)

    # Fetch category name
    cursor.execute("SELECT*FROM categories WHERE category_id = %s", (category_id,))
    category = cursor.fetchone()

    # Handle invalid category
    if not category:
        flash(f"Category with ID {category_id} not found.", "error")
        return redirect(url_for('home'))

    # Fetch cuisines related to the category_id
    cursor.execute("SELECT cuisine_id, cuisine_name, cuisine_image,category_id FROM cuisines WHERE category_id = %s", (category_id,))
    cuisines = cursor.fetchall()
    connection.close()

    return render_template('cuisine.html', category_name=category['category_name'], cuisines=cuisines, category_id=category_id, username=session.get('username'))

#food_items route
@app.route('/food_items/<int:cuisine_id>/<int:category_id>')
def show_food_items(cuisine_id, category_id):
    connection = get_db_connection()
    cursor = connection.cursor(pymysql.cursors.DictCursor)

    # Fetch cuisine details
    cursor.execute("SELECT cuisine_id, cuisine_name, category_id FROM cuisines WHERE cuisine_id = %s", (cuisine_id,))
    cuisine = cursor.fetchone()
    print("Cuisine fetched:", cuisine)

    # Handle invalid cuisine
    if not cuisine:
        flash(f"Cuisine with ID {cuisine_id} not found.", "error")
        return redirect(url_for('home'))

    # Fetch food items based on cuisine and optionally category
    cursor.execute("""
            SELECT f.food_id, f.food_name, f.food_type, f.food_descript, f.food_image
            FROM food_items f
            WHERE f.cuisine_id = %s AND f.category_id = %s
        """, (cuisine_id, category_id))
    
    food_items = cursor.fetchall()
    connection.close()

    return render_template(
        'food_items.html',
        cuisine=cuisine,
        food_items=food_items,username=session.get('username')
    )

#Recipe page route
@app.route('/recipe/<int:food_id>')
def view_recipe(food_id):
    connection = get_db_connection()
    cursor = connection.cursor(pymysql.cursors.DictCursor)

    cursor.execute("SELECT food_name, food_recipe FROM food_items WHERE food_id = %s", (food_id,))
    food = cursor.fetchone()

    connection.close()

    if not food:
        flash("Recipe not found!", "error")
        return redirect(url_for('home'))

    return render_template('recipe.html', food=food)




# Check if item is liked
def is_item_liked(user_id, item_id, item_type):
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM liked_items WHERE user_id = %s AND item_id = %s AND item_type = %s",
                   (user_id, item_id, item_type))
    liked = cursor.fetchone()
    connection.close()
    return liked is not None

# Like/Unlike an item
@app.route('/toggle_like', methods=['POST'])
def toggle_like():
    if 'user_id' not in session:
        return jsonify({'error': 'Login required'}), 401

    user_id = session['user_id']
    item_id = request.json.get('item_id')
    item_type = request.json.get('item_type')

    if not item_id or not item_type:
        return jsonify({'error': 'Invalid request'}), 400

    connection = get_db_connection()
    cursor = connection.cursor()

    if is_item_liked(user_id, item_id, item_type):
        # Unlike item
        cursor.execute("DELETE FROM liked_items WHERE user_id = %s AND item_id = %s AND item_type = %s",
                       (user_id, item_id, item_type))
        connection.commit()
        connection.close()
        return jsonify({'liked': False})
    else:
        # Like item
        cursor.execute("INSERT INTO liked_items (user_id, item_id, item_type) VALUES (%s, %s, %s)",
                       (user_id, item_id, item_type))
        connection.commit()
        connection.close()
        return jsonify({'liked': True})


# Liked List Route
@app.route('/liked_list')
def liked_list():
    if 'user_id' not in session:
        flash("Please log in to view your liked items.", "warning")
        return redirect(url_for('login'))

    conn = get_db_connection()
    cursor = conn.cursor()

    # Fetch liked cuisines
    cursor.execute("""
        SELECT cuisines.*, 
               (SELECT COUNT(*) FROM liked_items WHERE liked_items.user_id = %s 
                AND liked_items.item_id = cuisines.cuisine_id 
                AND liked_items.item_type = 'cuisine') AS is_liked
        FROM cuisines 
        JOIN liked_items ON cuisines.cuisine_id = liked_items.item_id 
        WHERE liked_items.user_id = %s AND liked_items.item_type = 'cuisine'
        ORDER BY cuisines.cuisine_name ASC
    """, (session['user_id'], session['user_id']))
    liked_cuisines = cursor.fetchall()

    # # Fetch liked recipes
    # cursor.execute("""
    #     SELECT recipes.*, 
    #            (SELECT COUNT(*) FROM liked_items WHERE liked_items.user_id = %s 
    #             AND liked_items.item_id = recipes.recipe_id 
    #             AND liked_items.item_type = 'recipe') AS is_liked
    #     FROM recipes 
    #     JOIN liked_items ON recipes.recipe_id = liked_items.item_id 
    #     WHERE liked_items.user_id = %s AND liked_items.item_type = 'recipe'
    #     ORDER BY recipes.name ASC
    # """, (session['user_id'], session['user_id']))
    # liked_recipes = cursor.fetchall()

    conn.close()
    return render_template('liked_list.html', liked_cuisines=liked_cuisines , username=session.get('username'))

# Register Route
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = bcrypt.generate_password_hash(request.form['password']).decode('utf-8')

        connection = get_db_connection()
        cursor = connection.cursor()

        try:
            cursor.execute("INSERT INTO users (username, email, password) VALUES (%s, %s, %s)", (username, email, password))
            connection.commit()
            flash("Registration successful! Please log in.", "success")
            return redirect(url_for('login'))
        except pymysql.err.IntegrityError:
            flash("Username or email already exists!", "error")
        finally:
            connection.close()

    return render_template('register.html')

# Login Route
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        identifier = request.form.get('identifier')
        password = request.form.get('password')

        if not identifier or not password:
            flash("Please enter both username/email and password.", "error")
            return redirect(url_for('login'))

        user = get_user_from_db(identifier)

        if not user:
            flash("Username or email not found.", "error")
        elif not bcrypt.check_password_hash(user['password'], password):
            flash("Incorrect password. Please try again.", "error")
        else:
            session['user_id'] = user['id']
            session['username'] = user['username']
            flash("Login successful!", "success")
            return redirect(url_for('home'))

    return render_template('login.html')

# User Profile Route
@app.route('/profile')
def profile():
    if 'user_id' not in session:
        flash("Please log in first.", "error")
        return redirect(url_for('login'))

    connection = get_db_connection()
    cursor = connection.cursor()

    # Fetch user data from database
    cursor.execute("SELECT * FROM users WHERE id = %s", (session['user_id'],))
    user = cursor.fetchone()
    connection.close()

    if not user:
        flash("User not found.", "error")
        return redirect(url_for('login'))

    return render_template('profile.html', user=user, username=session.get('username'))

# Logout Route
@app.route('/logout')
def logout():
    session.clear()
    flash("You have logged out.", "info")
    return redirect(url_for('login'))

# Run the Flask application
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001, debug=True)
