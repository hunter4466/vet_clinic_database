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

/* Insert the following data into the owners table:
Sam Smith 34 years old.
Jennifer Orwell 19 years old.
Bob 45 years old.
Melody Pond 77 years old.
Dean Winchester 14 years old.
Jodie Whittaker 38 years old. */
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Sam Smith', '34');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Jennifer Orwell', '19');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Bob', '45');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Melody Pond', '77');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Dean Winchester', '14');
INSERT INTO `vet_clinic`.`owners` (`full_name`, `age`) VALUES ('Jodie Whittaker', '38');

/* Insert the following data into the species table:
Pokemon
Digimon */
INSERT INTO `vet_clinic`.`species` (`name`) VALUES ('Pokemon');
INSERT INTO `vet_clinic`.`species` (`name`) VALUES ('Digimon');

/* Modify your inserted animals so it includes the species_id value:
If the name ends in "mon" it will be Digimon
All other animals are Pokemon */
UPDATE vet_clinic.animals SET species_id = '2' WHERE name LIKE '%mon' AND id > '0';
UPDATE vet_clinic.animals SET species_id = '1' WHERE species_id IS NULL;

/* Modify your inserted animals to include owner information (owner_id):
Sam Smith owns Agumon.
Jennifer Orwell owns Gabumon and Pikachu.
Bob owns Devimon and Plantmon.
Melody Pond owns Charmander, Squirtle, and Blossom.
Dean Winchester owns Angemon and Boarmon. */
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

INSERT INTO `vet_clinic`.`vets` (`name`, `age`, `date_of_graduation`) VALUES ('William Tatcher', '45', '2000-04-23');
INSERT INTO `vet_clinic`.`vets` (`name`, `age`, `date_of_graduation`) VALUES ('Maisy Smith', '26', '2019-01-17');
INSERT INTO `vet_clinic`.`vets` (`name`, `age`, `date_of_graduation`) VALUES ('Stephanie Mendez', '64', '1981-05-04');
INSERT INTO `vet_clinic`.`vets` (`name`, `age`, `date_of_graduation`) VALUES ('Jack Harkness', '38', '2008-01-08');

/* Insert the following data for specialties: */
/* Vet William Tatcher is specialized in Pokemon. */
INSERT INTO `vet_clinic`.`specializations` (`vet_id`, `species_id`) VALUES ('1', '1');
/* Vet Stephanie Mendez is specialized in Digimon and Pokemon. */
INSERT INTO `vet_clinic`.`specializations` (`vet_id`, `species_id`) VALUES ('3', '1');
INSERT INTO `vet_clinic`.`specializations` (`vet_id`, `species_id`) VALUES ('3', '2');
/* Vet Jack Harkness is specialized in Digimon. */
INSERT INTO `vet_clinic`.`specializations` (`vet_id`, `species_id`) VALUES ('4', '2');

/* Insert the following data for visits: */
/* Agumon visited William Tatcher on May 24th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('1', '1', '2020-05-24');
/* Agumon visited Stephanie Mendez on Jul 22th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('1', '3', '2020-07-22');
/* Gabumon visited Jack Harkness on Feb 2nd, 2021. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('2', '4', '2021-02-02');
/* Pikachu visited Maisy Smith on Jan 5th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('3', '2', '2020-01-05');
/* Pikachu visited Maisy Smith on Mar 8th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('3', '2', '2020-03-08');
/* Pikachu visited Maisy Smith on May 14th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('3', '2', '2020-05-14');
/* Devimon visited Stephanie Mendez on May 4th, 2021. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('4', '3', '2021-05-04');
/* Charmander visited Jack Harkness on Feb 24th, 2021. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('5', '4', '2021-02-24');
/* Plantmon visited Maisy Smith on Dec 21st, 2019. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('6', '2', '2019-12-21');
/* Plantmon visited William Tatcher on Aug 10th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('6', '1', '2020-08-10');
/* Plantmon visited Maisy Smith on Apr 7th, 2021. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('6', '2', '2021-04-07');
/* Squirtle visited Stephanie Mendez on Sep 29th, 2019. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('7', '3', '2019-09-29');
/* Angemon visited Jack Harkness on Oct 3rd, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('8', '4', '2020-10-03');
/* Angemon visited Jack Harkness on Nov 4th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('8', '4', '2020-11-04');
/* Boarmon visited Maisy Smith on Jan 24th, 2019. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('9', '2', '2019-01-24');
/* Boarmon visited Maisy Smith on May 15th, 2019. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('9', '2', '2019-05-15');
/* Boarmon visited Maisy Smith on Feb 27th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('9', '2', '2020-02-27');
/* Boarmon visited Maisy Smith on Aug 3rd, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('9', '2', '2020-08-03');
/* Blossom visited Stephanie Mendez on May 24th, 2020. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('10', '3', '2020-05-24');
/* Blossom visited William Tatcher on Jan 11th, 2021. */
INSERT INTO `vet_clinic`.`visits` (`animals_id`, `vet_id`, `visit_date`) VALUES ('10', '1', '2021-01-11');