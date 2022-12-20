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

CREATE TABLE public.owners
(
    id bigserial NOT NULL,
    full_name character varying,
    age integer,
    PRIMARY KEY (id)
);

-- Create table species
CREATE TABLE public.species
(
    id bigserial NOT NULL,
    name character varying,
    PRIMARY KEY (id)
);

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

