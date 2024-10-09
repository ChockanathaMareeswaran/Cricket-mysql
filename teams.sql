SELECT * FROM zim_afro_t10.teams;
-- create Table

CREATE TABLE `zim_afro_t10`.`teams` (
  `Team_id` INT NOT NULL AUTO_INCREMENT,
  `Team_Name` VARCHAR(45) NOT NULL,
  `Coach` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Team_id`));
  
  -- values
  
insert into teams values('1','NYS Lagos','Chaminda Vaas');
insert into teams values('2','Bulawayo Brave Jaguars','Owais Shah');
insert into teams values('3','Joburg Bangala Tigers','Julian Wood');
insert into teams values('4','Durban Wolves','Moin Khan');
insert into teams values('5','Cape Town Samp Army','James Foster');
insert into teams values('6','Harare Bolts','Pubudu Dassanayake');

--
ALTER TABLE `zim_afro_t10`.`teams` 
CHANGE COLUMN `Team_id` `Team_id` INT NOT NULL ;
