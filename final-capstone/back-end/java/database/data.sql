ROLLBACK;
BEGIN;


INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, hours, user_id, lat, lng)
VALUES ('Great Lakes Brewery', '2516 Market Ave.', 'Cleveland', 44113, '(216) 771-4404',
'Iconic microbrewery with house suds, an updated American menu, free tours & a patio.',
'http://res.cloudinary.com/teclebrew/image/upload/v1511722746/gret_lakes_brewery_logo_black_uw5ech.jpg',
'Monday - Thursday: 10:00 AM - 10:00 PM Friday and Saturday: 10:00 AM - 11:00 PM Closed on Sundays', 1, 41.484312, -81.704461);

INSERT INTO breweries (name, address, city, zipcode, phone_number, description, brewery_logo_url, hours, user_id, lat, lng)
VALUES ('Test Brewery', '1361 E 55th St.', 'Cleveland', 44103,'(216) 465-1352',
'Nice place', 
'https://www.indiaspora.org/wp-content/uploads/2018/10/image-not-available.jpg','Monday - Thursday: 10:00 AM - 10:00 PM Friday and Saturday: 10:00 AM - 11:00 PM Closed on Sundays', 1, 0, 0);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Blue Moon', 4.8, 11,
'Wheat', 'Just okay', 'example.url', true, 1);

INSERT INTO reviews (name, description, rating, create_date, beer_id) 
VALUES ('Christmas magic in a a bottle',
'Just okay',
5,now(),1);



COMMIT;