CREATE TABLE nationality (
	person_id UUID NOT NULL REFERENCES person(person_id),
	country_id UUID NOT NULL REFERENCES country(country_id),
	PRIMARY KEY (person_id, country_id)
);