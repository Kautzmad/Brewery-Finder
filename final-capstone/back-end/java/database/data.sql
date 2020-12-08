ROLLBACK;
BEGIN;


INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, website_url, hours, user_id, lat, lng)
VALUES ('Great Lakes Brewery', '2516 Market Ave.', 'Cleveland', 44113, '(216) 771-4404',
'Iconic microbrewery with house suds, an updated American menu, free tours & a patio.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511722746/gret_lakes_brewery_logo_black_uw5ech.jpg',
'https://www.greatlakesbrewing.com',
'Monday - Thursday: 10:00 AM - 10:00 PM Friday and Saturday: 10:00 AM - 11:00 PM Closed on Sundays', 1, 41.484312, -81.704461);

INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, website_url, hours, lat, lng)
VALUES ('Platform Beer Co.', '4125 Lorain Ave.', 'Cleveland', 44113,'(216) 202-1386',
'Opened in 2014, 100+ seat tasting room and patio offers 20+ house beers and food options. 10BBL brewhouse creates constantly changing selection of styles. Head R&D brewer Danny Monnot leads the way at our flagship location.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511302719/brewery_images/pnozkgiqhblcydhtllru.jpg',
'https://platformbeer.co/',
'Monday - Thursday: 03:00 PM - 12:00 AM Friday: 03:00 AM - 02:00 AM Saturday: 10:00 PM - 02:00 AM Sunday: 10:00 PM - 10:00 PM', 1 ,41.4795909, -81.7138139);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Blue Moon', 4.8, 11,
'Wheat', 'Just okay', 'example.url', true, 1);

INSERT INTO reviews (name, description, rating, create_date, beer_id) 
VALUES ('Christmas magic in a a bottle',
'Just okay',
5,now(),1);


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


COMMIT;
