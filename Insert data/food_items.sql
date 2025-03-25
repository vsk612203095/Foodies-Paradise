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

-- Indian Desserts (category_id = 5)
INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_recipe, food_image, food_type) VALUES
    ('Gulab Jamun', 'Deep-fried milk dumplings soaked in sugar syrup.', 1, 5, '1. Make dough and shape balls...\n2. Deep fry and soak in syrup...', 'static/img/indian_dessert.jpg', 'Veg'),
    ('Laddoo', 'Sweet round balls made from flour, sugar, and ghee.', 1, 5, '1. Roast flour...\n2. Mix with sugar syrup and ghee...\n3. Shape into balls.', 'static/img/Indian-laddoo.jpg'; 'Veg'),
    ('Jalebi', 'Crispy fried batter spirals soaked in sugar syrup.', 1, 5, '1. Prepare batter...\n2. Pipe in hot oil...\n3. Soak in syrup.', 'static/img/jalebi.jpg', 'Veg'),
    ('Rasmalai', 'Soft paneer balls soaked in flavored milk.', 1, 5, '1. Prepare paneer balls...\n2. Cook in saffron milk...\n3. Chill and serve.', 'static/img/Indian-rasmalai.jpg', 'Veg');

