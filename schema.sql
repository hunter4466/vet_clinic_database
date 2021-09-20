/* Database schema to keep the structure of entire database. */

CREATE TABLE `vet_clinic`.`animals` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `date_of_birth` DATE NULL,
  `escape_attempts` INT NULL,
  `neutered` BOOLEAN NULL,
  `weight_kg` DECIMAL(2) NULL,
  PRIMARY KEY (`id`));