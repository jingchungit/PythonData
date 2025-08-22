show tables;
desc emp_view1;
#修改视图 emp_view1 隐藏sal字段
#1.create or replace
create or replace view emp_view1 as select ename,job,hiredate from emp;
select * from emp_view1;

#2.alter view 
#修改emp_view1 隐藏hiredate
alter view emp_view1 as select ename,job from emp;
select * from emp_view1