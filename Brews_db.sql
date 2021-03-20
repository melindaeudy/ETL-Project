DROP TABLE bars_nc

DROP TABLE bars_sc

DROP TABLE breweries_data

ALTER TABLE breweries_data
ADD PRIMARY KEY (address1);

ALTER TABLE bars_nc
ADD PRIMARY KEY (address1);

ALTER TABLE bars_sc
ADD PRIMARY KEY (address1);

-- Joins tables
SELECT breweries_data.name, breweries_data.phones, breweries_data.address1, breweries_data.city, breweries_data.state, breweries_data.zip_code, breweries_data.websites, bars_nc.price, bars_nc.rating, bars_nc.review_count
FROM breweries_data
JOIN bars_nc
ON breweries_data.address1 = bars_nc.address1;