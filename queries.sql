/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM vet_clinic.animals WHERE name like '%mon'
SELECT name FROM vet_clinic.animals WHERE date_of_birth >= '20160101' AND date_of_birth <= '20191231';
SELECT name FROM vet_clinic.animals WHERE neutered = "1" AND escape_attempts < 3;
SELECT date_of_birth FROM vet_clinic.animals WHERE name = 'Agumon' OR name = 'Pikachu';
SELECT name, escape_attempts FROM vet_clinic.animals WHERE weight_kg > "10.50";
SELECT * FROM vet_clinic.animals WHERE neutered = "1";
SELECT * FROM vet_clinic.animals WHERE name != "Gabumon";
SELECT * FROM vet_clinic.animals WHERE weight_kg >= "10.40" AND weight_kg <= "17.30";