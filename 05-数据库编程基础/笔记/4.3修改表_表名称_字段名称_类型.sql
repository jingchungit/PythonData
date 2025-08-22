#1.修改表的名称，将student 名称修改 sxt_student
alter table student rename to sxt_student;

#2查询所有表
show tables;

desc sxt_student;
#3.修改sxt_student表中 name字段的类型  varchar(40)
alter table sxt_student modify name varchar(40);

#4.修改字段名  将sxt_student 表中name修改为stu_name
alter table sxt_student change name stu_name varchar(30);

#5同时修改字段名称和类型  将sxt_student 表中 gender 修改为sex  varchar(5)
alter table sxt_student change gender sex varchar(5);


