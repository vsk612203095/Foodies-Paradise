-- Breakfast Items (category_id = 1)
-- Indian Breakfast (category_id = 1)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
	('Idli', 'Steamed rice cakes served with chutney and sambar.', 1, 1, '1. Soak rice and dal...\n2. Ferment overnight...\n3. Steam and serve.', 'static/img/Indian-idli.jpg', 'Veg'),     ('Dosa', 'Thin crispy crepe made from fermented rice and lentils.', 1, 1, '1. Prepare batter...\n2. Spread on pan and cook...\n3. Serve with chutney.', 'static/img/Indian-dosa.jpg', 'Veg'),
    ('Upma', 'Savory South Indian dish made from semolina.', 1, 1, '1. Roast semolina...\n2. Cook with vegetables and spices...\n3. Serve hot.', 'static/img/Indian-upma.jpg', 'Veg'),
	('Chole Bhature', 'Spicy chickpea curry served with deep-fried bread.', 1, 1, '1. Prepare chole curry...\n2. Fry bhature...\n3. Serve hot.', 'static/img/Indian-chole-bhature.jpg', 'Veg'),
    ('Aloo Paratha', 'Stuffed Indian flatbread with spiced mashed potatoes.', 1, 1, '1. Knead dough...\n2. Stuff with potato mix...\n3. Cook on tawa.', 'static/img/Indian-Aloo-Paratha.jpg', 'Veg'),
    ('Egg Bhurji', 'Scrambled eggs cooked with Indian spices and onions.', 1, 1, '1. Whisk eggs...\n2. Cook with onions, tomatoes, and spices...\n3. Serve hot.', 'static/img/Indian-egg-bhurji.jpg', 'Non-Veg');

-- Indian Lunch & Dinner (category_id = 2, 4)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
    ('Paneer Tikka Masala', 'Grilled paneer in creamy tomato sauce.', 1, 2, '1. Marinate paneer...\n2. Grill and cook in sauce...\n3. Serve hot.', 'static/img/Indian-paneer-tikka-masala.jpg', 'Veg'),
    ('Chicken Tikka Masala', 'Grilled chicken in spiced creamy tomato gravy.', 1, 2, '1. Marinate chicken...\n2. Grill and cook in sauce...\n3. Serve hot.', 'static/img/Indian-chicken-tikka-masala.jpg', 'Non-Veg'),
    ('Dal Tadka', 'Lentil curry with aromatic garlic and spice tempering.', 1, 2, '1. Cook lentils...\n2. Prepare garlic tempering...\n3. Mix and serve.', 'static/img/Indian-daltadka.jpg', 'Veg'),
    ('Varan Bhat', 'Simple Maharashtrian dal with rice.', 1, 2, '1. Boil dal...\n2. Add ghee and turmeric...\n3. Serve over rice.', 'static/img/Indian-varan-bhat.jpg', 'Veg'),
    ('Bhindi Sabji', 'Stir-fried okra with Indian spices.', 1, 2, '1. Chop okra...\n2. Stir-fry with spices...\n3. Serve hot.', 'static/img/Indian-bhindi-sabji.jpg', 'Veg'),
    ('Butter Chicken', 'Creamy chicken curry cooked in tomato-based sauce.', 1, 2, '1. Marinate chicken...\n2. Grill and cook in sauce...\n3. Serve hot.', 'static/img/Indian-butter-chicken.jpg', 'Non-Veg'),
    -- ('Naan', 'Soft, fluffy Indian flatbread.', 1, 2, '1. Knead dough...\n2. Roll and cook on tandoor...\n3. Serve hot.', 'static/img/Indian-naan.jpg', 'Veg'),
    ('Biryani', 'Aromatic rice dish with spices and meat or vegetables.', 1, 2, '1. Cook rice...\n2. Prepare meat and layer...\n3. Steam and serve.', 'static/img/Indian-biryani.jpg', 'Non-Veg'),
    ('Veg Pulao', 'Fragrant rice dish cooked with vegetables and spices.', 1, 2, '1. Sauté vegetables...\n2. Add rice and cook...\n3. Serve hot.', 'static/img/Indian-pulao.jpg', 'Veg');
    
    
