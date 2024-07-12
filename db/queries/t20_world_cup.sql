USE t20_world_cup;
CREATE TABLE teams (
    ID int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL UNIQUE,
    country varchar(255) NOT NULL,
    founded YEAR(4)
    
  
   
);

INSERT INTO teams (name, country, founded) VALUES
('Team A', 'USA', 1901),
('Team B', 'UK', 1950),
('Team C', 'Spain', 1920),
('Team D', 'Germany', 1995),
('Team E', 'Italy', 1905),
('Team F', 'France', 1975),
('Team G', 'Brazil', 1910),
('Team H', 'Argentina', 1913),
('Team I', 'Mexico', 1922),
('Team J', 'Netherlands', 1902);


SELECT name FROM teams;

SELECT name FROM teams 
WHERE Country = 'Mexico';

SELECT name FROM teams
WHERE founded < 1910;

INSERT INTO teams (name, country, founded) VALUES
('Team K', 'INDIA', 1906);

UPDATE teams
SET country = 'Canada'
WHERE name = 'Team A';

DELETE FROM teams WHERE name = 'UK'

