/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM public.animals WHERE NAME LIKE '%mon'

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' and '2019-12-31';

SELECT name FROM animals WHERE neutered IS true AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered IS TRUE;

SELECT * FROM animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

/*Update the animals table by setting the species column to unspecified*/
-- Begin Transaction

BEGIN;

-- Update species col to 'unspecified'
UPDATE animals
SET species = 'unspecified';

-- Verify that the change was made
SELECT * from animals;

-- Rollback changes
ROLLBACK;

-- Verify changes
SELECT * from animals;

/* Updating species columns based on a condition */
-- Begin Transaction
BEGIN;

-- update species column for animals with names ending in mon
UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

-- updating species column for animals with names not ending in mon
UPDATE animals
SET species = 'pokemon'
WHERE name NOT LIKE '%mon';

-- commit transaction
COMMIT;

-- verify changes
SELECT * from animals;


/* Delete all records in the animals table */
BEGIN;

-- delete all records
DELETE from animals;

-- verify all records are deleted
SELECT * from animals;

-- Rollback changes
ROLLBACK;

-- verify all records still exist
SELECT * from animals;

-- /* queries */
--- Begin transaction
BEGIN;

-- Delete all animals born after Jan 1st, 2022
DELETE from animals 
WHERE date_of_birth > '01-01-2022';

-- create a savepoint
SAVEPOINT SP1;

-- update all animals' weights multiplied by -1
UPDATE animals
SET weight_kg = weight_kg * -1;

-- roolback to savepoint
ROLLBACK TO SP1;

-- update all animals' weights that are negative multiplied by -1
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

-- commit the transaction
COMMIT;


-- /* Aggregates */

-- How many animals are there?
SELECT COUNT(*) from animals;

-- How many animals have never tried to escape?
SELECT COUNT(*) from animals
WHERE escape_attempts = 0;

-- What is the average weight of animals?
SELECT AVG(weight_kg) from animals;

-- Who escapes the most, neutered or not neutered animals?
SELECT neutered, COUNT(escape_attempts) FROM animals GROUP BY neutered;

-- What is the minimum and maximum weight of each type of animal?
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT species, AVG(escape_attempts) FROM animals
WHERE date_of_birth BETWEEN '01-01-1990' AND '01-01-2000'
GROUP BY species;
