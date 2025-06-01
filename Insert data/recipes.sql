INSERT INTO recipes (food_id, food_name, recipe_ingredients, recipe_instructions, cook_time) VALUES
-- Breakfast (category_id = 1)
(1, 'Idli', 'Rice, Urad dal, Fenugreek seeds, Salt, Water.', '1. Soak rice and dal overnight.\n2. Grind to a smooth batter and ferment for 8 hours.\n3. Pour into idli molds and steam for 10 minutes.', '30 min'),
(2, 'Dosa', 'Rice, Urad dal, Fenugreek seeds, Salt, Water.', '1. Soak rice and dal overnight.\n2. Grind to a smooth batter and ferment for 8 hours.\n3. Spread on a hot griddle and cook until golden brown.', '20 min'),
(3, 'Upma', 'Semolina, Water, Mustard seeds, Curry leaves, Vegetables, Salt, Oil.', '1. Roast semolina until golden.\n2. Heat oil, add mustard seeds, curry leaves, and vegetables.\n3. Add water and semolina, cook until thick.', '15 min'),
(4, 'Chole Bhature', 'Chickpeas, Tomatoes, Spices, Flour, Yogurt, Baking soda.', '1. Soak chickpeas overnight and cook with spices.\n2. Knead dough for bhature and let it rest.\n3. Fry bhature and serve with chole.', '45 min'),
(5, 'Aloo Paratha', 'Whole wheat flour, Potatoes, Spices, Butter.', '1. Knead dough and prepare mashed spiced potatoes.\n2. Stuff dough with potatoes and roll into a paratha.\n3. Cook on a griddle with butter.', '30 min'),
(6, 'Egg Bhurji', 'Eggs, Onions, Tomatoes, Green chilies, Spices, Butter.', '1. Heat butter and sauté onions, tomatoes, and chilies.\n2. Add beaten eggs and cook until scrambled.\n3. Serve hot with bread or roti.', '15 min'),

-- Lunch (category_id = 2)
(7, 'Paneer Tikka Masala', 'Paneer, Yogurt, Spices, Tomatoes, Cream.', '1. Marinate paneer in spiced yogurt and grill.\n2. Prepare a rich tomato-based gravy and add paneer.\n3. Cook for a few minutes and serve hot.', '40 min'),
(8, 'Chicken Tikka Masala', 'Chicken, Yogurt, Spices, Tomatoes, Cream.', '1. Marinate chicken and grill.\n2. Cook in a creamy tomato-based gravy.\n3. Serve with naan or rice.', '50 min'),
(9, 'Dal Tadka', 'Lentils, Garlic, Onions, Tomatoes, Spices.', '1. Cook lentils until soft.\n2. Prepare a tempering with garlic, onions, and spices.\n3. Mix with dal and serve with rice.', '30 min'),
(10, 'Varan Bhat', 'Toor dal, Water, Turmeric, Salt, Ghee, Rice.', '1. Cook dal with turmeric and salt.\n2. Mash and serve over rice with ghee.', '25 min'),
(11, 'Bhindi Sabji', 'Okra, Onions, Tomatoes, Spices.', '1. Chop okra and sauté with onions and tomatoes.\n2. Cook until tender and serve hot.', '20 min'),
(12, 'Butter Chicken', 'Chicken, Tomatoes, Butter, Cream, Spices.', '1. Cook chicken in a buttery tomato-based gravy.\n2. Add cream and simmer.\n3. Serve with naan or rice.', '45 min'),
(13, 'Biryani', 'Rice, Chicken/Veggies, Yogurt, Spices, Onions.', '1. Cook rice separately and prepare a spiced meat/vegetable mixture.\n2. Layer rice and meat, then slow cook.\n3. Serve hot.', '1 hr'),
(14, 'Veg Pulao', 'Rice, Mixed vegetables, Spices, Water.', '1. Sauté vegetables and spices.\n2. Add rice and water, cook until done.\n3. Serve hot.', '30 min'),

