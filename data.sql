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