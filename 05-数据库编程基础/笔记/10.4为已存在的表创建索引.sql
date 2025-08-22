#一.create index
create table student(
stu_id int(8),
stu_name varchar(20),
email varchar(30),
score float,
stu_info text,
stu_loc point not null
)
#(1) 创建普通索引
create index index_stu_id on student(stu_id)
show index from student;

#(2) 创建唯一索引
create unique index index_stu_name on student(stu_name)

#(3) 创建全文索引
create fulltext index index_stu_info on student(stu_info)

#(4) 创建空间索引
create spatial index index_stu_loc on student(stu_loc)

#(5) 创建复合索引
create table student2(
stu_id int(8),
stu_name varchar(20)
)
create index index_stu_id_name on student2(stu_id,stu_name)
show index from student2

#二.alter table
create table student3(
stu_id int(8),
stu_name varchar(20),
email varchar(30),
score float,
stu_info text,
stu_loc point not null
)
#(1) 创建普通索引
alter table student3 add index(score)
show index from student3;
#(2) 创建唯一索引
alter table student3 add unique (email)
#(3) 创建主键索引
alter table student3 add primary key(stu_id)
#(4) 创建全文索引
alter table student3 add fulltext(stu_info)
#(5) 创建空间索引
alter table student3 add spatial (stu_loc)
#(6) 创建复合索引
create table student4(
stu_id int(8),
stu_name varchar(20)
)
alter table student4 add index(stu_id,stu_name)
show index from student4;