/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name LIKE '%mon%';

SELECT name from animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

SELECT name from animals WHERE neutered = 'true' AND escape_attempts < 3;

SELECT date_of_birth from animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;

SELECT * from animals WHERE neutered = 'true';

SELECT * from animals WHERE name NOT IN ('Gabumon');

SELECT * from animals WHERE weight_kg BETWEEN 10.4 and 17.3;

/* Pull request 2 */

BEGIN;
UPDATE animals
SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

Begin;
update animals set species = 'digimon' where name Like '%mon%';
update animals set species = 'pokemon' where name NOT Like '%mon%';
select * from animals;
commit;
select * from animals;

Begin;
Delete from animals;
ROLLBACK;
select * from animals;

Begin; 
Delete from animals 
Where date_of_birth > '2022-01-01'
SAVEPOINT Birth_Date;
update animals set weight_kg = weight_kg * -1;
rollback to Birth_Date;
update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
commit;
select * from animals;

select count(*) from animals;
select count(*) from animals where escape_attempts = 0;
select AVG(weight_kg) from animals;
SELECT neutered, AVG(escape_attempts) AS average FROM animals GROUP BY neutered ORDER BY average DESC LIMIT 1;
select species, min(weight_kg) as Minimun, max(weight_kg) as Maximum from animals
GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals 
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;