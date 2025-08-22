#查看sxt_student表中有哪些字段
desc sxt_student;
#删除字段address
alter table sxt_student drop address;
/**
修改表结构  alter table  表名称
1.修改表名称  rename to new_table_name
2.修改表的字段数据类型  modify
3.修改表的字段名称  change
4.同时修改字段名称及字段类型  change

5.添加字段    add
6.指定位置添加字段 first after
7.修改字段的顺序

8.删除字段  drop 

*/