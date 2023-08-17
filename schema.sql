/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
id INT,
name char(50),
date_of_birth date,
escape_attempts INT,
neutered bool,
weight_kg decimal
);

ALTER TABLE animals
ADD COLUMN species varchar(255);

/* Pull request no. 3 */

CREATE TABLE owners(id INT GENERATED ALWAYS AS IDENTITY, full_name VARCHAR(250), age INT, PRIMARY KEY (id));
CREATE TABLE species(id INT GENERATED ALWAYS AS IDENTITY, name VARCHAR(250), PRIMARY KEY (id));

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD PRIMARY KEY (id);
ALTER TABLE animals ADD species_id INT REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT REFERENCES owners(id);
