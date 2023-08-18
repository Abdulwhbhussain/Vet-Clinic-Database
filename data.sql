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

UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Digimon') WHERE name LIKE '%mon';
UPDATE animals SET species_id = (SELECT id FROM species WHERE name = 'Pokemon') WHERE species_id IS NULL;

UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith') WHERE name = 'Agumon';
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell') WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob') WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond') WHERE name IN ('Charmandor', 'Squirtle', 'Blossom');
UPDATE animals SELECT owner_id = (SELECT id from owners WHERE full_name = 'Dean Winchester') WHERE name IN ('Angemon', 'Boarmon');

/* pull request no. 4 */

INSERT INTO vets(name, age, date_of_graduation) VALUES
  ('William Tatcher', 45, '2000-04-23'),
  ('Maisy Smith', 26, '2019-01-17'),
  ('Stephanie Mendez', 64, '1981-05-04'),
  ('Jack Harkness', 38, '2008-06-08');


INSERT INTO  specialization(vet_id, species_id) VALUES(
  (SELECT id FROM vets WHERE name = 'William Tatcher'),
  (SELECT id FROM species WHERE name = 'Pokemon')
 );

INSERT INTO specialization(vet_id, species_id) VALUES
(
  (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
  (SELECT id FROM species WHERE name = 'Digimon')
),
(
  (SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
  (SELECT id from species WHERE name = 'Pokemon')
);

INSERT INTO specialization(vet_id, species_id) VALUES
(
  (SELECT id FROM vets WHERE name = 'Jack Harkness'),
  (SELECT id FROM species WHERE name = 'Digimon')
);

INSERT INTO visits(vet_id, animals_id, date_of_visit) VALUES 
(
  (SELECT id from vets WHERE name = 'William Tatcher'),
  (SELECT id from animals WHERE name = 'Agumon'),
  '2020-05-24'
),
(
  (SELECT id from vets WHERE name = 'Stephanie Mendez'),
  (SELECT id from animals WHERE name = 'Agumon'),
  '2020-07-22'
),
(
  (SELECT id from vets WHERE name = 'Jack Harkness'),
  (SELECT id from animals WHERE name = 'Gabumon'),
  '2021-02-02'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Pikachu'),
  '2020-01-05'
),
(
 (SELECT id from vets WHERE name = 'Maisy Smith'),
 (SELECT id from animals WHERE name = 'Pikachu'),
  '2020-03-08'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Pikachu'),
  '2020-05-14'
),
(
  (SELECT id from vets WHERE name = 'Stephanie Mendez'),
  (SELECT id from animals WHERE name = 'Devimon'),
  '2021-05-04'
),
(
  (SELECT id from vets WHERE name = 'Jack Harkness'),
  (SELECT id from animals WHERE name = 'Charmandor'),
  '2021-02-24'
),
(
  (SELECT id from vets WHERE name = 'Jack Harkness'),
  (SELECT id from animals WHERE name = 'Angemon'),
  '2020-10-03'
),
(
  (SELECT id from vets WHERE name = 'Jack Harkness'),
  (SELECT id from animals WHERE name = 'Angemon'),
  '2020-11-04'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Boarmon'),
  '2019-01-24'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Boarmon'),
  '2019-05-05'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Boarmon'),
  '2020-02-27'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Boarmon'),
  '2020-08-03'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Plantmon'),
  '2019-12-21'
),
(
  (SELECT id from vets WHERE name = 'Maisy Smith'),
  (SELECT id from animals WHERE name = 'Plantmon'),
  '2021-04-07'
),
(
  (SELECT id from vets WHERE name = 'William Tatcher'),
  (SELECT id from animals WHERE name = 'Plantmon'),
  '2020-08-10'
),
(
  (SELECT id from vets WHERE name = 'William Tatcher'),
  (SELECT id from animals WHERE name = 'Blossom'),
  '2021-01-11'
),
(
  (SELECT id from vets WHERE name = 'Stephanie Mendez'),
  (SELECT id from animals WHERE name = 'Blossom'),
  '2020-05-24'
),
(
  (SELECT id from vets WHERE name = 'Stephanie Mendez'),
  (SELECT id from animals WHERE name = 'Squirtle'),
  '2019-09-29'
);
