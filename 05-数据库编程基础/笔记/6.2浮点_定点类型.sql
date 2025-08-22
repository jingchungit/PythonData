#测试 float double decimal
create table test_f(
 f1 float(5,2),
 f2 double(5,2),
 f3 decimal(5,2)
)
insert into test_f values(123.456,123.456,123.456)
insert into test_f values(123.4567,123.4567,123.4567
#m,d  m 整数位数+小数位数   d 小数位数
insert into test_f values(1123.4567,1123.4567,1123.4567)
select * from test_f;

#decimal 如果没有指定(m,d) 默认m的值10  d为0及不保存小数只保存整数
create table test_f1(
 f1 float,
 f2 double,
 f3 decimal
)
insert into test_f1 values(123.456,123.456,123.456)
select * from test_f1;

