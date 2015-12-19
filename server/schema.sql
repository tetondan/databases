CREATE DATABASE chat;

USE chat;
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE rooms (
  id INTEGER PRIMARY KEY,
  name TEXT
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INTEGER PRIMARY KEY, 
  msg_text TEXT, 
  room_id INTEGER, 
  user_id INTEGER, 
  FOREIGN KEY (room_id) REFERENCES rooms (id),
  FOREIGN KEY (user_id) REFERENCES users (id),

);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

