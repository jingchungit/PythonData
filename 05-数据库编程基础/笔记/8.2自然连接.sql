#雇员表和部门表的自然连接查询
desc emp;
desc dept;
select * from emp natural join dept;

#1.查询雇员姓名、薪资、部门名称
select ename,sal,dname
from emp natural join dept

#2.查询有奖金的雇员姓名和部门名称
select ename,dname
from emp natural join dept
where comm is not null
