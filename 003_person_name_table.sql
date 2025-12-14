CREATE TABLE person_name (
	person_id UUID NOT NULL REFERENCES person(person_id),
	person_name_id UUID PRIMARY KEY,
	first_name text,
	middle_name text,
	last_name text,
	name_type person_name_type,
	start_date timestamp,
	end_date timestamp,
	UNIQUE(person_id, start_date, name_type),
	CHECK(end_date is NULL OR end_date >= start_date)
);