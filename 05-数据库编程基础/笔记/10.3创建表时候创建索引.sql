#1.创建表时候创建普通索引
create table stu2(
stu_id int(7),
stu_name varchar(20),
index (stu_id)
)
show index from stu2;

#2.创建表时候创建唯一索引
create table stu3(
 stu_id int(8),
 stu_name varchar(20),
 email varchar(20),
 unique (email)
)
show index from stu3;

#3.创建表时候创建主键索引
create table stu4(
stu_id int(8),
stu_name varchar(20),
primary key (stu_id)
)
show index from stu4;

#4.创建表时候创建全文索引
create table stu5(
stu_id int(8),
stu_name varchar(20),
stu_info text,
fulltext (stu_info)
)

show index from stu5;

#5.创建表时候创建空间索引
create table stu6(
 stu_id int(8),
 stu_name varchar(20),
 stu_loc point not null,
 spatial (stu_loc)
)
show index from stu6;

#6.创建表时候创建复合索引
create table stu7(
 stu_id int(8),
 stu_name varchar(20),
 index (stu_id,stu_name)
)
show index from stu7;