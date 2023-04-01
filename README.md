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

Christian: Machine Learning /Unlearned Training 

https://www.kaggle.com/datasets

kaggle.com
Find Open Datasets and Machine Learning Projects | Kaggle

Download Open Datasets on 1000s of Projects + Share Projects on One Platform. Explore Popular Topics Like Government, Sports, Medicine, Fintech, Food, More. Flexible Data Ingestion.



Current air pollution data

API call

http://api.openweathermap.org/data/2.5/air_pollution?lat={lat}&lon={lon}&appid={API key}

Adam able to get into

Historical air pollution data

API call

http://api.openweathermap.org/data/2.5/air_pollution/history?lat={lat}&lon={lon}&start={start}&end={end}&appid={API key}




