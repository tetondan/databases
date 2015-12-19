CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id int NOT NULL AUTO_INCREMENT,
  createdAt DATETIME NOT NULL DEFAULT NOW(), 
  `text` TEXT, 
  roomname TEXT,
  username TEXT,
  PRIMARY KEY (id)
);


-- USE chat;
-- CREATE TABLE users (
--   id int NOT NULL AUTO_INCREMENT,
--   name TEXT,
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE rooms (
--   id int NOT NULL AUTO_INCREMENT,
--   name TEXT,
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   id int NOT NULL AUTO_INCREMENT,
--   created_at DATETIME NOT NULL DEFAULT NOW(), 
--   msg_text TEXT, 
--   room_id int, 
--   user_id int, 
--   FOREIGN KEY (room_id) REFERENCES rooms (id),
--   FOREIGN KEY (user_id) REFERENCES users (id),
--   PRIMARY KEY (id)
-- );

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

