CREATE TABLE person (
    person_id UUID PRIMARY KEY,
    birth_date DATE,
	birth_location uuid REFERENCES location(location_id)
);