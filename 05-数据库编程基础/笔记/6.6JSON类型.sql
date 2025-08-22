#JSON类型
create table test_json(
 content json
)

#插入json数组
insert into test_json values('["aa",20,3.14,"zs"]');
#插入json对象
insert into test_json values('{"userName":"lisi","age":23,"gender":"woman"}')

select * from test_json;