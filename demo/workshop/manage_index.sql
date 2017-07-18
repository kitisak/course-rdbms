//Create table student

CREATE TABLE student(
  id int primary key auto_increment,
  first_name varchar(100),
  last_name varchar(100),
  class varchar(5)
);

INSERT INTO student VALUES(1, "A1", "B1", "6A");
INSERT INTO student VALUES(2, "A2", "B2", "6A");
INSERT INTO student VALUES(3, "A3", "B3", "6B");
INSERT INTO student VALUES(4, "A4", "B4", "6B");

EXPLAIN select * from student where id =1\G;

EXPLAIN select * from student where class = '6A'\G;

CREATE INDEX by_student_class_idx ON student (class);
