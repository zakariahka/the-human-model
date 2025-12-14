CREATE TABLE race (
	person_id UUID REFERENCES person(person_id),
	race_id UUID
);