CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE roles (
	id              uuid    UNIQUE DEFAULT UUID_GENERATE_V4(),
	name            text    NOT NULL,
    normalizedName  text    NOT NULL,           
    PRIMARY KEY(id)
);

INSERT INTO roles (name, normalizedName) VALUES
    ('Guest', 'GUEST'),
    ('Administrator', 'ADMINISTRATOR');