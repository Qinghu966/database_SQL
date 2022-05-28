INSERT into candidates(candidates_id, first_name, last_name, contact_number, is_payment_confirmed)
			   values(1, 'Qinghua', 'Ye', 0672389390, 'True');

INSERT into payment(payment_id, candidates_id)
			values(1, 1);

INSERT into teachers(teachers_id, first_name, last_name, recruited_from, payment, email_address, contact_number, bank_account)
			values(1, 'Thomas', 'Broussard', 'EPITA', 4000, 'thomas.broussard@epita.fr', 0632849687, 
				   7362673673637637);

INSERT into sessions(sessions_id, courses_id, sessions_type, students_group, teachers_id, start_datetime, 
 				end_datetime, sessions_room, students_attendance)
			values(1, 1, 'exams', 1, 1, '2021-10-01 10:00', '2021-12-15 13:00', 604, 1);
			
INSERT into courses(courses_id, courses_name, teachers_id, sessions_id)
			values(1, 'Relational Database', 1, 1);
			
INSERT into programs(programs_id, programs_name, courses_id, programs_duration)
			values(1, 'DSA', 1, '18 months');

INSERT into students(students_id, first_name, last_name, intake_year, intake_semester, students_group,
				payment_id, programs_id)
			values(1, 'Qinghua', 'Ye', '2021', 'Fall', 1, 1, 1);

INSERT into exams(exams_id, courses_id, exams_type, exams_weight, exams_result, students_id)
		values(1, 1, 'project', '0.6', '75.5', 1);
