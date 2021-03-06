DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS measurements;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE measurements (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  waist INTEGER NOT NULL,
  bust INTEGER NOT NULL,
  hips INTEGER NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);