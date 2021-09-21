/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM vet_clinic.animals WHERE name LIKE '%mon'
SELECT name FROM vet_clinic.animals WHERE date_of_birth >= '20160101' AND date_of_birth <= '20191231';
SELECT name FROM vet_clinic.animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM vet_clinic.animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM vet_clinic.animals WHERE weight_kg > "10.50";
SELECT * FROM vet_clinic.animals WHERE neutered = true;
SELECT * FROM vet_clinic.animals WHERE name != "Gabumon";
SELECT * FROM vet_clinic.animals WHERE weight_kg >= "10.40" AND weight_kg <= "17.30";

/*Inside a transaction update the animals table by setting the species column to unspecified*/
BEGIN;
UPDATE vet_clinic.animals SET species = 'unspecified' WHERE id > 0;
ROLLBACK;
SELECT * FROM ver_clinic.animals;

/*Inside a transaction:
Update the animals table by setting the species column to digimon for all animals that have a name ending in mon.
Update the animals table by setting the species column to pokemon for all animals that don't have species already set.
Commit the transaction.
Verify that change was made and persists after commit.*/

BEGIN;
UPDATE vet_clinic.animals SET species = 'digimon' WHERE name LIKE '%mon' AND id > '0';
UPDATE vet_clinic.animals SET species = 'pokemon' WHERE species IS NULL AND id > '0';
COMMIT;
SELECT * FROM ver_clinic.animals;

/*Inside a transaction delete all records in the animals table, then roll back the transaction.*/

BEGIN;
DELETE FROM vet_clinic.animals WHERE id > 0;
ROLLBACK;

/*Inside a transaction:
Delete all animals born after Jan 1st, 2022.
Create a savepoint for the transaction.
Update all animals' weight to be their weight multiplied by -1.
Rollback to the savepoint
Update all animals' weights that are negative to be their weight multiplied by -1.
Commit transaction*/

BEGIN;
DELETE FROM vet_clinic.animals WHERE date_of_birth > 20220101 AND id > '0';
SAVEPOINT delete_from_birth;
UPDATE vet_clinic.animals SET weight_kg = weight_kg*-1 WHERE id > '0';
ROLLBACK TO SAVEPOINT delete_from_birth;
UPDATE vet_clinic.animals SET weight_kg = weight_kg*-1 WHERE weight_kg < 0 AND id > '0';
COMMIT;


/*Write queries to answer the following questions:
How many animals are there?
How many animals have never tried to escape?
What is the average weight of animals?
Who escapes the most, neutered or not neutered animals?
What is the minimum and maximum weight of each type of animal?
What is the average number of escape attempts per animal type of those born between 1990 and 2000?*/

SELECT COUNT(*) FROM vet_clinic.animals;
SELECT COUNT(*) FROM vet_clinic.animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM vet_clinic.animals;
SELECT neutered FROM vet_clinic.animals WHERE escape_attempts = (SELECT MAX(escape_attempts) FROM vet_clinic.animals);
SELECT MIN(weight_kg) FROM vet_clinic.animals WHERE species = 'pokemon';
SELECT MAX(weight_kg) FROM vet_clinic.animals WHERE species = 'pokemon';
SELECT MIN(weight_kg) FROM vet_clinic.animals WHERE species = 'digimon';
SELECT MAX(weight_kg) FROM vet_clinic.animals WHERE species = 'digimon';
SELECT AVG(weight_kg) FROM vet_clinic.animals WHERE species = 'pokemon' AND date_of_birth >= '19900101' AND date_of_birth <= '20001231';
SELECT AVG(weight_kg) FROM vet_clinic.animals WHERE species = 'digimon' AND date_of_birth >= '19900101' AND date_of_birth <= '20001231';


/* Write queries (using JOIN) to answer the following questions: */

/* What animals belong to Melody Pond? */
SELECT DISTINCT name FROM vet_clinic.animals INNER JOIN vet_clinic.owners ON owner_id = 4;
/* List of all animals that are pokemon (their type is Pokemon). */
SELECT DISTINCT animals.name FROM vet_clinic.animals INNER JOIN vet_clinic.species ON species_id = 1;
/* List all owners and their animals, remember to include those that don't own any animal. */
SELECT owners.full_name, vet_clinic.animals.name FROM vet_clinic.owners LEFT JOIN vet_clinic.animals ON owners.id = animals.owner_id;
/* How many animals are there per species? */
/* Pokemon */
SELECT count(DISTINCT animals.name) FROM vet_clinic.animals INNER JOIN vet_clinic.species ON species_id = 1;
/* Digimon */
SELECT count(DISTINCT animals.name) FROM vet_clinic.animals INNER JOIN vet_clinic.species ON species_id = 2;
/* List all Digimon owned by Jennifer Orwell. */
SELECT DISTINCT name FROM vet_clinic.animals INNER JOIN vet_clinic.owners ON owner_id = 2 WHERE animals.species_id = 2;
/* List all animals owned by Dean Winchester that haven't tried to escape. */
SELECT DISTINCT name FROM vet_clinic.animals INNER JOIN vet_clinic.owners ON owner_id = 5 WHERE animals.escape_attempts = 0;
/* Who owns the most animals? */
SELECT full_name, Count(owners.full_name) as Total_Animals FROM vet_clinic.owners LEFT JOIN vet_clinic.animals ON owners.id = animals.owner_id GROUP BY owners.full_name ORDER BY Total_Animals DESC LIMIT 1;