-- Snacks (category_id = 3)
(15, 'Vada Pav', 'Potatoes, Bread, Spices, Garlic chutney.', '1. Make spiced mashed potato balls.\n2. Coat in batter and deep fry.\n3. Serve in a bun with chutney.', '20 min'),
(16, 'Samosa', 'Potatoes, Peas, Spices, Flour.', '1. Prepare a spiced potato filling.\n2. Stuff in pastry dough and deep fry.', '40 min'),
(17, 'Kutchi Dabeli', 'Potatoes, Spices, Bun, Pomegranate, Peanuts.', '1. Mix mashed potatoes with spices.\n2. Stuff in a bun with chutney and garnishes.', '25 min'),
(18, 'Dhokla', 'Gram flour, Yogurt, Spices.', '1. Prepare a fermented batter.\n2. Steam until fluffy and garnish with tempering.', '30 min'),
(19, 'Pav Bhaji', 'Potatoes, Tomatoes, Peppers, Spices, Bread.', '1. Mash vegetables with spices.\n2. Serve with buttered bread.', '35 min'),
(20, 'Misal Pav', 'Sprouted lentils, Onions, Tomatoes, Spices, Bread.', '1. Cook lentils with spices.\n2. Serve with onions, tomatoes, and bread.', '40 min'),
(21, 'Kachori', 'Flour, Lentils/Peas, Spices.', '1. Prepare spiced lentil/pea filling.\n2. Wrap in dough and deep fry.', '35 min'),
(22, 'Papdi Chaat', 'Papdi, Yogurt, Chutney, Potatoes, Spices.', '1. Assemble crispy wafers with yogurt, chutney, and toppings.', '15 min'),
(23, 'Pani Puri', 'Flour, Tamarind, Spices, Potatoes, Chickpeas.', '1. Make crispy puris and spicy flavored water.\n2. Stuff with potatoes and chickpeas, dip in pani.', '20 min'),

-- Dinner (category_id = 4) (Same as Lunch)
(24, 'Paneer Tikka Masala', 'Paneer, Yogurt, Spices, Tomatoes, Cream.', 'Same as lunch.', '40 min'),
(25, 'Chicken Tikka Masala', 'Chicken, Yogurt, Spices, Tomatoes, Cream.', 'Same as lunch.', '50 min'),
(26, 'Dal Tadka', 'Lentils, Garlic, Onions, Tomatoes, Spices.', 'Same as lunch.', '30 min'),
(27, 'Varan Bhat', 'Toor dal, Water, Turmeric, Salt, Ghee, Rice.', 'Same as lunch.', '25 min'),
(28, 'Bhindi Sabji', 'Okra, Onions, Tomatoes, Spices.', 'Same as lunch.', '20 min'),
(29, 'Butter Chicken', 'Chicken, Tomatoes, Butter, Cream, Spices.', 'Same as lunch.', '45 min'),
(30, 'Biryani', 'Rice, Chicken/Veggies, Yogurt, Spices, Onions.', 'Same as lunch.', '1 hr'),
(31, 'Veg Pulao', 'Rice, Mixed vegetables, Spices, Water.', 'Same as lunch.', '30 min'),

-- Desserts (category_id = 5)
(32, 'Gulab Jamun', 'Milk solids, Sugar, Cardamom, Flour.', '1. Knead dough from milk solids.\n2. Fry and soak in sugar syrup.', '45 min'),
(33, 'Laddoo', 'Flour, Sugar, Ghee.', '1. Roast flour, mix with sugar and ghee.\n2. Shape into balls.', '30 min'),
(34, 'Jalebi', 'Flour, Yogurt, Sugar.', '1. Make a fermented batter.\n2. Fry in spiral shapes and soak in syrup.', '45 min'),
(35, 'Rasmalai', 'Milk, Paneer, Sugar, Cardamom.', '1. Make paneer dumplings.\n2. Soak in sweet flavored milk.', '50 min');



INSERT INTO recipes (food_id, food_name, recipe_ingredients, recipe_instructions, cook_time) VALUES

-- CHINESE CUISINE (cuisine_id = 2)
-- Breakfast
(1, 'Dim Sum', 'Flour, pork filling, garlic, ginger, soy sauce.', 'Mix the filling, wrap in dough, steam for 15 mins.', '30 mins'),
(2, 'Congee', 'Rice, water, chicken, soy sauce, ginger.', 'Boil rice with water until thick, add chicken and seasoning.', '40 mins'),
(3, 'Scallion Pancakes', 'Flour, scallions, oil, salt, water.', 'Knead dough, roll flat, sprinkle scallions, pan-fry.', '25 mins'),
(4, 'Youtiao', 'Flour, baking soda, salt, sugar, water.', 'Mix dough, let rest, deep-fry in oil until golden.', '45 mins'),

-- Lunch
(5, 'Kung Pao Chicken', 'Chicken, peanuts, soy sauce, garlic, chilies.', 'Stir-fry chicken, add sauce, peanuts, cook for 5 mins.', '20 mins'),
(6, 'Mapo Tofu', 'Tofu, minced pork, garlic, Sichuan pepper, soy sauce.', 'Cook pork, add tofu, seasoning, simmer.', '25 mins'),
(7, 'Chow Mein', 'Egg noodles, cabbage, carrot, soy sauce, chicken.', 'Boil noodles, stir-fry with veggies and sauce.', '20 mins'),
(8, 'Peking Duck', 'Duck, hoisin sauce, pancakes, scallions.', 'Roast duck, slice, serve with pancakes and sauce.', '1.5 hrs'),

