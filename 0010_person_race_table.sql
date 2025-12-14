CREATE TABLE person_race (
  person_id uuid NOT NULL REFERENCES person(person_id),
  race_id uuid NOT NULL REFERENCES race(race_id),
  PRIMARY KEY (person_id, race_id)
);