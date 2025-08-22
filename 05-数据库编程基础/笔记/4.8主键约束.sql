#主键约束 primary key 
#列级添加主键约束
create table t_student(
 sno int primary key,
 sname varchar(30),
 age int(2)
)
#查看表结构
desc t_student;

#创建tt_student 在表级上添加主键约束
create table tt_student(
   sno int,
	 sname varchar(30),
	 age int(2),
	 gender varchar(1),
	 constraint pk_tt_student_sno primary key(sno)
)

#多个字段联合作为主键（只能添加到表级）
create table ttt_student(
 t_scoll varchar(20),
 t_id int,
 sname varchar(20),
	primary key (t_scoll,t_id)
)
desc ttt_student;