-- Snacks
(9, 'Spring Rolls', 'Cabbage, carrot, flour wrappers, soy sauce.', 'Fill wrappers, roll tightly, deep-fry until crispy.', '25 mins'),
(10, 'Baozi', 'Flour, pork filling, soy sauce, garlic.', 'Prepare dough, fill with pork, steam for 20 mins.', '40 mins'),
(11, 'Wonton Soup', 'Wonton wrappers, pork, ginger, soy sauce, broth.', 'Fill wontons, boil, serve in broth.', '30 mins'),
(12, 'Tea Eggs', 'Eggs, tea leaves, soy sauce, star anise.', 'Boil eggs, crack shells, simmer in flavored tea.', '45 mins'),

-- Dinner
(13, 'Sweet and Sour Pork', 'Pork, vinegar, ketchup, bell peppers, pineapple.', 'Coat pork, fry, toss in sauce with vegetables.', '30 mins'),
(14, 'Beef and Broccoli', 'Beef, broccoli, soy sauce, garlic.', 'Stir-fry beef, add broccoli and sauce.', '20 mins'),
(15, 'Hot Pot', 'Broth, meat, tofu, vegetables.', 'Simmer ingredients in hot pot at the table.', '1 hr'),
(16, 'Fried Rice', 'Rice, eggs, vegetables, soy sauce.', 'Stir-fry ingredients together in a pan.', '15 mins'),

-- Desserts
(17, 'Mooncake', 'Lotus seed paste, flour, egg yolk, sugar.', 'Make dough, fill, bake until golden.', '1 hr'),
(18, 'Sesame Balls', 'Glutinous rice flour, red bean paste, sesame.', 'Form balls, coat with sesame, deep-fry.', '40 mins'),
(19, 'Tangyuan', 'Glutinous rice flour, sugar, water.', 'Make dough balls, boil in sweet syrup.', '30 mins'),
(20, 'Egg Tarts', 'Flour, egg, sugar, milk.', 'Prepare crust, pour egg custard, bake.', '40 mins'),

-- JAPANESE CUISINE (cuisine_id = 4)
-- Breakfast
(21, 'Tamago Kake Gohan', 'Rice, raw egg, soy sauce.', 'Crack egg over rice, mix well with soy sauce.', '5 mins'),
(22, 'Miso Soup', 'Miso paste, tofu, seaweed, dashi broth.', 'Boil broth, add ingredients, simmer.', '15 mins'),
(23, 'Onigiri', 'Rice, nori seaweed, salmon.', 'Shape rice into balls, wrap with seaweed.', '15 mins'),
(24, 'Natto', 'Fermented soybeans, soy sauce, mustard.', 'Mix ingredients and serve over rice.', '5 mins'),

-- Lunch
(25, 'Sushi', 'Rice, nori, raw fish, cucumber.', 'Roll rice and fillings in nori, slice.', '30 mins'),
(26, 'Ramen', 'Noodles, broth, pork, egg.', 'Cook noodles, assemble bowl with broth and toppings.', '40 mins'),
(27, 'Tonkatsu', 'Pork cutlet, breadcrumbs, oil.', 'Bread pork, deep-fry until crispy.', '25 mins'),
(28, 'Donburi', 'Rice, chicken, soy sauce, egg.', 'Simmer chicken, egg, sauce, serve over rice.', '30 mins'),

-- Snacks
(29, 'Takoyaki', 'Octopus, batter, bonito flakes.', 'Cook batter in mold, add octopus, turn until golden.', '25 mins'),
(30, 'Edamame', 'Soybeans, salt.', 'Boil soybeans, sprinkle with salt.', '10 mins'),
(31, 'Senbei', 'Rice flour, soy sauce.', 'Bake crackers, brush with soy sauce.', '30 mins'),
(32, 'Yakitori', 'Chicken, soy sauce, skewers.', 'Skewer chicken, grill until cooked.', '20 mins'),

-- Dinner
(33, 'Katsu Curry', 'Pork cutlet, curry sauce, rice.', 'Fry cutlet, prepare curry, serve with rice.', '45 mins'),
(34, 'Shabu Shabu', 'Beef, vegetables, dipping sauce.', 'Dip meat and vegetables in boiling broth.', '1 hr'),
(35, 'Nabe', 'Broth, tofu, mushrooms, meat.', 'Simmer all ingredients in pot.', '1 hr'),
(36, 'Udon', 'Udon noodles, broth, green onions.', 'Boil noodles, serve in broth.', '20 mins'),

-- Desserts
(37, 'Mochi', 'Glutinous rice flour, red bean paste.', 'Steam dough, fill with paste.', '30 mins'),
(38, 'Dorayaki', 'Pancake batter, red bean paste.', 'Cook pancakes, sandwich with bean paste.', '20 mins'),
(39, 'Matcha Ice Cream', 'Milk, matcha powder, sugar.', 'Mix ingredients, freeze.', '3 hrs'),
(40, 'Taiyaki', 'Flour, red bean paste, sugar.', 'Pour batter into fish mold, add filling, cook.', '30 mins');
