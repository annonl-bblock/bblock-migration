CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users (
	id          uuid    UNIQUE DEFAULT UUID_GENERATE_V4(),
	first_name  text    NOT NULL,
	last_name   text    NOT NULL,
	patronymic  text    NOT NULL,
	comment     text    NOT NULL,
	email       text    NOT NULL,
    role_id     uuid    NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_role
        FOREIGN KEY(role_id) 
        REFERENCES roles(id)
)

