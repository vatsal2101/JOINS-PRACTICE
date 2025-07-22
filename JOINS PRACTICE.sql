#Courses Table Creation

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);


#Student Table Creation

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

#Courses Table Input

INSERT INTO Courses(course_id,course_name)VALUES(1,"MSCIT"),(2,"MCA"),(3,"MSCIT"),(4,"MCA"),(5,"MSCIT");

#Student Table Input

INSERT INTO Students(student_id,name,course_id)VALUES(101,"vatsal",1),(102,"vansh",2),(103,"harshil",3),(104,"moksha",4),(105,"shanya",5);

#Courses Table Output

select * from Courses;

+-----------+-------------+
| course_id | course_name |
+-----------+-------------+
|         1 | MSCIT       |
|         2 | MCA         |
|         3 | MSCIT       |
|         4 | MCA         |
|         5 | MSCIT       |
+-----------+-------------+

#Students Table Output

select * from Students;
+------------+---------+-----------+
| student_id | name    | course_id |
+------------+---------+-----------+
|        101 | vatsal  |         1 |
|        102 | vansh   |         2 |
|        103 | harshil |         3 |
|        104 | moksha  |         4 |
|        105 | shanya  |         5 |
+------------+---------+-----------+

#Inner Join

select Students.name,Courses.course_name 
from Students 
inner join Courses on Students.course_id=Courses.course_id;

#Inner Join Output

+--------+-------------+
| name   | course_name |
+--------+-------------+
| shanya | MSCIT       |
| karan  | MCA         |
| vatsal | MSCIT       |
| heer   | MCA         |
| jimmy  | MSCIT       |
+--------+-------------+

#Left Join

select Students.name,Courses.course_name 
from Courses 
left join Students  on Students.course_id=Courses.course_id;

#Left Join Output

+---------+-------------+
| name    | course_name |
+---------+-------------+
| vatsal  | MSCIT       |
| vansh   | MCA         |
| harshil | MSCIT       |
| moksha  | MCA         |
| shanya  | MSCIT       |
+---------+-------------+


#Right Join

select Students.name,Courses.course_name 
from Students 
right join Courses on Students.course_id=Courses.course_id;

#Right Join Output

+---------+-------------+
| name    | course_name |
+---------+-------------+
| vatsal  | MSCIT       |
| vansh   | MCA         |
| harshil | MSCIT       |
| moksha  | MCA         |
| shanya  | MSCIT       |
+---------+-------------+

#Full Join 

SELECT Students.name, Courses.course_name
FROM Students
LEFT JOIN Courses ON Students.course_id = Courses.course_id

UNION

SELECT Students.name, Courses.course_name
FROM Students
RIGHT JOIN Courses ON Students.course_id = Courses.course_id;

#Full Join Output

+---------+-------------+
| name    | course_name |
+---------+-------------+
| vatsal  | MSCIT       |
| vansh   | MCA         |
| harshil | MSCIT       |
| moksha  | MCA         |
| shanya  | MSCIT       |
+---------+-------------+
