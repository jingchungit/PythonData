#查询每位员工的姓名、职位、其领导姓名、领导职位，同时要显示没有领导的雇员也要显示
select e.ename,e.job,m.ename,m.job
from emp e inner join emp m
on e.mgr=m.empno 

#左外连接
select e.ename,e.job,m.ename,m.job
from emp e left join emp m
on e.mgr = m.empno

#右外连接
select e.ename,e.job,m.ename,m.job
from emp m right join emp e
on e.mgr = m.empno


#查询所有部门的详细信息及每个部门的平均月薪，包含没有员工的部门，并按照平均月薪由高到低排序。
#右连接
select d.* ,avg(sal)
from emp e right outer join dept d
on e.deptno = d.deptno
group by d.deptno
order by avg(sal) desc

#左连接
select d.*,avg(sal)
from dept d left join emp e
on e.deptno=d.deptno
group by d.deptno
order by avg(sal) desc

