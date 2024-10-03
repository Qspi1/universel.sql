CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(20) NOT NULL UNIQUE,
	age NUMERIC,
	has_life BOOLEAN,
    description TEXT
);

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE,
    area INT,
    volume INT,
    age NUMERIC,
    description TEXT,
    galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id)
);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE,
    area INT,
    volume INT,
    age NUMERIC,
    description TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN,
    star_id INT NOT NULL REFERENCES star(star_id)
);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL UNIQUE,
    area INT,
    volume INT,
    age NUMERIC,
    description TEXT,
    has_life BOOLEAN,
    has_water BOOLEAN,
	planet_id INT NOT NULL REFERENCES planet(planet_id)
);


CREATE TABLE more_info (
    more_info_id SERIAL PRIMARY KEY NOT NULL,
    object_id INT NOT NULL,
    name VARCHAR(20) NOT NULL UNIQUE,
    description TEXT
);


INSERT INTO galaxy(name, age, has_life, description) VALUES ('A',NULL,TRUE,'loren impsum'), ('B',NULL,TRUE,'loren impsum'), ('C',NULL,TRUE, 'loren impsum'), ('D',NULL,FALSE,'loren impsum'), ('E',NULL,FALSE,'loren impsum'), ('F',NULL,FALSE,'loren impsum')

INSERT INTO star(name, area, volume, age, description, galaxy_id) VALUES ('X',1,1,NULL,'loren impsum',1), ('Y',1,1,NULL,'loren impsum',2), ('Z',1,1,NULL,'loren impsum',3), ('W',1,1,NULL,'loren impsum',4), ('Q',1,1,NULL,'loren impsum',5), ('V',1,1,NULL,'loren impsum',6);

INSERT INTO planet(name, area, volume, age, description, has_life, has_water, star_id) VALUES 
('AA',1,1,1,'loren impsum',FALSE, FALSE,1), ('AB',1,1,1,'loren impsum',TRUE, TRUE,1), ('BA',1,1,1,'loren impsum',FALSE, TRUE,2),
('BB',1,1,1,'loren impsum',FALSE, FALSE,2), ('CA',1,1,1,'loren impsum',TRUE, TRUE,3), ('CB',1,1,1,'loren impsum',TRUE, FALSE,3),
('DA',1,1,1,'loren impsum',FALSE, FALSE,4), ('DB',1,1,1,'loren impsum',FALSE, TRUE,4), ('EA',1,1,1,'loren impsum',TRUE, FALSE,5),
('EB',1,1,1,'loren impsum',TRUE, TRUE,5), ('FA',1,1,1,'loren impsum',FALSE, TRUE,6), ('FB',1,1,1,'loren impsum',TRUE, FALSE,6);

INSERT INTO moon(name, area, volume, age, description, has_life, has_water, planet_id) VALUES
('Moon',1,1,1,'loren impsum',FALSE, FALSE,1), ('Deimos',1,1,1,'loren impsum',FALSE, FALSE,2), ('Phobos',1,1,1,'loren impsum',FALSE, FALSE,3), ('Amalthea',1,1,1,'loren impsum',FALSE, FALSE,4),
('Callisto',1,1,1,'loren impsum',TRUE, TRUE,5), ('Europa',1,1,1,'loren impsum',TRUE, TRUE,6), ('Ganymede',1,1,1,'loren impsum',TRUE, TRUE,7), ('Io',1,1,1,'loren impsum',TRUE, TRUE,8),
('Dione',1,1,1,'loren impsum',TRUE, TRUE,9), ('Enceladus',1,1,1,'loren impsum',TRUE, TRUE,10), ('Hyperion',1,1,1,'loren impsum',TRUE, TRUE,11), ('Iapetus',1,1,1,'loren impsum',TRUE, TRUE,12),
('Mimas',1,1,1,'loren impsum',FALSE, TRUE,1), ('Phoebe',1,1,1,'loren impsum',FALSE, TRUE,2), ('Rhea',1,1,1,'loren impsum',FALSE, TRUE,3), ('Tethys',1,1,1,'loren impsum',FALSE, TRUE,4),
('Titan',1,1,1,'loren impsum',TRUE, FALSE,5), ('Ariel',1,1,1,'loren impsum',TRUE, FALSE,6), ('Miranda',1,1,1,'loren impsum',TRUE, FALSE,7), ('Oberon',1,1,1,'loren impsum',TRUE, FALSE,8);

INSERT INTO more_info VALUES (1, 1, 'info1', 'lorem impsum'), (2, 2, 'info2', 'lorem impsum'), (3, 3, 'info3', 'lorem impsum'), (4, 4, 'info4', 'lorem impsum'), (5, 5, 'info5', 'lorem impsum');