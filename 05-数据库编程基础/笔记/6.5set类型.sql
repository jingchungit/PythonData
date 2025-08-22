#set类型
create table test_set(
 s set('aa','bb','cc','dd')
)

insert into test_set values('aa');
insert into test_set values('aa,bb');
insert into test_set values('aa,bb,cc');
insert into test_set values('aa,cc,dd');

insert into test_set values('aa,cc,dd,ee');

select * from test_set;