/* Database schema to keep the structure of entire database. */

CREATE TABLE public.animals
(
    id integer,
    name "char",
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.animals
    OWNER to postgres;

// Adding a COLUMN species
ALTER TABLE IF EXISTS public.animals
    ADD COLUMN species character varying;


-- Query Multiple tables

-- Create table owners

CREATE TABLE public.owners
(
    id bigserial NOT NULL,
    full_name character varying,
    age integer,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.owners
    OWNER to postgres;

-- Create table species
CREATE TABLE public.species
(
    id bigserial NOT NULL,
    name character varying,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.species
    OWNER to postgres;


-- Modifying Animals table
ALTER TABLE animals
    ADD COLUMN id BIGSERIAL PRIMARY KEY

-- Removing species from animals table
ALTER TABLE animals
	DROP COLUMN species

ALTER TABLE animals
	ADD COLUMN species_id int,

ALTER TABLE animals
	ADD COLUMN owners_id int,

ALTER TABLE animals
	ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
	
ALTER TABLE animals
	ADD CONSTRAINT fk_owners FOREIGN KEY(owners_id) REFERENCES owners(id);


