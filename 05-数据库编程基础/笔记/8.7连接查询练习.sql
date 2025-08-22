#1.查询雇员姓名、部门号、部门名称（分别使用SQL92和SQL99完成）
select e.ename 雇员姓名 ,e.deptno 部门号,d.dname 部门名称
from emp e,dept d
where e.deptno = d.deptno

select e.ename ,e.deptno,d.dname
from emp e inner join dept d
on e.deptno = d.deptno

#2.查询部门编号为30的所有职位的唯一列表，同时显示部门位置，及部门号
select distinct e.job ,d.loc,d.deptno
from emp e join dept d
on e.deptno = d.deptno
where e.deptno=30


#3.显示所有在雇员姓名中有a的雇员姓名和部门名称
select e.ename,d.dname
from emp e inner join dept d
on e.deptno = d.deptno
where e.ename like '%a%'


#4.使用内连接写一个查询显示工作在New York的所有雇员姓名、职位、部门名称
select e.ename,e.job,d.dname
from emp e inner join dept d
on e.deptno = d.deptno
where d.loc ='new york'


#5.显示雇员的姓名、雇员号及他们领导的姓名和领导号
select e.ename 雇员姓名,e.empno 雇员号,m.ename 领导姓名,m.empno 领导号
from emp e inner join emp m
on e.mgr = m.empno

#6.查询所有雇员的领导包括雇员king，他没有领导。显示雇员号、雇员姓名和领导号、领导姓名，使用雇员号升序排序

select e.ename 雇员姓名,e.empno 雇员号,m.ename 领导姓名,m.empno 领导号
from emp e left join emp m
on e.mgr = m.empno
order by e.empno asc


#7.显示所有雇员的姓名和入职日期，他们在他们领导之前进入公司，连同他们的领导的姓名和入职日期一起显示。
select e.ename 雇员姓名 ,e.hiredate 雇员入职日期,m.ename 领导姓名,m.hiredate 领导入职日期
from emp e join emp m
on e.mgr = m.empno
where e.hiredate <m.hiredate



























