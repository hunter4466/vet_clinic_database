/* Database schema to keep the structure of entire database. */

CREATE TABLE `vet_clinic`.`animals` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `date_of_birth` DATE NULL,
  `escape_attempts` INT NULL,
  `neutered` BOOLEAN NULL,
  `weight_kg` DECIMAL(6,2) NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `vet_clinic`.`animals` ADD `species` VARCHAR(45) NULL;


CREATE TABLE `vet_clinic`.`owners` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(45) NULL,
  `age` INT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `vet_clinic`.`species` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `vet_clinic`.`animals` DROP COLUMN `species`;
ALTER TABLE `vet_clinic`.`animals` ADD `species_id`  INT NULL;
ALTER TABLE `vet_clinic`.`animals` ADD `owner_id` INT NULL;
ALTER TABLE `vet_clinic`.`animals` ADD FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE `vet_clinic`.`animals` ADD FOREIGN KEY (owner_id) REFERENCES owners(id);