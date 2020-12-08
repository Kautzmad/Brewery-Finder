ROLLBACK;
BEGIN;


INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, website_url, hours, user_id, lat, lng)
VALUES ('Great Lakes Brewery', '2516 Market Ave.', 'Cleveland', 44113, '(216) 771-4404',
'Iconic microbrewery with house suds, an updated American menu, free tours & a patio.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511722746/gret_lakes_brewery_logo_black_uw5ech.jpg',
'https://www.greatlakesbrewing.com',
'Monday - Thursday: 10:00 AM - 10:00 PM Friday and Saturday: 10:00 AM - 11:00 PM Closed on Sundays', 1, 41.484312, -81.704461);

INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, website_url, hours, user_id, lat, lng)
VALUES ('Platform Beer Co.', '4125 Lorain Ave.', 'Cleveland', 44113,'(216) 202-1386',
'Opened in 2014, 100+ seat tasting room and patio offers 20+ house beers and food options. 10BBL brewhouse creates constantly changing selection of styles. Head R&D brewer Danny Monnot leads the way at our flagship location.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511302719/brewery_images/pnozkgiqhblcydhtllru.jpg',
'https://platformbeer.co/',
'Monday - Thursday: 03:00 PM - 12:00 AM Friday: 03:00 AM - 02:00 AM Saturday: 10:00 PM - 02:00 AM Sunday: 10:00 PM - 10:00 PM', 1 ,41.4795909, -81.7138139);

INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, website_url, hours, user_id, lat, lng)
VALUES ('Goldhorn Brewery', '1361 E 55th St.', 'Cleveland', 44103,'(216) 465-1352',
'Cool taproom offering seasonal, housemade beer in a vast space with a long bar & tables outside.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511722787/goldhorn_brown_logo_er48xf.png',
'https://www.yelp.com/biz/goldhorn-brewery-cleveland',
'Tuesday - Friday: 11:00 AM - 09:00 PM  Saturday: 12:00 PM - 10:00 PM Sunday: 12:00 PM - 06:00 PM Closed on Mondays', 2, 41.521425, -81.651681);
INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, website_url, hours, user_id, lat, lng)
VALUES ('Masthead Brewing Co.', '1261 Superior Ave.', 'Cleveland', 44144,'(216) 206-6176',
'Located in a historic building with 300 seats, a 100’ long bar, and an additional 50 seat dog friendly patio with a view of downtown Cleveland. Masthead includes a full bar and kitchen focusing on American and Belgian style beers, Neapolitan wood-fired pizza, and a barrel aged beer program',
'http://res.cloudinary.com/teclebrew/image/upload/v1511363501/brewery_images/oorzznvts0irqao76zqb.jpg',
'http://mastheadbrewingco.com/',
'Tuesday - Friday: 11:00 AM - 10:00 PM  Saturday: 11:00 PM - 01:00 AM Sunday: 11:00 PM - 05:00 PM Closed on Mondays', 1, 41.504100, -81.685403);

INSERT INTO beers (name, abv, type, info, img_url, is_active, brewery_id) VALUES 
('Original Lager', 5.2, 'German Lager',
'A traditional full flavored German Lager with a crisp finish. The bier Hofbrauhaus has been famous for since 1589.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511649200/hofbrau_lager_puc_h8or43.jpg', true, 1);
INSERT INTO beers (name, abv, type, info, img_url, is_active, brewery_id) VALUES 
('Hefeweizen', 5.4, 'Hefeweizen',
'A specialty born in Munich – loved by the world. A fairly sweet old-style Wheat bier brewed to create a wonderful combination banana and clove flavor and aroma.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511649351/hofbrau_heffwiz_pic_uz7nlz.jpg', true, 1);
INSERT INTO beers (name, abv, type, info, img_url, is_active, brewery_id) VALUES 
('Dunkel', 5.5, 'Dunkel',
'For centuries Munich’s favorite bier. Dunkel translates to “Dark” lager. It is medium bodied, easy to drink, with simple roasted malt flavor and slight caramel undertones.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511649546/Hofbrauhaus_dunkel_pic_w5bxhw.jpg', true, 1);
INSERT INTO beers (name, abv, type, info, img_url, is_active, brewery_id) VALUES 
('CITRAMAX IPA', 6.7, 'IPA',
'A West Coast style IPA dry-hopped with organic Citra hops to impart intense tropical and citrus fruit aromas. This brew has an aggressive, boldly-bright American hop character that will leave you craving another.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511650026/market_citramax_beer_pic_mh7psh.png', true, 1);
INSERT INTO beers (name, abv, type, info, img_url, is_active, brewery_id) VALUES 
('PROSPERITY WHEAT', 6.0, 'Wheat',
'Formerly known as ***** Street Wheat! If you’ve ever spent time in a German Beer Garden, you know how much they love their wheat beer.  Our Bavarian style Hefeweizen is a satisfying blend of sweet wheat and pale malts, clove and banana aromatics, and the zesty tang of wheat beer yeast.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511650039/market_prosperity_ber_pic_efdril.png', true, 1);
INSERT INTO beers (name, abv, type, info, img_url, is_active, brewery_id) VALUES 
('PROGRESS PILSNER', 5.5, 'Pilsner',
'Great American Beer Festival Award Winning Brew! Inspired by the Pilsners of the Rhine region, this lager is a tribute to the spicy, crisp and clean character of German noble hops and has just the right malt body to balance. Named aptly for the Cleveland slogan “Progress&Prosperity”.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511650338/market_progress_beer_pic_oe4yta.png', true, 1);
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) VALUES 
('Eliot Ness', 6.1, 27, 'Amber Lager',
'Almost untouchably smooth--armed with lightly toasted malts and noble hops.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511645068/eliotness_beer_yx7iv4.png', true, 1);
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) VALUES 
('Burning river', 6.0, 35, 'Pale Ale',
'Crisp and bright, with refreshing flickers of citrus and pine that ignite the senses (not our local waterways).',
'http://res.cloudinary.com/teclebrew/image/upload/v1511645196/burningriver_beer_v1vzlz.png', true, 1);

INSERT INTO reviews (name, description, rating, create_date) VALUES
('Greatest Beer Ever',
'This is the best Xmas beer in the world!',
5,now());
INSERT INTO reviews (name, description, rating, create_date) VALUES
('Ho Ho Drunk',
'I had 6 of these already and Im wasted, Merry Christmas to all!!!!!',
4,now());
INSERT INTO reviews (name, description, rating, create_date) VALUES
('Twas the night before Xmas',
'Or maybe it was the night after, I blacked out both so Im not sure',
5,now());
INSERT INTO reviews (name, description, rating, create_date) VALUES
('Still better than Al Capone',
'Im not sure which is cooler the man or the beer! ',
5,now());


INSERT INTO reviews (name, description, rating, create_date)
VALUES ('Christmas magic in a a bottle',
'Just okay',
5,now());




COMMIT;
