CREATE TABLE Creators (
  id INTEGER PRIMARY KEY ASC,
  creation_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  email TEXT NOT NULL UNIQUE,
  referal_token TEXT UNIQUE,
  lockout BOOLEAN NOT NULL DEFAULT FALSE,
  moderator BOOLEAN NOT NULL DEFAULT FALSE,
  poster_limit INTEGER NOT NULL DEFAULT 3
);

CREATE TABLE Posters (
  id INTEGER PRIMARY KEY ASC,
  creator INTEGER NOT NULL,
  creation_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  url TEXT NOT NULL,
  height INTEGER NOT NULL,
  width INTEGER NOT NULL,
  hash TEXT NOT NULL,
  dead_url BOOLEAN NOT NULL DEFAULT FALSE,
  life_last_checked TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  start_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  end_time TIMESTAMP,
  stopped BOOLEAN NOT NULL DEFAULT FALSE,
  lockout BOOLEAN NOT NULL DEFAULT FALSE,
  FOREIGN KEY(Creator) REFERENCES Creators(id)
);
