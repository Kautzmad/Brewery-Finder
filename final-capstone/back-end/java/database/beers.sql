-- beer insert DO NOT RUN UNTIL ALL OTHER SQL FILES HAVE RUN
-- Also: correct brewery_id's still need to be added

--- bookhouse brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Get Yer Oats', 6.5, 30,
'Oatmeal Stout', 'Get yer oats! Our rich, soft oatmeal stout comes across as almost too much, 
too sweet and satisfying, so we dialed it back with a hit of Ceylon cinnamon and piles of toasted
 nuts: black walnuts, pecans, and hazelnuts. Paired together, the whole thing is balanced and soft
 , with gentle wisps of nutty oatmeal, browned toast, and squishy caramel. Settle in for a spell 
 and plunge these roasty black depths.', 'https://bookhouse-brewing-llc.square.site/uploads/1/2/6/2/126287558/s706640680989578270_p357_i1_w1218.jpeg', true, 1);
 
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Black is Beautiful', 9, 60,
'Oatmeal Stout', 'Our version of Black is Beautiful hews closely to the source material, figuring that 
the time at hand is that of listening. BIPOC-owned breweries are less than 1% of the overall US brewery 
scene, so who are we to dominate the stage when so many others have so much to say? Brewed with 7 types
 of malt for a massive, sticky, high-alcohol imperial stout, deep black in color. Flavor/aroma of burnt
 sugar, dark roast coffee, figs, and a touch of warming alcohol. Proceeds go to Cleveland NAACP to help
 in their efforts towards building a better world.', 
 'https://bookhouse-brewing-llc.square.site/uploads/1/2/6/2/126287558/s706640680989578270_p294_i1_w1650.jpeg',
  true, 1);
  
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Whoops! Down Under', 9.0, 30,
'NE IPA', 'Cruise down the flavor highway with these bright and bold hops from the Southern Hemisphere.
 Bright orange juice with passionfruit and guava hints in the aroma are followed by rich malt and a soft,
 juicy hop finish. Triple NEIPA-style beer made with Australian Galaxy, New Zealand Nelson Sauvin, and El
 Dorado hops', 'https://bookhouse-brewing-llc.square.site/uploads/1/2/6/2/126287558/s706640680989578270_p367_i1_w1080.jpeg'
 , false, 1);
   
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Fortitude', 6.8, 20,
'Imperial Witbier', 'Our winter seasonal beer, this double/Imperial witbier is designed with the cold months in mind.
 We started with a strong interpretation of the classic Belgian country beer, then smoothed off the edges with a 
 silky-soft body, with just enough residual sweetness to keep the magic hidden. Intense orange peel aromatics, 
 pillowy puffs of wheat and oats, and a refreshing subtle herbal spice in the finish. Build up your Fortitude and
  watch the days fly by.', 
  'https://bookhouse-brewing-llc.square.site/uploads/1/2/6/2/126287558/s706640680989578270_p367_i1_w1080.jpeg'
 , false, 1);
 
 -- Boss Dog Brewing
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Dog Pound Brown', 5.8, 32,
'Brown Ale', 'Nutty biscuit and mild chocolate', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Jobu', 6.0, 30,
'Spiced Hazy Juicy IPA', 'Tropical IPA infused with spicy Cerrano peppers', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
  
  INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Holy Toledo Pilsner', 5.4, 33,
'German Pilsner', 'German style, noble hopped Pilsener. Clean & refreshing', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Put-N-Berry', 5.5, 20,
'Fruit Beer', 'Crisp Honey Ale. Touch of cracker with fresh Raspberry tartness', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Millennial Hipster', 6.0, 35,
'Hazy Juicy IPA', 'Big juicy sweetness and tropical citrus. This Hazy IPA is tighter
than your skinny jeans and hotter than a wool hat in the summer', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 -- Brick and Barrel Brewing
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Bitter Chief IPA', 6.9, null,
'IPA', 'For our bitter Tribe fans, we almost got that series win. In the meantime, 
drink some local craft beer and enjoy. Light cooper color. Nice bitterness with 
refreshing citrus and grassy flavors and aromas. Malty finish balancing out the bitterness', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Big Chief Imperial IPA', 8.7, null,
'Imperial IPA', 'Big hoppy Imperial IPA. Malt backbone with a robust hop aroma and flavor 
from kettle and fermenter dry-hopping.', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
  
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Rally Possum', 7.4, null,
'Imperial Brown Ale', 'Hoppy imperial brown ale with nice citrus, chocolate hazelnut roast
 aromas and flavors. Just in time for a fantastic Browns season.', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
  INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Pinot Saison', 6.3, null,
