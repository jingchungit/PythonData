#创建表student7  sex设置默认值  '女'
create table student7(
stu_id int,
stu_name varchar(20),
sex varchar(1) default '女'
)

#给student7表中stu_name 添加默认值约束  '学生'
alter table student7 modify stu_name varchar(20) default '学生'

#删除student7表中stu_name的默认值约束
alter table student7 modify stu_name varchar(20);

desc student7;