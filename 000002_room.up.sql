CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE rooms (
	id          uuid  UNIQUE DEFAULT UUID_GENERATE_V4(),
	number      int   NOT NULL CHECK (number > 0),
	floor       int   NOT NULL,
  type_id     uuid,
  PRIMARY KEY(id),
  CONSTRAINT fk_roomtypes
    FOREIGN KEY(type_id) 
    REFERENCES roomtypes(id)
)