/* Populate database with sample data. */
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Agumon', '2020-02-03', '0', true, '10.23');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Gabumon', '2018-11-15', '2', true, '8.00');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Pikachu', '2021-01-07', '1', false, '15.04');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Devimon', '2017-05-12', '5', true, '11.00');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Charmander', '2020-02-08', '0', false, '-11.00');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Plantmon', '2022-11-15', '2', true, '-5.70');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Squirtle', '1993-04-02', '3', false, '-12.13');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Angemon', '2005-06-12', '1', true, '-45.00');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Boarmon', '2005-07-12', '7', true, '20.40');
INSERT INTO `vet_clinic`.`animals` (`name`, `date_of_birth`, `escape_attempts`, `neutered`, `weight_kg`) VALUES ('Blossom', '1998-10-13', '3', true, '17.00');

INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Sam Smith', '34');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Jennifer Orwell', '19');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Bob', '45');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Melody Pond', '77');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Dean Winchester', '14');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Jodie Whittaker', '38');

INSERT INTO `vet_clinic`.`species` (`name`) VALUES ('Pokemon');
INSERT INTO `vet_clinic`.`species` (`name`) VALUES ('Digimon');

UPDATE vet_clinic.animals SET species_id = '2' WHERE name LIKE '%mon' AND id > '0';
UPDATE vet_clinic.animals SET species_id = '1' WHERE species_id IS NULL;

UPDATE vet_clinic.animals SET owner_id = '1' WHERE name = 'Agumon' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '2' WHERE name = 'Gabumon' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '2' WHERE name = 'Pikachu' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '3' WHERE name = 'Devimon' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '3' WHERE name = 'Plantmon' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '4' WHERE name = 'Charmander' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '4' WHERE name = 'SquirtLe' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '4' WHERE name = 'Blossom' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '5' WHERE name = 'Angemon' AND id > '0';
UPDATE vet_clinic.animals SET owner_id = '5' WHERE name = 'Boarmon' AND id > '0';