#1.使用DROP USER语句删除普通用户
drop user 'test1'@'localhost'
select * from user;

#2.使用DELETE语句删除普通用户
create user 'test11'@'localhost' identified by 'test11'

delete from user where user='test11' and host='localhost'
