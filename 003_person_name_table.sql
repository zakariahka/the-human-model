CREATE TABLE name (
	person_id UUID NOT NULL REFERENCES person(person_id),
	person_name_id UUID PRIMARY KEY,
	first text,
	middle text,
	last text,
	name_type person_name_type,
	start_date timestamp,
	end_date timestamp,
	UNIQUE(person_id, start_date, name_type),
	CHECK(end_date is NULL OR end_date >= start_date)
);