#查询员工编号大于其领导编号的所有员工的编号、姓名、职位、领导编号、领导姓名、领导职位。
select e.ename,e.empno,e.job,m.ename,m.empno,m.job
from emp e,emp m
where e.mgr=m.empno and e.empno>e.mgr

#join on 
select e.empno,e.ename,e.job,m.empno,m.ename,m.job
from emp e inner join emp m
on e.mgr = m.empno and e.empno>e.mgr