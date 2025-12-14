CREATE TABLE person (
    person_id UUID PRIMARY KEY,
    birth_date timestamp,
	birth_location_id uuid REFERENCES location(location_id)
);