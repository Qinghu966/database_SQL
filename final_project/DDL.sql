create table candidates(
	candidates_id int PRIMARY KEY NOT NUll,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	contact_number int NOT NULL,
	is_payment_confirmed BOOLEAN
);

Create table payment(
	payment_id int primary key not null,
	candidates_id int references candidates(candidates_id)
);

create table teachers(
	teachers_id int primary key not null,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	recruited_from varchar(30),
	payment numeric,
	email_address varchar(40),
	contact_number int,
	bank_account varchar(40)

);

create table sessions(
	sessions_id int primary key not null,
	courses_id int not null,
	sessions_type varchar(40),
	students_group int, 
	teachers_id int references teachers(teachers_id),
	start_datetime timestamp,
	end_datetime timestamp,
	sessions_room int,
	students_attendance int
);

create table courses(
	courses_id int primary key not null,
	courses_name varchar(50) not null,
	teachers_id int references teachers(teachers_id),
	sessions_id int references sessions(sessions_id)
);

create table programs(
	programs_id int primary key not null,
	programs_name varchar(30) not null,
	courses_id int references courses(courses_id),
	programs_duration varchar(20)
);

create table students(
	students_id int primary key not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	intake_year int not null,
	intake_semester varchar(30),
	students_group int not null,
	payment_id int references payment(payment_id),
	programs_id int references programs(programs_id)
);

create table exams(
	exams_id int primary key not null,
	courses_id int references courses(courses_id),
	exams_type varchar(100),
	exams_weight decimal(3,2),
	exams_result numeric,
	students_id int references students(students_id)
);