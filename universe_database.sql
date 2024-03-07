-- Créer la base de données "universe"
CREATE DATABASE universe;

-- Se connecter à la base de données "universe"
\c universe

-- Créer la table "galaxy"
CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    is_spherical BOOLEAN NOT NULL,
    distance_from_earth INT UNIQUE,
    is_very_big BOOLEAN NOT NULL,
    greatness NUMERIC UNIQUE,
    rank INT UNIQUE
);

-- Créer la table "star" avec une clé étrangère vers la table "galaxy"
CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    is_spherical BOOLEAN NOT NULL,
    distance_from_earth INT UNIQUE,
    is_very_big BOOLEAN NOT NULL,
    greatness NUMERIC UNIQUE,
    rank INT UNIQUE,
    galaxy_id INT REFERENCES galaxy(galaxy_id)
);

-- Créer la table "planet" avec une clé étrangère vers la table "star"
CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    is_spherical BOOLEAN NOT NULL,
    distance_from_earth INT UNIQUE,
    is_very_big BOOLEAN NOT NULL,
    greatness NUMERIC UNIQUE,
    rank INT UNIQUE,
    star_id INT REFERENCES star(star_id)
);

-- Créer la table "moon" avec une clé étrangère vers la table "planet"
CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    is_spherical BOOLEAN NOT NULL,
    distance_from_earth INT UNIQUE,
    is_very_big BOOLEAN NOT NULL,
    greatness NUMERIC UNIQUE,
    rank INT UNIQUE,
    planet_id INT REFERENCES planet(planet_id)
);

-- Créer la table "sun" avec une clé étrangère vers la table "galaxy"
CREATE TABLE sun (
    sun_id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    is_spherical BOOLEAN NOT NULL,
    distance_from_earth INT UNIQUE,
    is_very_big BOOLEAN NOT NULL,
    greatness NUMERIC UNIQUE,
    rank INT UNIQUE,
    galaxy_id INT REFERENCES galaxy(galaxy_id)
);

-- Insérer des données dans les tables (ajustement des valeurs et des apostrophes)
INSERT INTO planet(name, planet_id, description, is_spherical, distance_from_earth, is_very_big, greatness, rank)
VALUES('Solara', 1, 'Solara est une planète ardente avec une atmosphère riche en vapeur d\'eau et des températures extrêmes.', True, 864, True, 4875.166, 5),
('Aerion', 2, 'Aerion est une planète gazeuse avec des tourbillons atmosphériques spectaculaires.', True, 86844, True, 4875.1466, 11),
('Luminara', 3, 'Luminara est une planète gelée, constamment éclairée par une étoile lointaine.', True, 184, True, 875.146, 2),
('Sylva', 4, 'Sylva est une planète forestière, recouverte d\'une canopée dense et abritant une variété de créatures uniques.', False, 1865, True, 87.1466, 8),
('Magnora', 5, 'Magnora est une planète magnétique avec des champs magnétiques intenses.', False, 1804, False, 878.66, 6),
('Aquanis', 6, 'Aquanis est une planète océanique avec des mers profondes et des créatures bioluminescentes.', True, 18704, False, 8701.66, 7),
('Ventara', 7, 'Ventara est une planète venteuse avec des plaines de sable en perpétuel mouvement.', False, 1870784, True, 81701.66, 1),
('Rocterra', 8, 'Rocterra est une planète rocheuse avec des montagnes escarpées et des canyons profonds.', False, 18004, True, 8184.616, 3),
('Nuvoria', 9, 'Nuvoria est une planète atmosphérique avec des nuages colorés qui créent un spectacle constant dans le ciel.', True, 180496, True, 81871.61, 10),
('Cristallia', 10, 'Cristallia est une planète cristalline avec des plaines de cristaux géants.', True, 694016, True, 999451.2, 12),
('Obscuria', 11, 'Obscuria est une planète sombre et mystérieuse, éclairée uniquement par la lumière des étoiles lointaines.', True, 69416, True, 9996451.2, 4),
('Aurora', 12, 'Aurora est une planète électrique avec des tempêtes d\'auroras lumineuses.', True, 694176, True, 99947451.2, 13);

INSERT INTO galaxy(name, galaxy_id, description, is_spherical, distance_from_earth, is_very_big, greatness, rank)
VALUES
('Voie lactée', 1, 'sans description', False, NULL, True, NULL, 6),
('Andromède (M31)', 2, 'sans description', True, NULL, True, NULL, 5),
('Triangulum (M33)', 3, 'sans description', True, NULL, False, NULL, 4),
('Sombrero (M104)', 4, 'sans description', False, NULL, True, NULL, 3),
('Tourbillon (M51)', 5, 'sans description', True, NULL, True, NULL, 2),
('Tourbillon (M5)', 6, 'sans description', True, NULL, True, NULL, 1);

INSERT INTO sun(name, sun_id, description, is_spherical, distance_from_earth, is_very_big, greatness, rank)
VALUES
('regolith', 1, 'sans description', True, NULL, False, NULL, 3),
('elliptique', 2, 'sans description', False, NULL, True, NULL, 2),
('surface', 3, 'sans description', True, NULL, True, NULL, 1);

INSERT INTO moon(name, moon_id, description, is_spherical, distance_from_earth, is_very_big, greatness, rank)
VALUES
('masse', 1, 'sans description', False, NULL, False, NULL, 20),
('Diamètre', 2, 'sans description', False, NULL, True, NULL, 19),
('Distance', 3, 'sans description', True, NULL, False, NULL, 18),
('Gravité', 4, 'sans description', False, NULL, True, NULL, 17),
('Température', 5, 'sans description', True, NULL, True, NULL, 16),
('Cratères d\'impact', 6, 'sans description', False, NULL, True, NULL, 15),
('Mers lunaires', 7, 'sans description', True, NULL, False, NULL, 14),
('Montagnes', 8, 'sans description', False, NULL, True, NULL, 13),
('Vallées', 9, 'sans description', False, NULL, True, NULL, 12),
('Altitudes', 10, 'sans description', True, NULL, False, NULL, 11),
('Regolith', 11, 'sans description', False, NULL, True, NULL, 10),
('Éclipses', 12, 'sans description', True, NULL, False, NULL, 9),
('Orbite elliptique', 13, 'sans description', False, NULL, True, NULL, 8),
('Réservoirs de glace', 14, 'sans description', True, NULL, False, NULL, 7),
('Champs magnétiques faibles', 15, 'sans description', False, NULL, True, NULL, 6),
('Sillons', 16, 'sans description', True, NULL, False, NULL, 5),
('Lunes de la Lune', 17, 'sans description', False, NULL, False, NULL, 4),
('Érosion', 18, 'sans description', False, NULL, True, NULL, 3),
('Surface fracturée', 19, 'sans description', False, NULL, False, NULL, 2),
('rayonnance', 20, 'sans description', False, NULL, False, NULL, 1);

INSERT INTO star(name, star_id, description, is_spherical, distance_from_earth, is_very_big, greatness, rank)
VALUES
('solei', 1, 'sans description', False, NULL, False, NULL, 6),
('Sirius', 2, 'sans description', False, NULL, True, NULL, 5),
('Alpha Centauri', 3, 'sans description', True, NULL, False, NULL, 4),
('Bételgeuse', 4, 'sans description', False, NULL, False, NULL, 3),
('Véga', 5, 'sans description', True, NULL, True, NULL, 2),
('Antarès', 6, 'sans description', False, NULL, True, NULL, 1);
