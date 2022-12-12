/* Populate database with sample data. */

INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0001, 'Agumon', '03/02/2020', 0, true, 10.23);

INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0002, 'Gabumon', '11/15/2018', 2, true, 8);
	
INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0003, 'Pikachu', '07/01/2021', 1, false, 15.04);
	
INSERT INTO public.animals(
	id, name, date_of_birth, escape_attempts, neutered, weight_kg)
	VALUES (0004, 'Devimon', '12/05/2017', 5, true, 11);