CREATE TABLE nationality (
	person_id UUID NOT NULL REFERENCES person(person_id),
	country_id UUID NOT NULL REFERENCES country(country_id),
	start_date timestamp NOT NULL,
	end_date timestamp,
	PRIMARY KEY (person_id, country_id, start_date),
	CHECK(end_date is NULL OR end_date >= start_date)
);