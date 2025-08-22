#删除数据 delete from table_name where 条件
#删除表student中age<10的
delete from student where age<10;

#删除student表中age>20的并且score<80
delete from student where age>20 and score<90

insert into student(stu_name) values('abc')

#truncate删除数据
create table truncate_test(
 id int primary key auto_increment,
 name varchar(20)
)
insert into truncate_test(name) values('小张'),('小李'),('小宋'),('小郭

#使用truncate删除数据
truncate truncate_test;











