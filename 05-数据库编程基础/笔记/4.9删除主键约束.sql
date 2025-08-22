#创建一张表sxt_student
create table sxt_student(
 sno int,
 sname varchar(30),
 age int(2)
);

#查看表结构
desc sxt_student;
#给sxt_student 添加主键约束
alter table sxt_student add constraint pk_sxt_student_sno primary key(sno)

#将sxt_student表中的主键约束删除掉
alter table sxt_student drop primary key;
 