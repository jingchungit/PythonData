#1.查询雇员姓名、薪资、部门名称
select e.ename,e.sal,d.dname
from emp e inner join dept d
on e.deptno = d.deptno

select e.ename,e.sal,d.dname
from emp e,dept d
where e.deptno = d.deptno
#2.查询雇员姓名、部门编号=20的部门名和所在的位置
select ename,dname,loc
from emp e inner join dept d
on e.deptno=d.deptno
where d.deptno=20

select ename,dname,loc
from emp e ,dept d
where e.deptno=d.deptno and d.deptno=20

#3.查询有奖金的雇员姓名和部门名称
select ename,dname
from emp e inner join dept d
on e.deptno =d.deptno
where comm is not null

select ename,dname
from emp e,dept d
where e.deptno=d.deptno and comm is not null
#4.查询部门名称中第二个字符为a的雇员姓名
select ename,dname
from emp e inner join dept d
on e.deptno = d.deptno
where dname like '_a%'
select dname from dept

select ename,dname
from emp e,dept d
where e.deptno=d.deptno and dname like '_a%'
#5.查询部门中员工个数>5的部门名称
#6.查询员工名和上级的名称