#查看隔离级别
select @@transaction_isolation;
#设置隔离级别
set session transaction isolation level read uncommitted;
set session transaction isolation level read committed;
set session transaction isolation level repeatable read;
set session transaction isolation level serializable;

#开启事务
start transaction;
select * from account;
#转账
update account set balance=balance-200 where username='张三';
update account set balance=balance+200 where username='李四';

insert into account(username,balance) values('赵六',6000)

#提交
commit;
commit;

#回滚




