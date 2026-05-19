show tables;
+------------------------------+
| Tables_in_student_management |
+------------------------------+
| student                      |
+------------------------------+
1 row in set (0.01 sec)

mysql>  desc student;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| student_id   | int         | NO   | PRI | NULL    | auto_increment |
| name         | varchar(20) | YES  |     | NULL    |                |
| age          | int         | YES  |     | NULL    |                |
| phone_number | int         | YES  |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)

mysql> create table feedback(feedback_id int not null primary key auto_increment,student_id int,feedback_date date,instructor_name varchar(20),feedback varchar(100),foreign key(student_id)references student(student_id));
Query OK, 0 rows affected (0.04 sec)

mysql> desc feedback;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| feedback_id     | int          | NO   | PRI | NULL    | auto_increment |
| student_id      | int          | YES  | MUL | NULL    |                |
| feedback_date   | date         | YES  |     | NULL    |                |
| instructor_name | varchar(20)  | YES  |     | NULL    |                |
| feedback        | varchar(100) | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)
