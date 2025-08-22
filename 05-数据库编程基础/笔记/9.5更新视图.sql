#更新视图
#1.在视图中插入数据
create view emp_view4 as select empno,ename,sal,job,hiredate,deptno from emp
show tables;
insert into emp_view4(empno,ename,sal,job,hiredate,deptno) values(1234,'marry',30000,'clerk',sysdate(),10)

select * from emp_view4;
select * from emp;

#2.在视图中修改数据
#修改emp_view4 empno=1234 sal = 20000
update emp_view4 set sal=20000 where empno=1234

select * from emp_view4;

select * from emp;
#在视图中删除数据
delete from emp_view4 where empno=1234
select * from emp_view4;

select * from emp;