-- Indian Snacks (category_id = 3)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
    ('Vada Pav', 'Spicy potato fritter in a bun with chutney.', 1, 3, '1. Make potato stuffing...\n2. Coat and deep-fry...\n3. Serve in bun.', 'static/img/indian_snacks.jpg', 'Veg'),
    ('Samosa', 'Crispy pastry filled with spiced potato or meat.', 1, 3, '1. Prepare filling...\n2. Wrap in dough...\n3. Deep-fry.', 'static/img/Indian-samosa.jpg', 'Veg'),
    ('Kutchi Dabeli', 'Spiced mashed potatoes stuffed in a bun with chutneys.', 1, 3, '1. Prepare potato mix...\n2. Stuff in bun...\n3. Garnish and serve.', 'static/img/Indian-Dabeli.jpg', 'Veg'),
    ('Dhokla', 'Steamed fermented gram flour cake.', 1, 3, '1. Prepare batter...\n2. Steam in tray...\n3. Cut and serve.', 'static/img/Indian-dhokla.jpg', 'Veg'),
    ('Pav Bhaji', 'Spicy mashed vegetable curry served with buttered buns.', 1, 3, '1. Cook mixed vegetables...\n2. Mash and season...\n3. Serve with pav.', 'static/img/Indian-pavbhaji.jpg', 'Veg'),
    ('Misal Pav', 'Spicy sprouted lentil curry served with bread.', 1, 3, '1. Cook misal...\n2. Prepare tarri...\n3. Serve with pav.', 'static/img/Indian-Misal-Pav.jpg', 'Veg'),
    ('Kachori', 'Deep-fried pastry filled with spicy lentil mix.', 1, 3, '1. Prepare dough and stuffing...\n2. Roll and deep-fry...\n3. Serve hot.', 'static/img/kachori.jpg', 'Veg'),
    ('Papdi Chaat', 'Crispy flour crackers topped with chutneys and yogurt.', 1, 3, '1. Arrange papdi...\n2. Add toppings...\n3. Serve fresh.', 'static/img/papdi_chaat.jpg', 'Veg'),
    ('Pani Puri', 'Crispy puris filled with spicy water and potato.', 1, 3, '1. Prepare puris...\n2. Make fillings and water...\n3. Serve fresh.', 'static/img/pani_puri.jpg', 'Veg');


INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
    ('Paneer Tikka Masala', 'Grilled paneer in creamy tomato sauce.', 1, 4, '1. Marinate paneer...\n2. Grill and cook in sauce...\n3. Serve hot.', 'static/img/Indian-paneer-tikka-masala.jpg', 'Veg'),
    ('Chicken Tikka Masala', 'Grilled chicken in spiced creamy tomato gravy.', 1, 4, '1. Marinate chicken...\n2. Grill and cook in sauce...\n3. Serve hot.', 'static/img/Indian-chicken-tikka-masala.jpg', 'Non-Veg'),
    ('Dal Tadka', 'Lentil curry with aromatic garlic and spice tempering.', 1, 4, '1. Cook lentils...\n2. Prepare garlic tempering...\n3. Mix and serve.', 'static/img/Indian-daltadka.jpg', 'Veg'),
    ('Varan Bhat', 'Simple Maharashtrian dal with rice.', 1, 4, '1. Boil dal...\n2. Add ghee and turmeric...\n3. Serve over rice.', 'static/img/Indian-varan-bhat.jpg', 'Veg'),
    ('Bhindi Sabji', 'Stir-fried okra with Indian spices.', 1, 4, '1. Chop okra...\n2. Stir-fry with spices...\n3. Serve hot.', 'static/img/Indian-bhindi-sabji.jpg', 'Veg'),
    ('Butter Chicken', 'Creamy chicken curry cooked in tomato-based sauce.', 1, 4, '1. Marinate chicken...\n2. Grill and cook in sauce...\n3. Serve hot.', 'static/img/Indian-butter-chicken.jpg', 'Non-Veg'),
    -- ('Naan', 'Soft, fluffy Indian flatbread.', 1, 2, '1. Knead dough...\n2. Roll and cook on tandoor...\n3. Serve hot.', 'static/img/Indian-naan.jpg', 'Veg'),
    ('Biryani', 'Aromatic rice dish with spices and meat or vegetables.', 1, 4, '1. Cook rice...\n2. Prepare meat and layer...\n3. Steam and serve.', 'static/img/Indian-biryani.jpg', 'Non-Veg'),
    ('Veg Pulao', 'Fragrant rice dish cooked with vegetables and spices.', 1, 4, '1. Sauté vegetables...\n2. Add rice and cook...\n3. Serve hot.', 'static/img/Indian-pulao.jpg', 'Veg');
    
    
