CREATE TABLE citizenship (
	person_id UUID NOT NULL REFERENCES person(person_id),
	country_id UUID NOT NULL REFERENCES country(country_id),
	start_date timestamp,
	end_date timestamp,
	PRIMARY KEY (person_id, country_id, start_date),
);