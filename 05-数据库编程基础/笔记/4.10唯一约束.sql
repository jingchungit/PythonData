#创建一张表，为两个字段都加上unique
#列级添加唯一约束
create table student(
stu_id int unique,
stu_name varchar(30) unique,
age int(2)
)

#表级添加唯一约束
create table student2(
 stu_id int,
 stu_name varchar(20),
 gender varchar(1),
 unique(stu_id,stu_name)
)

#为已存在表添加唯一约束
create table student3(
 stu_id int,
 stu_name varchar(20),
 age int(2)
)

#给student3中的stu_id 添加唯一约束
alter table student3 add unique(stu_id);

create table student4(
 stu_id int,
 stu_name varchar(20),
 age int(2)
)

#给student4中stu_id stu_name 添加唯一约束
alter table student4 add unique(stu_id,stu_name)

#删除唯一约束
#删除student3中stu_id
alter table student3 drop index stu_id

#删除student4中unique(stu_id,stu_name)
alter table student4 drop index stu_id;

desc student4;