-- Indian Desserts (category_id = 5)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
    ('Gulab Jamun', 'Deep-fried milk dumplings soaked in sugar syrup.', 1, 5, '1. Make dough and shape balls...\n2. Deep fry and soak in syrup...', 'static/img/Indian-gulabjamun.jpg', 'Veg'),
    ('Laddoo', 'Sweet round balls made from flour, sugar, and ghee.', 1, 5, '1. Roast flour...\n2. Mix with sugar syrup and ghee...\n3. Shape into balls.', 'static/img/Indian-laddoo.jpg', 'Veg'),
    ('Jalebi', 'Crispy fried batter spirals soaked in sugar syrup.', 1, 5, '1. Prepare batter...\n2. Pipe in hot oil...\n3. Soak in syrup.', 'static/img/Indian-jalebi.jpg', 'Veg'),
    ('Rasmalai', 'Soft paneer balls soaked in flavored milk.', 1, 5, '1. Prepare paneer balls...\n2. Cook in saffron milk...\n3. Chill and serve.', 'static/img/Indian-rasmalai.jpg', 'Veg');



-- Chinese Cuisine (cuisine_id = 2)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
-- Breakfast (category_id = 1)
('Dim Sum', 'Steamed dumplings with meat or vegetables.', 2, 1, 'Prepare dough, fill with meat/veggies, steam for 15 mins.', 'static/img/Chinese-dimsum.jpg', 'Non-Veg'),
('Congee', 'Rice porridge often served with pickles or meat.', 2, 1, 'Boil rice with excess water, cook until smooth.', 'static/img/Chinese-congee.jpg', 'Veg'),

-- Lunch (category_id = 2)
('Kung Pao Chicken', 'Stir-fried chicken with peanuts and spicy sauce.', 2, 2, 'Marinate chicken, stir-fry with sauce and peanuts.', 'static/img/Chinese-kung-pao_chicken.jpg', 'Non-Veg'),
('Chow Mein', 'Stir-fried noodles with vegetables and meat.', 2, 2, 'Boil noodles, stir-fry with soy sauce and veggies.', 'static/img/Chinese-chowmein.jpg', 'Veg'),

-- Snacks (category_id = 3)
('Spring Rolls', 'Crispy rolls stuffed with vegetables and meat.', 2, 3, 'Fill wrappers with stuffing, roll, and deep-fry.', 'static/img/Chinese-spring-rolls.jpg', 'Veg'),
('Baozi', 'Steamed buns filled with sweet or savory stuffing.', 2, 3, 'Make dough, fill with stuffing, steam for 10 mins.', 'static/img/Chinese-baozi.jpg', 'Veg'),

-- Dinner (category_id = 4)
('Peking Duck', 'Crispy duck served with pancakes and hoisin sauce.', 2, 4, 'Roast duck until crispy, serve with pancakes.', 'static/img/Chinese-peking-duck.jpg', 'Non-Veg'),
('Mapo Tofu', 'Spicy tofu with minced meat and Sichuan pepper.', 2, 4, 'Cook tofu with spicy sauce and minced meat.', 'static/img/Chinese-mapo-tofu.jpg', 'Veg'),

-- Dessert (category_id = 5)
('Egg Tarts', 'Sweet custard tarts with a flaky crust.', 2, 5, 'Prepare pastry, fill with egg custard, and bake.', 'static/img/Chinese-egg-tarts.jpg', 'Veg'),
('Tangyuan', 'Glutinous rice balls served in sweet syrup.', 2, 5, 'Mix rice flour, shape balls, and boil in syrup.', 'static/img/Chinese-tangyuan.jpg', 'Veg'),

-- Soups (category_id = 6)
('Hot and Sour Soup', 'Spicy and tangy soup with tofu and mushrooms.', 2, 6, 'Simmer broth, add tofu, mushrooms, and vinegar.', 'static/img/Chinese-hot-sour-soup.jpg', 'Veg'),
('Wonton Soup', 'Clear soup with stuffed wontons and green onions.', 2, 6, 'Boil broth, add stuffed wontons, and cook.', 'static/img/Chinese-wonton-soup.jpg', 'Non-Veg');

-- Japanese Cuisine (cuisine_id = 4)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
-- Breakfast (category_id = 1)
('Tamago Kake Gohan', 'Steamed rice with raw egg and soy sauce.', 4, 1, 'Serve hot rice, mix with raw egg and soy sauce.', 'static/img/Japanese-TamagoKakeGohan.jpg', 'Veg'),
('Miso Soup', 'Traditional Japanese soup with miso paste and tofu.', 4, 1, 'Dissolve miso paste in broth, add tofu and seaweed.', 'static/img/Japanese-MisoSoup.jpg', 'Veg'),

