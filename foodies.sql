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
    food_recipe TEXT NOT NULL,
    food_image VARCHAR(255),
    food_type ENUM('Veg', 'Non-Veg') NOT NULL,
    FOREIGN KEY (cuisine_id) REFERENCES cuisines(cuisine_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) 
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE liked_cuisines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    cuisine_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (cuisine_id) REFERENCES cuisines(cuisine_id) ON DELETE CASCADE,
    UNIQUE (user_id, cuisine_id) -- Prevents duplicate likes
);
show tables;
