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
        password='Mahi7781@',  # Replace with your actual MySQL password
        database='foodies_db',
        cursorclass=pymysql.cursors.DictCursor  # Returns results as dictionaries
    )

# Function to fetch user details
def get_user_from_db(username):
    connection = get_db_connection()
    cursor = connection.cursor()
    query = "SELECT * FROM users WHERE username = %s"
    cursor.execute(query, (username,))
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
    return render_template('about.html')

# Cuisines Page Route
@app.route('/cuisines')
def show_cuisines():
    connection = get_db_connection()
    cursor = connection.cursor()
    query = """
        SELECT c.cuisine_id, c.cuisine_name, c.cuisine_image, c.category_id, cat.category_name 
        FROM cuisines c 
        JOIN categories cat ON c.category_id = cat.category_id
        ORDER BY cat.category_name;
    """
    cursor.execute(query)
    results = cursor.fetchall()
    connection.close()

    # Organizing cuisines by category
    categories = {}
    for row in results:
        category_name = row["category_name"]
        if category_name not in categories:
            categories[category_name] = []
        categories[category_name].append(row)

    return render_template('cuisine.html', categories=categories)

# Register Route
@app.route('/register', methods=['GET', 'POST'])
def register():
    message = None  # Initialize message

    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = bcrypt.generate_password_hash(request.form['password']).decode('utf-8')

        connection = get_db_connection()
        cursor = connection.cursor()

        try:
            cursor.execute("INSERT INTO users (username, email, password) VALUES (%s, %s, %s)",
                           (username, email, password))
            connection.commit()
            flash("Registration successful! Please log in.", "success")
            return redirect(url_for('login'))
        except pymysql.err.IntegrityError:
            message = "Username or email already exists!"
        finally:
            connection.close()

    return render_template('register.html', message=message)

# Login Route
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        identifier = request.form.get('identifier')  # Can be username or email
        password = request.form.get('password')

        if not identifier or not password:
            flash("Please enter both username/email and password.", "error")
            return redirect(url_for('login'))

        connection = get_db_connection()
        cursor = connection.cursor()

        # Check if the identifier matches a username or an email
        cursor.execute("SELECT * FROM users WHERE username = %s OR email = %s", (identifier, identifier))
        user = cursor.fetchone()
        connection.close()

        if not user:
            flash("Username or email not found.", "error")
        elif not bcrypt.check_password_hash(user['password'], password):  # Verify password with bcrypt
            flash("Incorrect password. Please try again.", "error")
        else:
            # Successful login
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

    return render_template('profile.html', user=user)

# Logout Route
@app.route('/logout')
def logout():
    session.clear()
    flash("You have logged out.", "info")
    return redirect(url_for('login'))

# Run the Flask application
if __name__ == '__main__':
    app.run(debug=True)
