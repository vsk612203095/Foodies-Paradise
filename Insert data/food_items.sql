
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




INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_image, food_type) VALUES
-- Breakfast (category_id = 1)
('Idli', 'Soft steamed rice cakes, a staple South Indian breakfast dish.', 1, 1, 'static/img/Indian-idli.jpg', 'Veg'),
('Dosa', 'Crispy and thin fermented rice and lentil crepe.', 1, 1, 'static/img/Indian-dosa.jpg', 'Veg'),
('Upma', 'Savory porridge made from roasted semolina and spices.', 1, 1, 'static/img/Indian-upma.jpg', 'Veg'),
('Chole Bhature', 'Spiced chickpea curry served with deep-fried bread.', 1, 1, 'static/img/Indian-chole_bhature.jpg', 'Veg'),
('Aloo Paratha', 'Stuffed whole wheat flatbread with spiced mashed potatoes.', 1, 1, 'static/img/Indian-aloo_paratha.jpg', 'Veg'),
('Egg Bhurji', 'Indian-style scrambled eggs with onions and spices.', 1, 1, 'static/img/Indian-egg_bhurji.jpg', 'Non-Veg'),

-- Lunch (category_id = 2)
('Paneer Tikka Masala', 'Marinated paneer cubes cooked in a spicy tomato-based gravy.', 1, 2, 'static/img/Indian-paneer_tikka_masala.jpg', 'Veg'),
('Chicken Tikka Masala', 'Grilled chicken chunks in a creamy tomato-based sauce.', 1, 2, 'static/img/Indian-chicken_tikka_masala.jpg', 'Non-Veg'),
('Dal Tadka', 'Lentils cooked with a flavorful tempering of garlic and spices.', 1, 2, 'static/img/Indian-dal_tadka.jpg', 'Veg'),
('Varan Bhat', 'Simple Maharashtrian-style dal served with rice.', 1, 2, 'static/img/Indian-varan_bhat.jpg', 'Veg'),
('Bhindi Sabji', 'Okra stir-fried with spices, a popular Indian side dish.', 1, 2, 'static/img/Indian-bhindi_sabji.jpg', 'Veg'),
('Butter Chicken', 'Creamy, mildly spiced chicken curry in a rich tomato-based sauce.', 1, 2, 'static/img/Indian-butter_chicken.jpg', 'Non-Veg'),
('Biryani', 'Aromatic and flavorful rice dish layered with spiced meat or vegetables.', 1, 2, 'static/img/Indian-biryani.jpg', 'Non-Veg'),
('Veg Pulao', 'Fragrant rice dish cooked with mixed vegetables and spices.', 1, 2, 'static/img/Indian-veg_pulao.jpg', 'Veg'),

-- Snacks (category_id = 3)
('Vada Pav', 'Mumbai-style spicy potato fritter sandwiched in a bun.', 1, 3, 'static/img/Indian-vada_pav.jpg', 'Veg'),
('Samosa', 'Crispy fried pastry filled with spiced potatoes and peas.', 1, 3, 'static/img/Indian-samosa.jpg', 'Veg'),
('Kutchi Dabeli', 'Spicy mashed potato filling inside a bun, garnished with pomegranate.', 1, 3, 'static/img/Indian-kutchi_dabeli.jpg', 'Veg'),
('Dhokla', 'Soft and spongy fermented rice and gram flour snack.', 1, 3, 'static/img/Indian-dhokla.jpg', 'Veg'),
('Pav Bhaji', 'Spicy mashed vegetable curry served with buttered bread.', 1, 3, 'static/img/Indian-pav_bhaji.jpg', 'Veg'),
('Misal Pav', 'Spicy sprouted lentil curry served with bread.', 1, 3, 'static/img/Indian-misal_pav.jpg', 'Veg'),
('Kachori', 'Deep-fried pastry filled with spiced lentils or peas.', 1, 3, 'static/img/Indian-kachori.jpg', 'Veg'),
('Papdi Chaat', 'Crispy fried wafers topped with yogurt, chutney, and spices.', 1, 3, 'static/img/Indian-papdi_chaat.jpg', 'Veg'),
('Pani Puri', 'Hollow crispy balls filled with spicy tamarind-flavored water.', 1, 3, 'static/img/Indian-pani_puri.jpg', 'Veg'),

