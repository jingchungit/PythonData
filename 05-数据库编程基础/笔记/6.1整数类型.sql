create table test_int(
 id int
)

insert into test_int values(12)
insert into test_int values(-12)

select * from test_int;
create table test_int1(
 id int,
 age int unsigned
)
insert into test_int1 values(123,12)
insert into test_int1 values(-123,12)
insert into test_int1 values(-1234,-12)
insert into test_int1 values(2147483648,4294967295)
insert into test_int1 values(2147483647,4294967296)

select * from test_int1;

create table test_int2(
 id int(4) zerofill
)
insert into test_int2 values(12)
insert into test_int2 values(123);
insert into test_int2 values(1234);
insert into test_int2 values(12345);

create table test_int3(
 id int(4) zerofill
)
insert into test_int3 values(12);
insert into test_int3 values(123);
insert into test_int3 values(1234);
insert into test_int3 values(12345);
select * from test_int3;

/**
1.int默认的是有符号的，如果想定义为无符号则使用 unsigned
2.int(m) m表示显示的宽度，默认是不显示的，如果想显示宽度，需要加zerofill
3.插入int范围外的值时候会报错，Out of range value for column 'age' at row 1
*/