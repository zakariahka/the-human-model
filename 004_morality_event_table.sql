CREATE TABLE person_death (
	person_id uuid PRIMARY KEY REFERENCES person(person_id),
	date_date timestamp,
	cause text,
	death_location uuid REFERENCES location(location_id)
);