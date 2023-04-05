-- Create Active User Table
CREATE TABLE air_pollution_by_city (
  id INT PRIMARY KEY NOT NULL,
  city TEXT,
  date date,
  air_quality_index INT,
  so2 decimal,
  no2 decimal,
  pm10 decimal,
  pm2point5 decimal, 
  o3 decimal,
  co decimal
);

