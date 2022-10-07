.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" and pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" and pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT s1.pet, s1.song , s1.color, s2.color
  FROM students as s1, students as s2
  WHERE s1.pet = s2.pet and s1.song = s2.song and s1.time < s2.time;
