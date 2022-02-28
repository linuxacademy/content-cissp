create table teachers
	(teacher text, 
	salary int, 
	primary key (teacher),
	);

create table courses
	(course text, 
	teacher text,
	primary key (course)
	foreign key (teacher) references teachers (teacher)
	);

create table students
	(student text,
	gpa float,
	primary key (student),
	);

create table enrolled
	(course text, 
	student text,
	foreign key (course) references course (course)
	foreign key (student) references students (student)
	);
INSERT INTO teachers (teacher, salary) values ('von bane', '40000');
INSERT INTO teachers (teacher, salary) values ('james dan', '42000');
INSERT INTO teachers (teacher, salary) values ('lori mack', '50000');
INSERT INTO teachers (teacher, salary) values ('deon lopez', '39000');
INSERT INTO courses (course, teacher) values ('cs101', 'lori mack');
INSERT INTO courses (course, teacher) values ('ma222', 'von bane');
INSERT INTO courses (course, teacher) values ('cs201', 'james dan');
INSERT INTO courses (course, teacher) values ('en301', 'deon lopez');
INSERT INTO students (student, gpa) values ('alpha jean', '2.7');
INSERT INTO students (student, gpa) values ('bravo jack', '3.8');
INSERT INTO students (student, gpa) values ('pat mills', '3.2');
INSERT INTO students (student, gpa) values ('ryan nole', '3.4');
INSERT INTO enrolled (course, student) values ('cs201', 'pat mills');
INSERT INTO enrolled (course, student) values ('ma222', 'alpha jean');
INSERT INTO enrolled (course, student) values ('cs201', 'ryan nole');
INSERT INTO enrolled (course, student) values ('en301', 'bravo jack');