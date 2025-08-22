desc emp
#查询雇员姓名  薪资，领导编号
select ename,sal ,mgr from emp

##查询雇员姓名  薪资，领导编号,领导姓名，薪资
select e.ename,e.sal,e.mgr,m.ename,m.sal
from emp e,emp m
where e.mgr = m.empno

#SQL99
select e.ename,e.sal,e.mgr,m.ename,m.sal
from emp e inner join emp m
on e.mgr=m.empno
