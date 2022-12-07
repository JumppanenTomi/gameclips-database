CREATE DATABASE gameclips;
use gameclips;
CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(30) NOT NULL,
  email VARCHAR(60) NOT NULL,
  password VARCHAR(100) NOT NULL,
  role VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE games(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  category VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE clips(
  userId INT NOT NULL,
  title VARCHAR(50) NOT NULL,
  id INT NOT NULL  AUTO_INCREMENT,
  description VARCHAR(100) NOT NULL,
  url VARCHAR(400) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES users(id)
);

CREATE TABLE comments(
  id INT NOT NULL AUTO_INCREMENT,
  comment VARCHAR(400) NOT NULL,
  userId INT NOT NULL,
  clipId INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (clipId) REFERENCES clips(id)
);

CREATE TABLE clipped(
  clipId INT NOT NULL,
  gameId INT NOT NULL,
  PRIMARY KEY (clipId, gameId),
  FOREIGN KEY (clipId) REFERENCES clips(id),
  FOREIGN KEY (gameId) REFERENCES games(id)
);

CREATE TABLE favorited(
  url INT NOT NULL,
  clipId INT NOT NULL,
  userId INT NOT NULL,
  PRIMARY KEY (url),
  FOREIGN KEY (clipId) REFERENCES clips(id),
  FOREIGN KEY (userId) REFERENCES users(id),
  UNIQUE (clipId, userId)
);

CREATE TABLE likes(
  id INT NOT NULL AUTO_INCREMENT,
  clipId INT NOT NULL,
  userId INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (clipId) REFERENCES clips(id),
  FOREIGN KEY (userId) REFERENCES users(id)
);