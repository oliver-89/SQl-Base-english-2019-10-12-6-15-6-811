CREATE DATABASE student_examination_sys;
USE student_examination_sys;


CREATE TABLE student(
id VARCHAR(3) PRIMARY KEY,
NAME VARCHAR(20),
age INT,
sex VARCHAR(6))

INSERT INTO student VALUES('001','zhangsan',18,'male');
INSERT INTO student VALUES('002','lisi',20,'female');
SELECT * FROM student


CREATE TABLE SUBJECT(
id VARCHAR(4) PRIMARY KEY,
SUBJECT VARCHAR(20),
teacher VARCHAR(20),
DESCRIPTION VARCHAR(30))

INSERT INTO SUBJECT VALUES('1001','Chinese','Mr. Wang','the exam is easy');
INSERT INTO SUBJECT VALUES('1002','math','Miss Liu','the exam is difficult');
SELECT * FROM SUBJECT


CREATE TABLE score(
id INT PRIMARY KEY AUTO_INCREMENT,
student_id VARCHAR(3),
subject_id VARCHAR(4),
score FLOAT,
FOREIGN KEY(student_id) REFERENCES student(id),
FOREIGN KEY(subject_id) REFERENCES SUBJECT(id)
)

INSERT INTO score VALUES(NULL,'001','1001',80);
INSERT INTO score VALUES(NULL,'002','1002',60);
INSERT INTO score VALUES(NULL,'001','1001',70);
INSERT INTO score VALUES(NULL,'002','1002',60.5);

SELECT * FROM score
