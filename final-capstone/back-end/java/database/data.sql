-- BEGIN;

-- DROP TABLE IF EXISTS reviews;
-- DROP TABLE IF EXISTS beers;
-- DROP TABLE IF EXISTS breweries;
-- DROP TABLE IF EXISTS roles;


CREATE TABLE roles {
    role_id serial,
    role_name varchar(30),
    PRIMARY KEY (role_id)
};

CREATE TABLE breweries {
    brewery_id serial,
    name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    city varchar(50) NOT NULL,
    zipcode varchar(15) NOT NULL,
    phone_number varchar(15),
    description text NOT NULL,
    user_id bigint,
    brewery_logo_url varchar(255),
    hours  varchar(255),
    PRIMARY KEY (brewery_id),
    FOREIGN KEY (user_id)
};

CREATE TABLE beers {
    beer_id serial,
    user_id integer,
    name varchar(255) NOT NULL,
    abv decimal,
    ibu integer,
    PRIMARY KEY (beer_id),
    FOREIGN KEY (user_id)
};

CREATE TABLE reviews {
    reviews_id serial,
    user_id integer,
    beer_id integer,
    name varchar(255) NOT NULL,
    PRIMARY KEY (review_id),
    FOREIGN KEY (user_id),
    FOREIGN KEY (beer_id)
};

CREATE TABLE brewery_beer {

}
-- COMMIT;