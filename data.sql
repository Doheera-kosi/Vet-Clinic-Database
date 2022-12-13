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