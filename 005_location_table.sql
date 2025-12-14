CREATE TABLE location (
  	location_id uuid PRIMARY KEY,
	street_address text,
	city text,
	state_province text,
	zip_code text,
	apartment text,
	country text,
	coords point
);