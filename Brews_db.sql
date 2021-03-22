DROP TABLE bars_nc

DROP TABLE bars_sc

DROP TABLE breweries_data

ALTER TABLE breweries_data
ADD COLUMN price text,
ADD COLUMN rating double precision,
ADD COLUMN review_count double precision;

SELECT * FROM bars_nc

SELECT * FROM bars_sc

SELECT * FROM breweries_data

SELECT * FROM breweries_combined

SELECT * FROM breweries

-- Merge tables
CREATE TABLE breweries_combined 
 AS
 SELECT * FROM breweries_data 
 	UNION
  	SELECT * FROM bars_sc

CREATE TABLE breweries
 AS
 SELECT * FROM breweries_combined 
 	UNION
  	SELECT * FROM bars_nc