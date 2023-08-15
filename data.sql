/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (1, 'Agumon', '03-02-2020', 0, true, 10.23), (2, 'Gabumon', '15-11-2018', 2, true, 8),
(3, 'Pikachu', '07-01-2021', 1, false, 15.04),
(4, 'Devimon', '12-05-2017', 5, true, 11)
