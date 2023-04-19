drop table if exists city
drop table if exists air_pollution_by_city
drop table if exists air_quality_lookup

--Create city table
CREATE TABLE city(
  id serial PRIMARY KEY NOT NULL,
  Country TEXT,
  City text,
  Population INT,
  Latitude decimal,
  Longitude decimal
);

-- Create Air Pollution Table
CREATE TABLE air_pollution_by_city (
  id serial PRIMARY KEY NOT NULL,
  city TEXT,
  date timestamp,
  air_quality_index INT,
  so2 decimal,
  no2 decimal,
  pm10 decimal,
  pm2point5 decimal, 
  o3 decimal,
  co decimal
);

-- Create Air Pollution Lookup Table
CREATE TABLE air_quality_lookup (
  id serial PRIMARY KEY NOT NULL,
  air_quality_description text,
  air_quality_index int	
);

--Add City_Id to Air Pollution Table
ALTER TABLE air_pollution_by_city
ADD COLUMN city_id int ;

--Update Air_Pollution_by_City
update air_pollution_by_city
set city_id = city.id
from city
where city.city = air_pollution_by_city.city

--Add Constraint
Alter Table air_pollution_by_city
ADD CONSTRAINT fk_city
FOREIGN KEY (city_id)
REFERENCES city(id)

--Drop City from Air_Pollution_By_City
ALTER TABLE air_pollution_by_city
DROP Column city
