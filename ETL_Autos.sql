CREATE DATABASE autos_db;
USE autos_db;

DROP TABLE autodata;
DROP TABLE totalthefts;
DROP TABLE cars;

CREATE TABLE autodata (
  ID int auto_increment not null,
  Make TEXT,
  Popularity TEXT,
  MSRP INT,
    PRIMARY KEY (ID)
);

CREATE TABLE totalthefts (
  ID int auto_increment not null,
  Make TEXT,
  Thefts INT,
    PRIMARY KEY (ID)
);

CREATE TABLE cars (
  ID int auto_increment not null,
  Make TEXT,
  Origin TEXT,
    PRIMARY KEY (ID)
);

SELECT * FROM autodata;

SELECT * FROM totalthefts;

SELECT * FROM cars;

-- Join tables on autos_db
SELECT  autodata.Make, autodata.Popularity, autodata.MSRP, totalthefts.Thefts, cars.Origin
FROM autodata, totalthefts, cars
WHERE autodata.Make = totalthefts.Make AND autodata.Make = cars.Make
ORDER BY Thefts DESC
