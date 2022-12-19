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


-- Creating table vets
CREATE TABLE vets (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  age INT NOT NULL,
  date_of_graduation DATE NOT NULL
);

-- Creating table: specializations. join table 
CREATE TABLE specializations (
  species_id INT,
  vet_id INT,
  CONSTRAINT FK_species FOREIGN KEY(species_id) REFERENCES species(id),
  CONSTRAINT FK_vets FOREIGN KEY(vet_id) REFERENCES vets(id)
);

-- Creating Visits join table
CREATE TABLE visits (
  animal_id INT,
  vet_id INT,
  date_of_visit DATE,
  CONSTRAINT FK_animals FOREIGN KEY(animal_id) REFERENCES animals(id),
  CONSTRAINT FK_vets FOREIGN KEY(vet_id) REFERENCES vets(id)
);


-- Vet clinic database: database performance audit
