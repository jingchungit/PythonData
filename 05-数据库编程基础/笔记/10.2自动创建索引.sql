#自动创建索引
create table stu(
sno int(8) primary key,
sname varchar(20),
email varchar(20) unique
)

#查看是否自动创建了约束
show index from stu;