-- Lunch (category_id = 2)
('Sushi', 'Rice rolls with seafood, vegetables, and nori.', 4, 2, 'Roll sushi rice and filling in seaweed, slice.', 'static/img/Japanese-Sushi.jpg', 'Non-Veg'),
('Ramen', 'Japanese noodle soup with broth, meat, and toppings.', 4, 2, 'Boil noodles, prepare broth, and assemble.', 'static/img/Japanese-Ramen.jpg', 'Non-Veg'),

-- Snacks (category_id = 3)
('Onigiri', 'Rice balls wrapped in seaweed with various fillings.', 4, 3, 'Shape rice into balls, add filling, and wrap.', 'static/img/Japanese-Onigiri.jpg', 'Veg'),
('Takoyaki', 'Octopus-filled batter balls, topped with sauce.', 4, 3, 'Cook batter in molds with octopus, flip until golden.', 'static/img/Japanese-Takoyaki.jpg', 'Non-Veg'),

-- Dinner (category_id = 4)
('Tempura', 'Crispy deep-fried seafood and vegetables.', 4, 4, 'Dip ingredients in batter, deep fry until crispy.', 'static/img/Japanese-Tempura.jpg', 'Non-Veg'),
('Yakitori', 'Grilled chicken skewers with tare sauce.', 4, 4, 'Grill chicken skewers and glaze with sauce.', 'static/img/Japanese-Yakitori.jpg', 'Non-Veg'),

-- Dessert (category_id = 5)
('Mochi', 'Soft rice cakes often filled with sweet red bean paste.', 4, 5, 'Pound rice flour, shape into balls, and fill.', 'static/img/Japanese-Mochi.jpg', 'Veg'),
('Dorayaki', 'Sweet pancake sandwich with red bean filling.', 4, 5, 'Cook pancakes, fill with red bean paste, and sandwich.', 'static/img/Japanese-Dorayaki.jpg', 'Veg'),

-- Soups (category_id = 6)
('Tonjiru', 'Pork miso soup with root vegetables.', 4, 6, 'Cook pork and vegetables in miso broth.', 'static/img/Japanese-Tonjiru.jpg', 'Non-Veg'),
('Chawanmushi', 'Savory egg custard steamed with mushrooms.', 4, 6, 'Mix eggs with broth, steam with mushrooms.', 'static/img/Japanese-Chawanmushi.jpg', 'Non-Veg');




-- Korean Cuisine (cuisine_id = 3)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
-- Breakfast (category_id = 1)
('Kimchi Fried Rice', 'Fried rice with kimchi, eggs, and gochujang.', 3, 1, 'Stir-fry rice with kimchi, season with gochujang.', 'static/img/Korean-KimchiFriedRice.jpg', 'Veg'),
('Korean Egg Bread', 'Sweet and fluffy egg bread, popular street food.', 3, 1, 'Mix batter, add egg, and bake.', 'static/img/Korean-KoreanEggBread.jpg', 'Veg'),

-- Lunch (category_id = 2)
('Bibimbap', 'Rice bowl topped with veggies, egg, and meat.', 3, 2, 'Arrange ingredients on rice, top with sauce.', 'static/img/Korean-Bibimbap.jpg', 'Non-Veg'),
('Jjajangmyeon', 'Noodles with black bean sauce and pork.', 3, 2, 'Cook noodles, stir-fry sauce, and mix.', 'static/img/Korean-Jjajangmyeon.jpg', 'Non-Veg'),

-- Snacks (category_id = 3)
('Tteokbokki', 'Spicy rice cakes in gochujang sauce.', 3, 3, 'Boil rice cakes in spicy sauce.', 'static/img/Korean-Tteokbokki.jpg', 'Veg'),
('Hotteok', 'Sweet stuffed Korean pancakes.', 3, 3, 'Fill dough with brown sugar and pan-fry.', 'static/img/Korean-Hotteok.jpg', 'Veg'),

-- Dinner (category_id = 4)
('Korean BBQ', 'Grilled beef or pork with dipping sauces.', 3, 4, 'Grill marinated meat and serve with sauces.', 'static/img/Korean-KoreanBBQ.jpg', 'Non-Veg'),
('Sundubu Jjigae', 'Spicy soft tofu stew with seafood.', 3, 4, 'Simmer tofu with seafood and chili paste.', 'static/img/Korean-SundubuJjigae.jpg', 'Non-Veg'),

