#一.修改root用户的密码
#1.使用alter user修改密码
alter user 'root'@'localhost' identified by '123'

#2.使用SET语句修改root用户的密码
set password='root'

#二.root用户修改普通用户的密码
#创建一个普通用户
select * from user;
create user 'test3'@'localhost' identified by 'test3'
#(1)使用SET语句修改普通用户的密码
set password for 'test3'@'localhost' = '123'
#(2)ALTER USER语句修改普通用户的密码
alter user 'test3'@'localhost' identified by 'test3'

#三.普通用户修改自己的密码
#使用set语句修改自己的密码



