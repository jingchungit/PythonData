#创建表student8  为主键stu_id 添加自动增长约束
create table student8(
stu_id int primary key auto_increment,
stu_name varchar(20),
score float
)

#创建一张student9
create table student9(
 stu_id int primary key,
 stu_name varchar(20),
 age int(2)
)

#给student9添加自增长约束
alter table student9 modify stu_id int auto_increment;

#删除student9自增长约束
alter table student9 modify stu_id int;

desc student9;