-- Dinner (category_id = 4) (Same as Lunch)
('Paneer Tikka Masala', 'Marinated paneer cubes cooked in a spicy tomato-based gravy.', 1, 4, 'static/img/Indian-paneer_tikka_masala.jpg', 'Veg'),
('Chicken Tikka Masala', 'Grilled chicken chunks in a creamy tomato-based sauce.', 1, 4, 'static/img/Indian-chicken_tikka_masala.jpg', 'Non-Veg'),
('Dal Tadka', 'Lentils cooked with a flavorful tempering of garlic and spices.', 1, 4, 'static/img/Indian-dal_tadka.jpg', 'Veg'),
('Varan Bhat', 'Simple Maharashtrian-style dal served with rice.', 1, 4, 'static/img/Indian-varan_bhat.jpg', 'Veg'),
('Bhindi Sabji', 'Okra stir-fried with spices, a popular Indian side dish.', 1, 4, 'static/img/Indian-bhindi_sabji.jpg', 'Veg'),
('Butter Chicken', 'Creamy, mildly spiced chicken curry in a rich tomato-based sauce.', 1, 4, 'static/img/Indian-butter_chicken.jpg', 'Non-Veg'),
('Biryani', 'Aromatic and flavorful rice dish layered with spiced meat or vegetables.', 1, 4, 'static/img/Indian-biryani.jpg', 'Non-Veg'),
('Veg Pulao', 'Fragrant rice dish cooked with mixed vegetables and spices.', 1, 4, 'static/img/Indian-veg_pulao.jpg', 'Veg'),

-- Desserts (category_id = 5)
('Gulab Jamun', 'Deep-fried milk dumplings soaked in sugar syrup.', 1, 5, 'static/img/Indian-gulab_jamun.jpg', 'Veg'),
('Laddoo', 'Sweet round balls made from flour, ghee, and sugar.', 1, 5, 'static/img/Indian-laddoo.jpg', 'Veg'),
('Jalebi', 'Deep-fried spiral-shaped sweet soaked in sugar syrup.', 1, 5, 'static/img/Indian-jalebi.jpg', 'Veg'),
('Rasmalai', 'Soft paneer dumplings soaked in flavored milk.', 1, 5, 'static/img/Indian-rasmalai.jpg', 'Veg');

INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_image, food_type) VALUES

-- 🔴 CHINESE CUISINE (cuisine_id = 2)
-- Breakfast
('Dim Sum', 'Steamed dumplings filled with meat or vegetables.', 2, 1, 'static/img/Chinese-DimSum.jpg', 'Non-Veg'),
('Congee', 'Rice porridge with chicken, pork, or fish.', 2, 1, 'static/img/Chinese-Congee.jpg', 'Non-Veg'),
('Scallion Pancakes', 'Crispy Chinese flatbread with scallions.', 2, 1, 'static/img/Chinese-ScallionPancakes.jpg', 'Veg'),
('Youtiao', 'Deep-fried dough sticks, commonly eaten with soy milk.', 2, 1, 'static/img/Chinese-Youtiao.jpg', 'Veg'),

-- Lunch
('Kung Pao Chicken', 'Spicy stir-fried chicken with peanuts.', 2, 2, 'static/img/Chinese-KungPaoChicken.jpg', 'Non-Veg'),
('Mapo Tofu', 'Spicy tofu dish with minced pork.', 2, 2, 'static/img/Chinese-MapoTofu.jpg', 'Non-Veg'),
('Chow Mein', 'Stir-fried noodles with vegetables and meat.', 2, 2, 'static/img/Chinese-ChowMein.jpg', 'Non-Veg'),
('Peking Duck', 'Roast duck served with pancakes and hoisin sauce.', 2, 2, 'static/img/Chinese-PekingDuck.jpg', 'Non-Veg'),

