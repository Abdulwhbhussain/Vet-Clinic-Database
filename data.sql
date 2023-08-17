/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (1, 'Agumon', '03-02-2020', 0, true, 10.23), 
(2, 'Gabumon', '15-11-2018', 2, true, 8),
(3, 'Pikachu', '07-01-2021', 1, false, 15.04),
(4, 'Devimon', '12-05-2017', 5, true, 11)

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES (5, 'Charmander', '08-02-2020', 0, false, -11), (6, 'Plantmon', '15-11-2021', 2, true, -5.7), (7, 'Squirtle', '02-04-1993', 3, false, -12.13), (8, 'Angemon', '12-06-2005', 1, true, -45),
(9, 'Boarmon', '07-06-2005', 7, true, 20.4),
(10, 'Blossom', '13-10-1998', 3, true, 17),
(11, 'Ditto', '14-05-2022', 4, true, 22)

/* Pull request no. 3 */

INSERT INTO owners(full_name, age) VALUES ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);

INSERT INTO species(name) VALUES ('Pokemon'), ('Digimon');
