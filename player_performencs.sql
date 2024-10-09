SELECT * FROM zim_afro_t10.player_performances;

-- create table

CREATE TABLE `zim_afro_t10`.`player_performances` (
  `perforrmance_id` INT NOT NULL,
  `match_id` INT NOT NULL,
  `player_id` INT NOT NULL,
  `runs_scored` VARCHAR(45) NOT NULL,
  `balls_faced` VARCHAR(45) NOT NULL,
  `wickets_taken` VARCHAR(45) NOT NULL,
  `catches` VARCHAR(45) NOT NULL,
  `runouts` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`perforrmance_id`),
  INDEX `fk_match_id1_idx` (`match_id` ASC) VISIBLE,
  INDEX `fk_player_id1_idx` (`player_id` ASC) VISIBLE,
  CONSTRAINT `fk_match_id1`
    FOREIGN KEY (`match_id`)
    REFERENCES `zim_afro_t10`.`matches` (`match_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_player_id1`
    FOREIGN KEY (`player_id`)
    REFERENCES `zim_afro_t10`.`players` (`player_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    -- Alter
    
    ALTER TABLE `zim_afro_t10`.`player_performances` 
DROP COLUMN `runouts`,
DROP COLUMN `catches`;
ALTER TABLE `zim_afro_t10`.`player_performances` 
ADD COLUMN `overs_bowled` VARCHAR(45) NOT NULL AFTER `wickets_taken`;


-- values

UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '1');
UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '2');
UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '3');
UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '5');
UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '4');
UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '6');
UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '7');
UPDATE `zim_afro_t10`.`player_performances` SET `overs_bowled` = '0' WHERE (`perforrmance_id` = '8');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('9', '1', '45', '13', '13', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('10', '1', '44', '23', '7', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('11', '1', '42', '20', '8', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('12', '1', '48', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('13', '1', '46', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('14', '1', '39', '0', '0', '1', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('15', '1', '41', '0', '0', '0', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('16', '1', '40', '0', '0', '1', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('17', '1', '49', '0', '0', '0', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('18', '1', '65', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('19', '1', '60', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('20', '1', '66', '0', '0', '0', '1.4');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('21', '1', '67', '0', '0', '0', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('22', '1', '64', '0', '0', '1', '1');
-- 2nd match
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('23', '2', '74', '18', '8', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('24', '2', '70', '31', '14', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('25', '2', '83', '5', '4', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('26', '2', '77', '4', '4', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('27', '2', '68', '0', '2', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('28', '2', '80', '34', '16', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('29', '2', '75', '8', '12', '01', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('30', '2', '95', '7', '5', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('31', '2', '98', '0', '0', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('32', '2', '91', '6', '5', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('33', '2', '93', '30', '16', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('34', '2', '102', '0', '0', '3', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('35', '2', '100', '0', '0', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('36', '2', '96', '0', '1', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('37', '2', '94', '19', '15', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('38', '2', '89', '1', '2', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('39', '2', '86', '33', '13', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('40', '2', '83', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('41', '2', '81', '0', '0', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('42', '2', '85', '0', '0', '1', '1.3');
-- 3rd match
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('43', '3', '19', '31', '23', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('44', '3', '26', '1', '2', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('45', '3', '20', '12', '8', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('46', '3', '21', '2', '4', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('47', '3', '22', '34', '19', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('48', '3', '25', '16', '4', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('49', '3', '31', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('50', '3', '30', '0', '0', '0', '1.4');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('51', '3', '28', '0', '0', '0', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('52', '3', '30', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('53', '3', '33', '0', '0', '0', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('54', '3', '11', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('55', '3', '12', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('56', '3', '14', '0', '0', '2', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('57', '3', '7', '4', '8', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('58', '3', '4', '51', '26', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('59', '3', '1', '34', '17', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('60', '3', '3', '2', '2', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('61', '3', '6', '11', '5', '0', '0');

INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('62', '4', '96', '1', '4', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('63', '4', '95', '6', '7', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('64', '4', '94', '35', '24', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('65', '4', '86', '47', '16', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('66', '4', '93', '11', '6', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('67', '4', '102', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('68', '4', '91', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('69', '4', '98', '0', '0', '1', '1.2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('70', '4', '92', '0', '0', '1', '1');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('71', '4', '100', '0', '0', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('72', '4', '60', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('73', '4', '65', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('74', '4', '63', '0', '0', '2', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('75', '4', '66', '0', '0', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('76', '4', '67', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('77', '4', '56', '0', '1', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('78', '4', '57', '10', '13', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('79', '4', '51', '58', '29', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('80', '4', '61', '10', '6', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('81', '4', '54', '12', '10', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('82', '5', '4', '81', '32', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('83', '5', '1', '20', '12', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('84', '5', '3', '20', '11', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('85', '5', '6', '9', '5', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('86', '5', '11', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('87', '5', '7', '0', '0', '2', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('88', '5', '14', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('89', '5', '10', '0', '0', '3', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('90', '5', '12', '0', '0', '1', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('91', '5', '48', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('92', '5', '46', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('93', '5', '41', '9', '7', '2', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('94', '5', '38', '6', '3', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('95', '5', '49', '0', '0', '0', '2');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('96', '5', '36', '18', '16', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('97', '5', '45', '13', '8', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('98', '5', '44', '10', '6', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('99', '5', '34', '17', '8', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('100', '5', '40', '5', '10', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('101', '5', '43', '21', '8', '0', '0');
INSERT INTO `zim_afro_t10`.`player_performances` (`perforrmance_id`, `match_id`, `player_id`, `runs_scored`, `balls_faced`, `wickets_taken`, `overs_bowled`) VALUES ('102', '5', '39', '2', '1', '0', '0');

-- Top Run Scorer Batsman
select p.player_name,sum(pp.runs_scored)As Total_Runs from players p join player_performances pp on
p.player_id=pp.player_id group by p.player_name order by Total_Runs desc limit 10; 

-- Top Wickets Taken batsman

select p.player_name,sum(wickets_taken)As Total_Wickets from players p join player_performances pp
on p.player_id=pp.player_id group by player_name having Total_Wickets > 1 order by Total_Wickets desc limit 5;

-- Using Stored Procedure for calculating the matches result

delimiter $$
create procedure getmatchdetails()
begin
	select m.match_id,m.date,
    t1.team_name As Team1_name,
    t2.team_name As Team2_name,
    w.team_name As Winner
    from matches m
    join teams t1 on m.team1_id =t1.team_id
    join teams t2 on m.team2_id=t2.team_id
    join teams w on m.winner_id=w.team_id;
end $$
delimiter ;

call getmatchdetails();

-- craete a views for gettig best all Rounder

create view allrounderview As 
select p.player_name,sum(pp.runs_scored) As Total_runs,
sum(pp.wickets_taken)As Total_Wickets from players p join
player_Performances pp on p.player_id=pp.player_id
where p.role='All_Rounder' group by p.player_name
having Total_runs>1 And Total_wickets>1
order by total_runs desc; 
select * from allrounderview;

-- To FInd the best Stricker of the match

select p.player_name,sum(pp.runs_scored)As Total_Runs,sum(pp.balls_faced)As Total_balls,
case when sum(pp.balls_faced)=0 Then 0
else sum(pp.runs_scored)*100 / sum(pp.balls_faced)
end As Strike_Rate from players p join player_performances pp on
p.player_id=pp.player_id where runs_scored > 0 group by p.player_name order by Strike_Rate desc;

-- To Find the Specific Match

select m.match_id,
t1.team_name As Team1_name,
t2.team_name As Team2_name,
w.team_name As Winner
from matches m
join teams t1 on m.team1_id=t1.team_id
join teams t2 on m.team2_id=t2.team_id
join teams w on m.winner_id=w.team_id
where m.date='2024-09-22 08:30:00';

