CREATE TABLE morality_event (
	person_id uuid PRIMARY KEY REFERENCES person(person_id),
	date timestamp,
	cause text
);