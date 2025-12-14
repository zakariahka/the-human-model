CREATE TABLE education (
	education_id UUID PRIMARY KEY,
	person_id UUID NOT NULL  REFERENCES person(person_id),
	degree degree_type NOT NULL,
	start_date timestamp,
	end_date timestamp,
	school_id UUID REFERENCES school(school_id),
	CHECK(end_date is NULL or end_date >= start_date)
);