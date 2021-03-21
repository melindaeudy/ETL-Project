# ETL-Project
TEAM: 
MELINDA EUDY,
KELLY ROSE,
DARRIUS SUMMERS

PROJECT IDEA:
•	Covid-19 has created a society with a bit of claustrophobia
•	What will people want to do now that states are opening back up?
•	Day trips? Weekend Trips?
•	Distance? North and South Carolina
•	Something new!
•	Result: 
•	Bars in NC and SC
•	What are they rated?
•	How expensive?
•	Reviews?

DATA SETS:
•	Kaggle – Breweries and Beer Pubs in the us 
•	‘https://api.yelp.com/v3/businesses/search’
•	params = {'term':'bars','location':'NC'}
•	response=requests.get(url, params=params, headers=headers).json()
•	‘https://api.yelp.com/v3/businesses/search’
•	params = {'term':'bars','location':'SC'
response=requests.get(url, params=params, headers=headers).json()


EXTRACTION – KAGGLE .CSV FILE
•	Inspected File
•	Removed rows with NaN data
•	Removed columns not required for final data table
•	Sorted the table into a readable order
•	Data set reduced to North and South Carolina only
•	Renamed columns
•	Final Count: 77 Bars in breweries_data_df

EXTRACTION – Yelp – North Carlina
•	headers = {'Authorization': 'Bearer %s' % api_key}
•	url='https://api.yelp.com/v3/businesses/search''https://api.yelp.com/v3/businesses/search'
•	params = {'term':'bars','location':'NC'}
•	response=requests.get(url, params=params, headers=headers).json()
•	bars_nc = json.dumps(response, indent = 4, sort_keys=True)
•	response['businesses']
•	Inspect the Data

TRANSFORM – Yelp – North Carlina
•	Created a list of data needed for final DataFrame
•	Created a Pandas DataBase that does NOT remove rows with NaN (thank you Geronimo)
•	Final Count: 20 Bars in North Carolina
 

EXTRACTION – Yelp – South Carlina
•	headers = {'Authorization': 'Bearer %s' % api_key}
•	url='https://api.yelp.com/v3/businesses/search''https://api.yelp.com/v3/businesses/search'
•	params = {'term':'bars','location':'SC'}
•	response=requests.get(url, params=params, headers=headers).json()
•	bars_sc = json.dumps(response, indent = 4, sort_keys=True)
•	response['businesses']
•	Inspect the Data

TRANSFORM – Yelp – South Carlina
•	Created a list of data needed for final DataFrame
•	Created a Pandas DataBase that does NOT remove rows with NaN (thank you Geronimo)
•	Final Count: 20 Bars in South Carolina
 

SEND TABLES TO POSTGRES (pgAdmin4):
•	Added Primary Key to tables in pgAdmin4
•	Join Tables
•	


