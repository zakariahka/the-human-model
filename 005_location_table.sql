CREATE TABLE location (
  	location_id UUID PRIMARY KEY,
	street_address text,
	city text,
	state_province text,
	zip_code text,
	apartment text,
	country_id UUID REFERENCES country(country_id),
	coords point
);