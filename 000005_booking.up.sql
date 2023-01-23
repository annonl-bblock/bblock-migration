CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE bookings (
	id              uuid    UNIQUE DEFAULT UUID_GENERATE_V4(),
	room_id         uuid    NOT NULL,
	booking_date    date    NOT NULL,
	check_in_date   date    NOT NULL,
	check_out_date  date    NOT NULL,
	user_id         uuid    NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT fk_room
        FOREIGN KEY(room_id) 
        REFERENCES rooms(id),
    CONSTRAINT fk_user
        FOREIGN KEY(user_id) 
        REFERENCES users(id)
)