-- Snacks
('Spring Rolls', 'Crispy rolls filled with vegetables or meat.', 2, 3, 'static/img/Chinese-SpringRolls.jpg', 'Veg'),
('Baozi', 'Steamed buns filled with meat or vegetables.', 2, 3, 'static/img/Chinese-Baozi.jpg', 'Non-Veg'),
('Wonton Soup', 'Soup with dumplings filled with pork and shrimp.', 2, 3, 'static/img/Chinese-WontonSoup.jpg', 'Non-Veg'),
('Tea Eggs', 'Hard-boiled eggs steeped in tea and soy sauce.', 2, 3, 'static/img/Chinese-TeaEggs.jpg', 'Veg'),

-- Dinner
('Sweet and Sour Pork', 'Pork cooked in a sweet and tangy sauce.', 2, 4, 'static/img/Chinese-SweetSourPork.jpg', 'Non-Veg'),
('Beef and Broccoli', 'Beef stir-fried with broccoli and soy sauce.', 2, 4, 'static/img/Chinese-BeefBroccoli.jpg', 'Non-Veg'),
('Hot Pot', 'Simmering broth for cooking meats and vegetables.', 2, 4, 'static/img/Chinese-HotPot.jpg', 'Non-Veg'),
('Fried Rice', 'Stir-fried rice with eggs, vegetables, and meat.', 2, 4, 'static/img/Chinese-FriedRice.jpg', 'Veg'),

-- Desserts
('Mooncake', 'Traditional Chinese pastry with sweet filling.', 2, 5, 'static/img/Chinese-Mooncake.jpg', 'Veg'),
('Sesame Balls', 'Glutinous rice balls filled with sweet bean paste.', 2, 5, 'static/img/Chinese-SesameBalls.jpg', 'Veg'),
('Tangyuan', 'Glutinous rice dumplings in sweet syrup.', 2, 5, 'static/img/Chinese-Tangyuan.jpg', 'Veg'),
('Egg Tarts', 'Flaky pastry filled with egg custard.', 2, 5, 'static/img/Chinese-EggTarts.jpg', 'Veg'),

-- 🟠 JAPANESE CUISINE (cuisine_id = 4)
-- Breakfast
('Tamago Kake Gohan', 'Steamed rice topped with raw egg and soy sauce.', 4, 1, 'static/img/Japanese-TamagoKakeGohan.jpg', 'Veg'),
('Miso Soup', 'Traditional soup with tofu, seaweed, and miso paste.', 4, 1, 'static/img/Japanese-MisoSoup.jpg', 'Veg'),
('Onigiri', 'Rice balls wrapped in nori seaweed.', 4, 1, 'static/img/Japanese-Onigiri.jpg', 'Veg'),
('Natto', 'Fermented soybeans with a sticky texture.', 4, 1, 'static/img/Japanese-Natto.jpg', 'Veg'),

-- Lunch
('Sushi', 'Vinegared rice with raw fish or vegetables.', 4, 2, 'static/img/Japanese-Sushi.jpg', 'Non-Veg'),
('Ramen', 'Noodle soup with broth, meat, and vegetables.', 4, 2, 'static/img/Japanese-Ramen.jpg', 'Non-Veg'),
('Tonkatsu', 'Breaded and deep-fried pork cutlet.', 4, 2, 'static/img/Japanese-Tonkatsu.jpg', 'Non-Veg'),
('Donburi', 'Rice bowl topped with meat, fish, or vegetables.', 4, 2, 'static/img/Japanese-Donburi.jpg', 'Non-Veg'),

-- Snacks
('Takoyaki', 'Octopus-filled dough balls.', 4, 3, 'static/img/Japanese-Takoyaki.jpg', 'Non-Veg'),
('Edamame', 'Steamed and salted young soybeans.', 4, 3, 'static/img/Japanese-Edamame.jpg', 'Veg'),
('Senbei', 'Japanese rice crackers.', 4, 3, 'static/img/Japanese-Senbei.jpg', 'Veg'),
('Yakitori', 'Grilled skewered chicken.', 4, 3, 'static/img/Japanese-Yakitori.jpg', 'Non-Veg'),

