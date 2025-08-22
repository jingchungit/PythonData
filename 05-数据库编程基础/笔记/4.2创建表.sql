#创建学生表
create table student(
  id int,
	name varchar(30),
	gender varchar(1),
	age int(2)
);

#查看表 student
desc student;
desc t_student;

#查看表的详细结构
show create table student;
show create table t_student;
 