DROP TABLE bars_nc

DROP TABLE bars_sc

DROP TABLE breweries_data

ALTER TABLE breweries_data
ADD COLUMN price VARCHAR,
ADD COLUMN rating VARCHAR,
ADD COLUMN review_count VARCHAR;

SELECT * FROM bars_nc

SELECT * FROM bars_sc

SELECT * FROM breweries_data



-- Merge tables
INSERT INTO breweries_data 
(SELECT FROM bars_sc WHERE address1 NOT IN (SELECT FROM breweries_data));

CREATE TABLE breweries_combined 
 AS
 SELECT * FROM breweries_data 
 	UNION
  	SELECT * FROM bars_sc

To merge rows from one table into the other. INSERT INTO table1 (SELECT * FROM table2 WHERE name NOT IN (SELECT name FROM table1));
For creating new table from old tables. CREATE TABLE new_table AS (SELECT * FROM table1 UNION SELECT * FROM table2);