-- Dinner
('Katsu Curry', 'Breaded pork cutlet with Japanese curry sauce.', 4, 4, 'static/img/Japanese-KatsuCurry.jpg', 'Non-Veg'),
('Shabu Shabu', 'Hot pot dish with thinly sliced meat.', 4, 4, 'static/img/Japanese-ShabuShabu.jpg', 'Non-Veg'),
('Nabe', 'Japanese-style hot pot.', 4, 4, 'static/img/Japanese-Nabe.jpg', 'Non-Veg'),
('Udon', 'Thick wheat noodles in broth.', 4, 4, 'static/img/Japanese-Udon.jpg', 'Veg'),

-- Desserts
('Mochi', 'Sweet rice cake with different fillings.', 4, 5, 'static/img/Japanese-Mochi.jpg', 'Veg'),
('Dorayaki', 'Pancakes filled with sweet red bean paste.', 4, 5, 'static/img/Japanese-Dorayaki.jpg', 'Veg'),
('Matcha Ice Cream', 'Green tea-flavored ice cream.', 4, 5, 'static/img/Japanese-MatchaIceCream.jpg', 'Veg'),
('Taiyaki', 'Fish-shaped cake filled with sweet paste.', 4, 5, 'static/img/Japanese-Taiyaki.jpg', 'Veg');


INSERT INTO food_items (food_name, food_descript, cuisine_id, category_id, food_image, food_type) VALUES

-- 🟡 KOREAN CUISINE (cuisine_id = 3)
-- Breakfast
('Kimchi Fried Rice', 'Rice stir-fried with kimchi and egg.', 3, 1, 'static/img/Korean-KimchiFriedRice.jpg', 'Veg'),
('Korean Pancakes', 'Savory pancakes with scallions and vegetables.', 3, 1, 'static/img/Korean-Pajeon.jpg', 'Veg'),
('Juk', 'Korean rice porridge with a smooth texture.', 3, 1, 'static/img/Korean-Juk.jpg', 'Veg'),
('Gimbap', 'Korean seaweed rice rolls, similar to sushi.', 3, 1, 'static/img/Korean-Gimbap.jpg', 'Non-Veg'),

-- Lunch
('Bibimbap', 'Mixed rice bowl with assorted vegetables and meat.', 3, 2, 'static/img/Korean-Bibimbap.jpg', 'Non-Veg'),
('Bulgogi', 'Marinated beef grilled to perfection.', 3, 2, 'static/img/Korean-Bulgogi.jpg', 'Non-Veg'),
('Japchae', 'Glass noodles stir-fried with vegetables and meat.', 3, 2, 'static/img/Korean-Japchae.jpg', 'Veg'),
('Kimchi Jjigae', 'Spicy kimchi stew with pork and tofu.', 3, 2, 'static/img/Korean-KimchiJjigae.jpg', 'Non-Veg'),

-- Snacks
('Tteokbokki', 'Spicy stir-fried rice cakes in a sweet and spicy sauce.', 3, 3, 'static/img/Korean-Tteokbokki.jpg', 'Veg'),
('Korean Corn Dog', 'Hot dog coated in batter and fried.', 3, 3, 'static/img/Korean-CornDog.jpg', 'Non-Veg'),
('Hotteok', 'Sweet Korean pancakes filled with brown sugar and nuts.', 3, 3, 'static/img/Korean-Hotteok.jpg', 'Veg'),
('Gyeranppang', 'Korean egg bread, a sweet and savory snack.', 3, 3, 'static/img/Korean-Gyeranppang.jpg', 'Veg'),

-- Dinner
('Samgyeopsal', 'Grilled pork belly served with dipping sauces.', 3, 4, 'static/img/Korean-Samgyeopsal.jpg', 'Non-Veg'),
('Sundubu Jjigae', 'Soft tofu stew with vegetables and egg.', 3, 4, 'static/img/Korean-SundubuJjigae.jpg', 'Veg'),
('Jajangmyeon', 'Black bean noodles with stir-fried pork.', 3, 4, 'static/img/Korean-Jajangmyeon.jpg', 'Non-Veg'),
('Galbi', 'Korean-style marinated beef short ribs.', 3, 4, 'static/img/Korean-Galbi.jpg', 'Non-Veg'),

