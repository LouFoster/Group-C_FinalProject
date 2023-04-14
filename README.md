# Class-Project_GroupC


![image](https://user-images.githubusercontent.com/117233641/228967655-f00c75f4-170b-466c-934b-5e20b575e266.png)



Weather Tracking to investigate Air Quality in Multiple Cities

data source 
•	weather data https://openweathermap.org/api/air-pollution

•	Population Data: Tom Action Item 

•	Check out Kaggle

Questions for Ben/ Sasha

•	get assistance in downloading cvs files from online resources

•	for relevant Data from 2018/2019

Overview

This project will focus on data analysis of air quality in a variety of cities throughout the world. Our sample database consists of cities chosen at random.

Proposed Cites to include for this Project.

Northern Hemisphere (need to get 50 cities) 

•	(Country) Bangladesh, (City) Dhaka

•	(Country) Great Britain, (City) London, 

Southern Hemisphere

•	(Country) Brazil, (City) Rio 

•	(Country) Africa (City) Kamplaa
 
 
##Project Hypothesis
•	cities with larger populations have lower air quality countries 

•	track air quality at certain times of the year  

      o	Summertime is the worst, no matter where you are
      o	Reports on Years vs Air Quality in both Southern and Northern Hemispheres
•	Does the country have air quality standards laws, rules, or regulations?

##Game Plan

•	Ping API to Obtain Air Quality 

•	Manually look up lat and lng for cities

•	Save to dictionary 

•	Convert to dataframe

•	Import into a database 

•	Visualization

•	Machine Learning 

 air quality standards as per https://openweathermap.org/api/air-pollution
 



Skill Sets

Lou: Data Collection

Tom and Adam: Tableau

Adam: Set up database 
url = "https://api.openweathermap.org/data/2.5/air_pollution/history?lat=51.5072&lon=0.1276&start=1640995200&end=1661971200&appid=6dc244aefdc1601dd829f060569da2bc"# Get weather data

weather_response = requests.get(url)

weather_json = weather_response.json()

print(weather_json)

http://api.openweathermap.org/data/2.5/air_pollution?lat={lat}&lon={lon}&appid={API key}

Adam was able to get into

Historical air pollution data

API call

http://api.openweathermap.org/data/2.5/air_pollution/history?lat={lat}&lon={lon}&start={start}&end={end}&appid={API key}

## Database

The database has three tables, city, air_pollution_by_city and air_quality_lookup. The city table holds all the cities we pulled data on

using the API. The columns in the city table are as follows, 'id', 'country','city', 'population','latitude','longitude'. The air_pollution_by_city

table holds the API data we pulled. The columns are as follows, 'id', 'date', 'air_quality_index', 'so2, 'no2', 'pm10',pm2point5', 'o3', 'co',

'city_id'. The last table is the 'air_quality_lookup' table which maps the air_qulaity_index to a description of the air quality. 

Population data
https://www.kaggle.com/datasets

## Machine Learning Model
We used a logistic regression model to predict the air pollution index level of each city based on polluting gases such as Carbon monoxide (CO), Nitrogen monoxide (NO), Nitrogen dioxide (NO2), Ozone (O3), Sulphur dioxide (SO2), Ammonia (NH3), and particulates (PM2.5 and PM10).

We made Air Quality our target value to predit whether a city had a score between 1 and 4.

We also decided to drop the column'date' to recieve a higher prediction score. 



