#查看权限
#1.查看root用户的权限
show grants for 'root'@'localhost'
#创建普通用户

create user 'test4'@'localhost' identified by 'test4' 

show grants for 'test4'@'localhost'
#授予权限
grant select,create,insert,delete,update on *.* to 'test4'@'localhost'

#收回权限
revoke create,insert,delete on *.* from 'test4'@'localhost'

#收回所有权限
revoke all,grant option from 'test4'@'localhost'


