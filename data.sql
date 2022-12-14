/* Populate database with sample data. */

INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0001, 'Agumon', '2020/02/03', 0, true, 10.23);

INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0002, 'Gabumon', '2018//11/15', 2, true, 8);
	
INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0003, 'Pikachu', '2021/01/07', 1, false, 15.04);
	
INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0004, 'Devimon', '2017/05/12/', 5, true, 11);

/*Modifying animals table*/

INSERT INTO public.animals (
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (0005, 'Charmander', '2020/08/02', 0, false, -11);

INSERT INTO public.animals (
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (0006, 'Plantmon', '2021/15/11', 2, true, -5.7);

INSERT INTO public.animals (
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (0007, 'Squirtle', '1993/02/04', 3, false, -12.13);

INSERT INTO public.animals (
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (0008, 'Angemon', '2005/12/06', 1, true, -45);

INSERT INTO public.animals (
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (0009, 'Boarmon', '2005/07/06', 7, true, 20.4);

INSERT INTO public.animals (
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (0010, 'Blossom', '1998/13/10', 3, true, 17);

INSERT INTO public.animals (
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (0011, 'Ditto', '2022/14/05', 4, true, 22);


-- Inserting Data into owners table

INSERT INTO public.owners (full_name, age)
	VALUES ('Sam Smith', 34);

INSERT INTO public.owners (full_name, age)
	VALUES ('Jennifer Orwell', 19);

INSERT INTO public.owners (full_name, age)
	VALUES ('Bob', 45);

INSERT INTO public.owners (full_name, age)
	VALUES ('Melody Pond', 77);

INSERT INTO public.owners (full_name, age)
	VALUES ('Dean winchester', 14);

INSERT INTO public.owners (full_name, age)
	VALUES ('Jodie Whittaker', 38);



-- Inserting into species

INSERT INTO public.species (name)
	VALUES ('Pokemon');

INSERT INTO public.species (name)
	VALUES ('Digimon');


/* Update species_id col in animals table with a condition */
-- Begin Transaction
BEGIN;

-- update species col for animals with names ending in mon
UPDATE animals
SET species_id = 2
WHERE name LIKE '%mon';

-- update species col for animals with names not ending in mon
UPDATE animals
SET species_id = 1
WHERE name NOT LIKE '%mon';

-- commit transaction
COMMIT;


-- Modifying inserted animals to include owners information
-- BEGIN TRANSACTIONS
BEGIN;

--- Sam Smith owns Agumon.
UPDATE animals
SET owners_id = 1
WHERE name = 'Agumon';

-- Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals
SET owners_id = 2
WHERE name IN ('Gabumon', 'Pikachu');

-- Bob owns Devimon and Plantmon.
UPDATE animals
SET owners_id = 3
WHERE name IN ('Devimon', 'Plantmon');

-- Melody Pond owns Charmander, Squirtle, and Blossom.
UPDATE animals
SET owners_id = 4
WHERE name IN ('Charmander', 'Squirtle', 'Blossom');

-- Dean Winchester owns Angemon and Boarmon.
UPDATE animals
SET owners_id = 5
WHERE name IN ('Angemon', 'Boarmon');

--- commit transaction
COMMIT;