-- Desserts
('Bungeoppang', 'Fish-shaped pastry filled with sweet red bean paste.', 3, 5, 'static/img/Korean-Bungeoppang.jpg', 'Veg'),
('Patbingsu', 'Shaved ice dessert with sweet toppings.', 3, 5, 'static/img/Korean-Patbingsu.jpg', 'Veg'),
('Yakgwa', 'Korean honey cookies with a chewy texture.', 3, 5, 'static/img/Korean-Yakgwa.jpg', 'Veg'),
('Dasik', 'Korean tea cookies made from sesame and honey.', 3, 5, 'static/img/Korean-Dasik.jpg', 'Veg'),

-- 🔵 ITALIAN CUISINE (cuisine_id = 5)
-- Breakfast
('Frittata', 'Italian-style omelet with cheese and vegetables.', 5, 1, 'static/img/Italian-Frittata.jpg', 'Veg'),
('Cornetti', 'Italian croissant served with jam.', 5, 1, 'static/img/Italian-Cornetti.jpg', 'Veg'),
('Bruschetta', 'Toasted bread with tomatoes and basil.', 5, 1, 'static/img/Italian-Bruschetta.jpg', 'Veg'),
('Panettone', 'Sweet bread with dried fruits.', 5, 1, 'static/img/Italian-Panettone.jpg', 'Veg'),

-- Lunch
('Margherita Pizza', 'Classic pizza with tomato sauce, mozzarella, and basil.', 5, 2, 'static/img/Italian-MargheritaPizza.jpg', 'Veg'),
('Lasagna', 'Layers of pasta, meat, and cheese.', 5, 2, 'static/img/Italian-Lasagna.jpg', 'Non-Veg'),
('Risotto', 'Creamy rice dish cooked with broth.', 5, 2, 'static/img/Italian-Risotto.jpg', 'Veg'),
('Carbonara', 'Pasta with eggs, pancetta, and cheese.', 5, 2, 'static/img/Italian-Carbonara.jpg', 'Non-Veg'),

-- Snacks
('Arancini', 'Crispy fried rice balls filled with cheese.', 5, 3, 'static/img/Italian-Arancini.jpg', 'Veg'),
('Garlic Bread', 'Toasted bread with garlic and butter.', 5, 3, 'static/img/Italian-GarlicBread.jpg', 'Veg'),
('Olive Tapenade', 'Spread made from chopped olives and capers.', 5, 3, 'static/img/Italian-OliveTapenade.jpg', 'Veg'),
('Mozzarella Sticks', 'Deep-fried cheese sticks.', 5, 3, 'static/img/Italian-MozzarellaSticks.jpg', 'Veg'),

-- Dinner
('Gnocchi', 'Soft dough dumplings served with sauce.', 5, 4, 'static/img/Italian-Gnocchi.jpg', 'Veg'),
('Bistecca Fiorentina', 'Traditional Tuscan-style steak.', 5, 4, 'static/img/Italian-BisteccaFiorentina.jpg', 'Non-Veg'),
('Osso Buco', 'Braised veal shanks in tomato sauce.', 5, 4, 'static/img/Italian-OssoBuco.jpg', 'Non-Veg'),
('Tortellini', 'Stuffed pasta served with broth or sauce.', 5, 4, 'static/img/Italian-Tortellini.jpg', 'Veg'),

-- Desserts
('Tiramisu', 'Classic Italian coffee-flavored dessert.', 5, 5, 'static/img/Italian-Tiramisu.jpg', 'Veg'),
('Cannoli', 'Crispy pastry shells filled with ricotta.', 5, 5, 'static/img/Italian-Cannoli.jpg', 'Veg'),
('Panna Cotta', 'Creamy vanilla dessert topped with fruit sauce.', 5, 5, 'static/img/Italian-PannaCotta.jpg', 'Veg'),
('Gelato', 'Traditional Italian-style ice cream.', 5, 5, 'static/img/Italian-Gelato.jpg', 'Veg');


