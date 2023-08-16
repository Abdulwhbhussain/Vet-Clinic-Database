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