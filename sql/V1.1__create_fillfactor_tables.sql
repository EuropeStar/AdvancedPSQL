CREATE TABLE fillfacor_50 (
  i integer,
  message varchar(100),
  created date
) WITH (FILLFACTOR = 50);

CREATE TABLE fillfacor_75 (
  i integer,
  message varchar(100),
  created date
) WITH (FILLFACTOR = 75);

CREATE TABLE fillfacor_90 (
  i integer,
  message varchar(100),
  created date
) WITH (FILLFACTOR = 90);

CREATE TABLE fillfacor_100 (
  i integer,
  message varchar(100),
  created date
) WITH (FILLFACTOR = 100);
