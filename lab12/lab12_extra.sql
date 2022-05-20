.read lab12.sql

-- Q5
CREATE TABLE greatstudents AS
  SELECT a.date, a.color, a.pet, a.number as number_18, b.number as number_17
  from students as a, students_pt1 as b
  where a.date = b.date and a.color = b.color and a.pet = b.pet;

-- Q6
CREATE TABLE sevens AS
  SELECT students.seven from students, checkboxes
  where students.number = 7 and checkboxes.'7' = 'True' and students.time = checkboxes.time;

-- Q7
CREATE TABLE fa17favnum AS
  SELECT number, COUNT(*) as count 
  from students_pt1
  group by number
  order by count DESC
  limit 1;

CREATE TABLE fa17favpets AS
  select pet, count(*) as cnt
  from students_pt1
  group by pet order by cnt desc limit 10;

CREATE TABLE sp18favpets AS
  select pet, count(*) as cnt
  from students
  group by pet order by cnt desc limit 10;


CREATE TABLE sp18dog AS
  select pet, count(*) as cnt
  from students
  where pet = 'dog'
  group by pet;


CREATE TABLE sp18alldogs AS
  select pet, count(*) as cnt
  from students
  where pet like '%dog%';


CREATE TABLE obedienceimages AS
  select seven, denero, count(*) as cnt
  from students
  where seven = '7'
  group by seven, denero;

-- Q8
CREATE TABLE smallest_int_count AS
  SELECT smallest, count(*) as cnt
  from students
  group by smallest
  order by smallest;
