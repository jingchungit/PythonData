#创建外键约束
#学生表(从表)  班级表(主表)
create table t_class(
 c_no int primary key auto_increment,
 c_name varchar(20),
 c_loc varchar(30)
)

create table t_stu(
 s_no int primary key auto_increment,
 s_name varchar(20),
 age int(2),
 c_no int,
 constraint fk_class_stu_cno foreign key(c_no) references t_class(c_no)
)
#创建表tt_stu
create table tt_stu(
 s_no int primary key auto_increment,
 s_name varchar(20),
 c_no int
)
#给表tt_stu添加外键约束
alter table tt_stu add constraint fk_class_stu_c_no foreign key(c_no)
references t_class(c_no)


#删除外键约束
alter table t_stu drop foreign key fk_class_stu_cno

show create table t_stu;

#删除表 t_class
drop table t_class #有tt_stu的外键关联不允许删除
#删除tt_stu表中的外键
alter table tt_stu drop foreign key fk_class_stu_c_no

drop table t_class