'Farmhouse Saison', 'Classic farmhouse saison ale, phenolic pepper and tropical fruit
 form the Saison yeast strain. Pinot Noir wine must co fermented to give aromas and
 flavors of raspberry, strawberry and red grapes giving a red wine aroma.', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 -- Collision Bend Brewery
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('C-Town', 6.7, 68,
'American IPA', 'No description', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Hope Flows', 5.2, 19,
'Kolsch', 'No description', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
 INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Home Before 10', 7.3, 23,
'Farmhouse Saison', 'No description', 
  'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
 , true, 1);
 
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Bollard Pull', 5.8, 30,
'American Porter', 'No description', 
'https://untappd.akamaized.net/site/beer_logos/beer-2222654_132f6_sm.jpeg'
, true, 1);
 
 -- Forest City Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Black Betsy Black IPA', 5.6, 68,
'Black IPA', 'This beer is named after Shoeless Joe Jackson’s primary bat. Betsy 
is brewed with classic hops (Columbus, Chinook, Cascade) paired with a stout-like 
malt bill making this beer a balanced and flavorful home run!', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Berg-A-Horn Bock', 6.5, 22,
'Bock', 'Our traditional Bock is a strong, dark, lightly hopped brew of German origin. Named after 
our giant Sycamore tree in the original beer garden. Berg-A-Horn means Sycamore in German', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Duck Island Amber Ale', 5.5, 40,
'Amber Ale', 'Crafted from American ingredients, this deep copper ale is anchored by a strong malt backbone 
containing subtly delicious hints of caramel and fruit. This Forest City staple has a medium intensity
 hop flavor with citrus hop notes. A frothy headed classic that is sure to find its’ way into your 
 stomach and into your cooler!', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('I Rish I Had Another Red Ale', 4.2, 22,
'Irish Red Ale', 'This brew is a collaboration with our homebrewing friends Jay and Eli of SNOBS Homebrew
 Club. Their multi-award winning recipe is our first pro-am offering and one fine red ale.', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

-- Great Lakes Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Burning River Pale Ale', 6.0, 45,
'Pale Ale', 'Greetings from Cleveland! Where an infamous river fire rekindled appreciation for our 
region’s natural resources (like the malt and hops illuminating this Pale Ale).', 
'https://www.greatlakesbrewing.com/sites/default/files/burning-river-cans-fixed-580x960.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Dortmunder Gold Lager', 5.8, 30,
'Lager', 'A classic award-winning balance of sweet malt and dry hop flavors, proudly waving 
the flag for Cleveland and refreshing beer drinkers everywhere since 1988.', 
'https://www.greatlakesbrewing.com/sites/default/files/dort-2020-fixed.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Siren Shores', 6.9, 15,
'Passion Fruit Saison', 'Ahoy, weary sailor! Heed the call of the North Coast’s
 “inland seas” and plunge into an effervescent maelstrom of sweet passion fruit, 
 zesty spices, and tempting tropical fruit aromas.', 
'https://www.greatlakesbrewing.com/sites/default/files/siren-shores.png'
, false, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Edmund Fitzgerald', 6.0, 37,
'Porter', 'Robust and complex, our Porter is a bittersweet tribute to the
 legendary freighter’s fallen crew—taken too soon when the gales of November came early.', 
'https://www.greatlakesbrewing.com/sites/default/files/edfitz-fixed_1.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Commodore Perry', 7.7, 70,
'IPA', 'What’s this? A British-style IPA named after the man who defeated 
His Majesty’s Royal Navy in the War of 1812? Consider this a bold, hoppy 
(and mildly ironic) plunder of war.', 
'https://www.greatlakesbrewing.com/sites/default/files/commodore-fixed-2020.jpg'
, true, 1);

-- Hansa Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Mr. Meeseeks', 4.6, 9,
'Blueberry Gose', 'This bier is meant to serve the one purpose of quenching your thirst. Fulfilling
 fruity taste with a lemony tartness. Hints of coriander and a touch of salt that follows through 
 with a fantastic blueberry taste!', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Bye Felicia!', 5.2, 21,
'Nut Brown Ale', 'The perfect bier to say “Bye!” to last year and “Hello!” to a fresh start! Complex
 malt profile with chocolate malt, honey malt, and crystal rye. Very sessionable and a touch on the sweet side.', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Black Flag', 4.7, 23,
'Schwarzbier', 'Dark brown German lager with an undertone of caramel, toffee, and light roast coffee.
 Clean and smooth in taste with some floral German hop taste', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('S.I.P.A.', 7.0, 88,
'German IPA', 'A German interpretation of an American IPA with a caramel malt backbone. We use five
 new German hop varieties that give it a melon and subtle strawberry character. Assertive bitterness
  and refreshingly floral.', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

