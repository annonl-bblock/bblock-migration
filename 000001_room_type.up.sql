CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE roomtypes (
	id          uuid            UNIQUE DEFAULT UUID_GENERATE_V4(),
	name        text            NOT NULL,
	capacity    int             NOT NULL CHECK(capacity > 0),
	description text            NOT NULL,
	square      float           NOT NULL CHECK(square > 0),
	images      text[]          NOT NULL,
	price       decimal(18, 2)  NOT NULL CHECK(price > 0),

    PRIMARY KEY(id)
)