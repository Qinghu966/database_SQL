create role admins 
login
password 'admins1234';
grant select on courses to admins;
grant select on teachers to admins;
grant select on exams to admins;
grant select on sessions to admins;