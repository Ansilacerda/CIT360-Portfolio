/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  hivefd
 * Created: Jun 23, 2016
 */

CREATE DATABASE eagle_tracker;

USE eagle_tracker;

CREATE TABLE main (
 eagle_id int(10) NOT NULL AUTO_INCREMENT,
 description varchar(200) NOT NULL,
 gender enum('M','F','U') DEFAULT NULL,
 PRIMARY KEY (eagle_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE notes (
 note_id int(10) NOT NULL AUTO_INCREMENT,
 eagle_id int(10) NOT NULL,
 user_id int(10) NOT NULL,
 place_id int(10) NOT NULL,
 note_content varchar(500) DEFAULT NULL,
 PRIMARY KEY (note_id),
 KEY 'notes_fk1' ('user_id'),
 KEY 'notes_fk2' ('eagle_id'),
 KEY 'notes_fk3' ('place_id'),
 CONSTRAINT 'notes_fk1' FOREIGN KEY (user_id) REFERENCES users (user_id),
 CONSTRAINT 'notes_fk2' FOREIGN KEY (eagle_id) REFERENCES main (eagle_id),
 CONSTRAINT 'notes_fk3' FOREIGN KEY (place_id) REFERENCES places (place_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

CREATE TABLE places (
 place_id int(10) NOT NULL AUTO_INCREMENT,
 place varchar(160) NOT NULL,
 description varchar(200) NOT NULL,
 lat float(15,11) NOT NULL,
 lng float(15,11) NOT NULL,
 PRIMARY KEY (place_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8


