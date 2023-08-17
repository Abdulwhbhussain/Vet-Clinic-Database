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

/* Pull request 3 */

SELECT a.name FROM animals AS a JOIN owners AS b ON a.owner_id = b.id WHERE b.full_name = 'Melody Pond';
 SELECT a.name FROM animals AS a JOIN species AS s ON a.species_id = s.id WHERE s.name = 'Pokemon';
 SELECT a.name AS animal_name , o.full_name AS owner_name FROM animals AS a RIGHT JOIN owners As o ON a.owner_id = o.id;
 SELECT COUNT(a.*), s.name FROM animals AS a JOIN species AS s ON a.species_id = s.id GROUP BY s.name;
 SELECT a.name FROM animals AS a JOIN species AS s ON a.species_id = s.id JOIN owners as o ON a.owner_id = o.id WHERE o.full_name = 'Jennifer Orwell' AND s.name = 'Digimon';
 SELECT a.name FROM animals AS a JOIN owners AS o ON a.owner_id = o.id WHERE a.escape_attempts = 0 AND o.full_name = 'Dean Winchester';
 SELECT COUNT(a.owner_id) AS count, o.full_name FROM animals AS a JOIN owners AS o ON a.owner_id = o.id GROUP BY o.full_name  ORDER BY count DESC LIMIT 1;