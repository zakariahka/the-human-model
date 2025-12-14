CREATE TABLE person_death (
	person_id UUID PRIMARY KEY REFERENCES person(person_id),
	death_date timestamp,
	cause text,
	death_location_id uuid REFERENCES location(location_id)
);