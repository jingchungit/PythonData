select * from account;

#开启事务
start transaction;

#执行sql
update account set balance=balance-200 where username='张三';
update account set balance=balance+200 where username='李四';

#回滚
rollback;