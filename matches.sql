SELECT * FROM zim_afro_t10.matches;

-- create table

CREATE TABLE `zim_afro_t10`.`matches` (
  `match_id` INT NOT NULL,
  `date` DATETIME NOT NULL,
  `team1_id` VARCHAR(45) NOT NULL,
  `team2_id` VARCHAR(45) NOT NULL,
  `winner_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`match_id`));

-- Alter Table
ALTER TABLE `zim_afro_t10`.`matches` 
CHANGE COLUMN `team1_id` `team1_id` INT NOT NULL ;

ALTER TABLE `zim_afro_t10`.`matches` 
CHANGE COLUMN `team2_id` `team2_id` INT NOT NULL ;

ALTER TABLE `zim_afro_t10`.`matches` 
CHANGE COLUMN `winner_id` `winner_id` INT NOT NULL ;

-- Foreign Keys
ALTER TABLE `zim_afro_t10`.`matches` 
ADD INDEX `fk_team3_id_idx` (`winner_id` ASC) VISIBLE;
;
ALTER TABLE `zim_afro_t10`.`matches` 
ADD CONSTRAINT `fk_team3_id`
  FOREIGN KEY (`winner_id`)
  REFERENCES `zim_afro_t10`.`teams` (`Team_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `zim_afro_t10`.`matches` 
ADD INDEX `fk_team2_id_idx` (`team2_id` ASC) VISIBLE;
;
ALTER TABLE `zim_afro_t10`.`matches` 
ADD CONSTRAINT `fk_team2_id`
  FOREIGN KEY (`team2_id`)
  REFERENCES `zim_afro_t10`.`teams` (`Team_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `zim_afro_t10`.`matches` 
ADD CONSTRAINT `fk_team1_id`
  FOREIGN KEY (`team1_id`)
  REFERENCES `zim_afro_t10`.`teams` (`Team_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- to add match_type

ALTER TABLE `zim_afro_t10`.`matches` 
ADD COLUMN `match_type` VARCHAR(45) NOT NULL AFTER `winner_id`;

-- update the column values

UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '1');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '2');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '3');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '4');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '5');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '6');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '7');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '8');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '9');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '10');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '11');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '12');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '13');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '14');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '15');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '16');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '17');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '18');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '19');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '20');
UPDATE `zim_afro_t10`.`matches` SET `match_type` = 'Regular' WHERE (`match_id` = '21');

-- values

INSERT INTO `zim_afro_t10`.`matches` (`match_id`, `date`, `team1_id`, `team2_id`, `winner_id`, `match_type`) VALUES ('22', '2024-09-28 06:00:00', '6', '3', '3', 'Qualifier 1');
INSERT INTO `zim_afro_t10`.`matches` (`match_id`, `date`, `team1_id`, `team2_id`, `winner_id`, `match_type`) VALUES ('23', '2024-09-28 08:30:00', '1', '5', '5', 'Eliminator');
INSERT INTO `zim_afro_t10`.`matches` (`match_id`, `date`, `team1_id`, `team2_id`, `winner_id`, `match_type`) VALUES ('24', '2024-09-28 11:00:00', '6', '5', '5', 'Qualifier 2');
INSERT INTO `zim_afro_t10`.`matches` (`match_id`, `date`, `team1_id`, `team2_id`, `winner_id`, `match_type`) VALUES ('25', '2024-09-29 08:30:00', '3', '5', '3', 'Final');

