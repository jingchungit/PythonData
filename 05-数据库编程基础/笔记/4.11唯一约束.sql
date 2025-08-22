create table student5(
stu_id int not null,
stu_name varchar(20) not null,
gender varchar(1)
)

create table student6(
 stu_id int,
 stu_name varchar(20)
)

#为student6的stu_name 添加not null
alter table student6 modify stu_name varchar(20) not null

#删除非空约束
alter table student6 modify stu_name varchar(20) null;
desc student6;