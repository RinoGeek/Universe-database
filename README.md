![Universe](https://github.com/RinoGeek/Universe-database/blob/main/img.avif)
# Universe Database

## Overview

This project involves creating a fictional database named "universe" to store information about galaxies, stars, planets, moons, and suns. The database schema includes tables with relationships to represent celestial bodies in the universe.

### Database Schema

1. **galaxy**
   - galaxy_id (Primary Key)
   - name (Unique)
   - description
   - is_spherical
   - distance_from_earth (Unique)
   - is_very_big
   - greatness (Unique)
   - rank (Unique)

2. **star**
   - star_id (Primary Key)
   - name (Unique)
   - description
   - is_spherical
   - distance_from_earth (Unique)
   - is_very_big
   - greatness (Unique)
   - rank (Unique)
   - galaxy_id (Foreign Key references galaxy(galaxy_id))

3. **planet**
   - planet_id (Primary Key)
   - name (Unique)
   - description
   - is_spherical
   - distance_from_earth (Unique)
   - is_very_big
   - greatness (Unique)
   - rank (Unique)
   - star_id (Foreign Key references star(star_id))

4. **moon**
   - moon_id (Primary Key)
   - name (Unique)
   - description
   - is_spherical
   - distance_from_earth (Unique)
   - is_very_big
   - greatness (Unique)
   - rank (Unique)
   - planet_id (Foreign Key references planet(planet_id))

5. **sun**
   - sun_id (Primary Key)
   - name (Unique)
   - description
   - is_spherical
   - distance_from_earth (Unique)
   - is_very_big
   - greatness (Unique)
   - rank (Unique)
   - galaxy_id (Foreign Key references galaxy(galaxy_id))

### Data

The provided SQL script inserts fictional data into the tables. Please note that all the data is purely fictitious and created for illustrative purposes.
