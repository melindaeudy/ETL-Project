-- Create tables for raw data to be loaded into
CREATE TABLE brewery_data(
id INT PRIMARY KEY,
name TEXT,
phone_no INT,
address TEXT,
city TEXT,
state TEXT,
zip_code INT,
website TEXT
);


CREATE TABLE yelp_data (
id INT PRIMARY KEY,
name TEXT,
Yelp_price INT,
Yelp_rating INT
);

SELECT * FROM brewery_data

SELECT * FROM yelp_data

-- Joins tables
SELECT brewery_data.id, brewery_data.name, brewery_data.phone_no, brewery_data.city, brewery_data.state, brewery_data.zip_code, brewery_data.website, yelp_data.Yelp_price, yelp_data.Yelp_rating
FROM brewery_data
INNER JOIN yelp_data
ON brewery_data.id = yelp_data.id;
