CREATE TABLE name (
	person_name_id UUID PRIMARY KEY,
	person_id UUID NOT NULL REFERENCES person(person_id),
	first text,
	middle text,
	last text,
	start_date timestamp,
	end_date timestamp,
	name_type name_type,
	UNIQUE(person_id, start_date, name_type),
	CHECK(end_date is NULL OR end_date >= start_date)
);