-- Market Garden Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Nano OG', 4.3, null,
'Lager', 'This pale lager is a throwback to how beer was brewed in America more than 100 years ago. 
Another Great American Beer Festival award winner, it is crisp, brilliant, and refreshing with a 
delicate malt body and a snappy hop finish; Nano keeps you dominating all day.', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Progress Pilsner', 5.5, null,
'Pilsner', 'Inspired by the pilsners of the Rhine region of Germany, this Great American Beer Festival
 award-winning lager is a tribute to the crisp and clean character of the noble hop and has just the
  right malt body to balance to perfection. Born on the Rhine, brewed on the Cuyahoga. This, friends,
   is sunlight in a glass!', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Hyper Haze', 6.5, null,
'Hazy IPA', 'A firework of tropical hop aroma from late additions of Mosaic and Azacca hops. Its 
low bitterness and soft malt profile comes together for this citrus-centric, juicy IPA', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Frosty Lime Wit', 5.5, null,
'Hazy IPA', 'Frosty leads off with an exhilarating aroma of lime and tangerine. Spicy Belgian yeast 
character plays with the limes tartness leading to a dry, quenching finish that pushes further into 
new flavor territory thanks to the judicious use of diverse ingredients sure to keep you feeling Frosty.', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

-- Masthead Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Falling Fruit', 5.8, null,
'Fruit Beer', 'We set out to create a beer that showcases two of our favorite fruits: tart apples
 and sweet peaches. We fermented it on the fruit with one of our favorite yeasts to give it a juicy 
 character, pleasant body, and just enough sweetness to evoke memories of biting into a fresh peach 
 or apple.', 
'https://beer.untappd.com/labels/2477127'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Robot Santa Christmas Ale', 5.8, null,
'Winter Ale', 'After the robot uprising you will be leaving Robot Santa a Christmas 
Ale brewed with cinnamon, ginger, nutmeg, coriander, honey and orange peel.', 
'https://beer.untappd.com/labels/3543126'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Saturday Transfer', 7.5, null,
'New England IPA', 'This NEIPA was brewed and double dry hopped with a bunch of 
Mosaic. Expect a soft mouthfeel and bitterness paired with huge tropical hop flavors 
and aroma.', 
'https://beer.untappd.com/labels/2886738'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Big Hairy American Winning Machines', 9.2, null,
'New England Triple IPA', 'We were off looking in the cooler and there they were. 
Citra, El Dorado, and Australian Galaxy; they just happen to be some of the best 
hops there are. Our staff grabbed them and they just smelled like excellence so we 
took them and brewed this beer.', 
'https://beer.untappd.com/labels/4029532'
, true, 1);

-- Nano Brew Cleveland
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Lager Life', 4.5, null,
'Lager', 'Bright, crisp, light, and just downright delicious! 
Brewed with a touch of rice for a dry but thirst-quenching beverage. Let LIFE give 
you a beer. Trust us, you will be better off with one in your hand. Get a LIFE!', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Hola Cerveza Mexican', 5.0, null,
'Mexican Lager', 'Crisp, clean and refreshing with sweet aromatics of lemon, lime and 
caramelized maize corn. This 5% quencher starts the fiesta', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

-- Noble Beast Brewing
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Union Pils', 4.9, 36,
'Bohemian Lager', 'Traditionally brewed with a double-decoction mash to enhance malt flavor and balanced with 
Czech Saaz hops for a delightfully floral and spicy aroma. Lagered horizontally for two months for clarity of 
flavor. Light but with rich malt and hop character.', 
'https://www.noblebeastbeer.com/uploads/1/3/0/9/130995430/s493792787205224201_p191_i2_w1184.jpeg?width=640'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Evil Motives', 7.2, 68,
'Double Dry Hopped IPA', 'Double dry-hopped IPA, brewed with big hop additions of Citra, Simcoe, and Mosaic. Smooth bitterness, 
big aroma, and a clean finish.', 
'https://www.noblebeastbeer.com/uploads/1/3/0/9/130995430/s493792787205224201_p455_i2_w1184.jpeg?width=640'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Kapitan ', 4.7, 38,
'Alt Bier', 'Altbier is a copper colored German-style ale with a moderate hop character. A traditional 
decoction mash brings out rich malt flavors without sweetness and makes Kapitän an easy drinker. A favorite 
of the Brewmaster!', 
'https://www.noblebeastbeer.com/uploads/1/3/0/9/130995430/s493792787205224201_p392_i1_w1184.jpeg?width=640'
, true, 1);

