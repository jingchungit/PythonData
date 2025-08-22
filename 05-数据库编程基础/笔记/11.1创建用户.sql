#使用CREATE USER语句创建普通用户
#创建一个只能在本地登录的普通用户，该用户名为“test1”，密码为“test1”。

create user 'test1'@'localhost' identified by 'test1'
select * from user;