-- Dessert (category_id = 5)
('Bungeoppang', 'Fish-shaped pastry filled with sweet red bean.', 3, 5, 'Pour batter into mold, add red bean filling.', 'static/img/Korean-Bungeoppang.jpg', 'Veg'),
('Patbingsu', 'Shaved ice dessert with sweet toppings.', 3, 5, 'Shave ice, top with fruits and condensed milk.', 'static/img/Korean-Patbingsu.jpg', 'Veg');

-- Western Cuisine (cuisine_id = 6)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
-- Breakfast (category_id = 1)
('Pancakes', 'Fluffy pancakes served with syrup.', 6, 1, 'Mix batter, cook on skillet, serve with syrup.', 'static/img/Western-Pancakes.jpg', 'Veg'),
('Omelette', 'Egg dish with cheese and veggies.', 6, 1, 'Beat eggs, cook with fillings.', 'static/img/Western-Omelette.jpg', 'Veg'),

-- Lunch (category_id = 2)
('Grilled Chicken', 'Chicken breast grilled with herbs.', 6, 2, 'Marinate chicken, grill until cooked.', 'static/img/Western-GrilledChicken.jpg', 'Non-Veg'),
('Caesar Salad', 'Lettuce, croutons, cheese, and Caesar dressing.', 6, 2, 'Toss ingredients with dressing.', 'static/img/Western-CaesarSalad.jpg', 'Veg'),

-- Snacks (category_id = 3)
('French Fries', 'Crispy deep-fried potato fries.', 6, 3, 'Cut potatoes, deep fry until golden.', 'static/img/Western-FrenchFries.jpg', 'Veg'),
('Club Sandwich', 'Triple-layer sandwich with chicken and bacon.', 6, 3, 'Layer bread with fillings and toast.', 'static/img/Western-ClubSandwich.jpg', 'Non-Veg'),

-- Dinner (category_id = 4)
('Steak', 'Juicy beef steak grilled to perfection.', 6, 4, 'Season steak, grill to desired doneness.', 'static/img/Western-Steak.jpg', 'Non-Veg'),
('Mac and Cheese', 'Creamy macaroni pasta in cheese sauce.', 6, 4, 'Cook pasta, mix with cheese sauce.', 'static/img/Western-MacAndCheese.jpg', 'Veg');

-- Italian Cuisine (cuisine_id = 5)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
-- Breakfast (category_id = 1)
('Frittata', 'Italian-style baked omelette with veggies.', 5, 1, 'Whisk eggs, add veggies, and bake.', 'static/img/Italian-Frittata.jpg', 'Veg'),
('Bruschetta', 'Toasted bread topped with tomatoes and basil.', 5, 1, 'Toast bread, top with tomato mixture.', 'static/img/Italian-Bruschetta.jpg', 'Veg'),

-- Lunch (category_id = 2)
('Margherita Pizza', 'Classic pizza with tomato, mozzarella, and basil.', 5, 2, 'Prepare dough, add toppings, and bake.', 'static/img/Italian-MargheritaPizza.jpg', 'Veg'),
('Lasagna', 'Layered pasta dish with meat and béchamel sauce.', 5, 2, 'Layer pasta, meat sauce, and bake.', 'static/img/Italian-Lasagna.jpg', 'Non-Veg'),

-- Snacks (category_id = 3)
('Arancini', 'Fried risotto balls stuffed with cheese.', 5, 3, 'Roll risotto into balls, stuff with cheese, and fry.', 'static/img/Italian-Arancini.jpg', 'Veg'),
('Panini', 'Grilled Italian sandwich with meats and cheese.', 5, 3, 'Assemble sandwich, grill until crispy.', 'static/img/Italian-Panini.jpg', 'Non-Veg'),

-- Dinner (category_id = 4)
('Pasta Carbonara', 'Creamy pasta with pancetta and egg sauce.', 5, 4, 'Cook pasta, mix with egg and pancetta.', 'static/img/Italian-PastaCarbonara.jpg', 'Non-Veg'),
('Risotto', 'Creamy rice dish cooked in broth.', 5, 4, 'Sauté rice, add broth gradually.', 'static/img/Italian-Risotto.jpg', 'Veg'),

-- Dessert (category_id = 5)
('Tiramisu', 'Layered coffee-flavored dessert with mascarpone.', 5, 5, 'Layer coffee-soaked biscuits with mascarpone.', 'static/img/Italian-Tiramisu.jpg', 'Veg'),
('Cannoli', 'Crispy pastry tubes filled with sweet ricotta.', 5, 5, 'Fry pastry shells, fill with ricotta mixture.', 'static/img/Italian-Cannoli.jpg', 'Veg');
