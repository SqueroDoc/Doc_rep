CREATE DATABASE mydb;

USE mydb;

CREATE TABLE ufo_sightings (
    city VARCHAR(255),
    colors_reported VARCHAR(255),
    shape_reported VARCHAR(255),
    state VARCHAR(10),
    time DATETIME
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ufo.csv'
INTO TABLE ufo_sightings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(city, colors_reported, shape_reported, state, @time)  -- Задаём правильный порядок
SET time = STR_TO_DATE(@time, '%m/%d/%Y %H:%i');

select *
from ufo_sightings