-- Saucy Brew Works

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Love You, Bye', 8.0, 34,
'Hazy Imperial IPA', 'Super juicy and permanently hazy.', 
'https://www.saucybrewworks.com/media/images/Love_you_bye.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Juicy ASAP', 6.5, 66,
'American India Pale Ale', 'Tropical, citrusy, and most certainly juicy.', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_IPA.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Habituale ', 5.0, 21,
'Kölsch Style Golden Ale', 'Light, clean, crisp with a slight citrusy, spicy character', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_Habituale.width-400.png'
, true, 1);

-- The Cleveland Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Muellerfest', 5.4, null,
'Oktoberfest Lager', 'In honor of Ernst Mueller, who emigrated with his family to Cleveland and 
started the Cleveland Home Brewing Company, We give you our Oktoberfest at 5.4%. Full bodied lager 
using German Noble hops making this beer just plain delicious. PROST!', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Browns Town', 5.4, null,
'Brown Ale', 'Sessionable Brown Ale with notes of chocolate and coffee. Finish is a little complex but 
balanced. Not too strong and to keeps you having more than just one.  ', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('AWFUGIT', 11.0, null,
'Triple IPA', 'This super balanced, but boozy Triple IPA joins our menu when we all 
need to get tuned up fast: family holidays, big games, and bad weather. ', 
'https://ih1.redbubble.net/image.810331432.7493/fposter,small,wall_texture,product,750x1000.u1.jpg'
, true, 1);

-- The Jolly Scholar
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Give Me Good Dreams', 10.1, 18,
'Fruit Beer', 'This Belgian-style beer is bursting at its seams with 
raspberry and fruity and spicy yeast notes. Low bitterness and very high alcohol 
round out this red-hued ale', 
'https://untappd.akamaized.net/site/brewery_logos/brewery-338653_6b0c7.jpeg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Remote Drinking', 6.9, 60,
'American India Pale Ale', 'A nice regular IPA with some bitterness and fruit/citrus. 
If you close your eyes and taste this, you are back at the Jolly Scholar for dollar 
beer night.', 
'https://untappd.akamaized.net/site/brewery_logos/brewery-338653_6b0c7.jpeg'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Tursas', 7.7, 26,
'Baltic Porter', 'A hefty Baltic Porter with lots of malt flavor and low roastiness 
and bitterness. Chocolate and dark fruit meld perfectly in this smooth lager.', 
'https://untappd.akamaized.net/site/brewery_logos/brewery-338653_6b0c7.jpeg'
, true, 1);

-- Working Class Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Love You, Bye', 8.0, 34,
'Hazy Imperial IPA', 'Super juicy and permanently hazy.', 
'https://www.saucybrewworks.com/media/images/Love_you_bye.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Juicy ASAP', 6.5, 66,
'American India Pale Ale', 'Tropical, citrusy, and most certainly juicy.', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_IPA.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Habituale ', 5.0, 21,
'Kölsch Style Golden Ale', 'Light, clean, crisp with a slight citrusy, spicy character', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_Habituale.width-400.png'
, true, 1);

-- Maize Valley Craft Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Love You, Bye', 8.0, 34,
'Hazy Imperial IPA', 'Super juicy and permanently hazy.', 
'https://www.saucybrewworks.com/media/images/Love_you_bye.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Juicy ASAP', 6.5, 66,
'American India Pale Ale', 'Tropical, citrusy, and most certainly juicy.', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_IPA.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Habituale ', 5.0, 21,
'Kölsch Style Golden Ale', 'Light, clean, crisp with a slight citrusy, spicy character', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_Habituale.width-400.png'
, true, 1);

-- Fat Head's Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Love You, Bye', 8.0, 34,
'Hazy Imperial IPA', 'Super juicy and permanently hazy.', 
'https://www.saucybrewworks.com/media/images/Love_you_bye.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Juicy ASAP', 6.5, 66,
'American India Pale Ale', 'Tropical, citrusy, and most certainly juicy.', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_IPA.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Habituale ', 5.0, 21,
'Kölsch Style Golden Ale', 'Light, clean, crisp with a slight citrusy, spicy character', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_Habituale.width-400.png'
, true, 1);

-- Baithouse Brewery
INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Love You, Bye', 8.0, 34,
'Hazy Imperial IPA', 'Super juicy and permanently hazy.', 
'https://www.saucybrewworks.com/media/images/Love_you_bye.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Juicy ASAP', 6.5, 66,
'American India Pale Ale', 'Tropical, citrusy, and most certainly juicy.', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_IPA.width-400.png'
, true, 1);

INSERT INTO beers (name, abv, ibu, type, info, img_url, is_active, brewery_id) 
VALUES ('Habituale ', 5.0, 21,
'Kölsch Style Golden Ale', 'Light, clean, crisp with a slight citrusy, spicy character', 
'https://www.saucybrewworks.com/media/images/Beer-Page_Core-Cans_Habituale.width-400.png'
, true, 1);