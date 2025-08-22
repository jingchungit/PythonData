#创建表
create table test_int(
 id int 
)
#插入数据
insert into test_int values(-123)

#创建表 设置无符号int
create table test_int2(
 id int,
 age int unsigned
)

#插入数据
insert into test_int2 values(-11,-11)

#插入超出范围的数值 int的最大值是4294967295
insert into test_int value(4294967296)

#设置长度 这个长度指显示时候的长度，不是设置范围
create table test_int3(
 id int(8),
 age int(2)
)
#插入数据
insert into test_int3 values(101,8)

#ZEROFILL的使用,
create table test_int4(
 id int(8) ZEROFILL,
 age int(2) ZEROFILL
)
#插入数据
insert into test_int4 values(101,8)
#注意 加上ZEROFILL后默认就为无符号
