#1.添加字段（末尾添加）
 #给sxt_student表添加score  字段  类float
alter table sxt_student add score float; 

#查看表结构
desc sxt_student;

#添加address  varchar(50) 到表sxt_student的最前面
alter table sxt_student add address varchar(50) first;

#将sxt_student表中插入  class_name varchar(20) 到 age的后面
alter table sxt_student add class_name varchar(20) after age;


#修改 id字段  到第一位置
alter table sxt_student modify id int first;

#将字段address 放到score字段的后面
alter table sxt_student modify address varchar(50) after score;