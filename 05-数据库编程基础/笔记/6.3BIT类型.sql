#bit 测试
create table test_bit(
 b bit(6)
)

insert into test_bit values(b'101')
select * from test_bit;