#enum 枚举类型
create table test_enum(
 id int primary key auto_increment,
 e1 enum('a','b','c','d')


#插入数据
insert into test_enum(e1) values('a');
insert into test_enum(e1) values('b');
insert into test_enum(e1) values('c');
insert into test_enum(e1) values('d');
insert into test_enum(e1) values('e');

select * from test_enum;