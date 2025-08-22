#4.表子查询
#查询emp表中平均月薪最高的部门的编号和平均月薪。
#查询每个部门平均月薪
select avg(sal),deptno
from emp 
group by deptno

#查询最高平均月薪
select max(avg_sal)
from (select avg(sal) avg_sal,deptno
from emp 
group by deptno) e_sal

#
select avg(sal),deptno
from emp 
group by deptno
having avg(sal) = (select max(avg_sal)
from (select avg(sal) avg_sal,deptno
from emp 
group by deptno) e_sal)

select avg(sal),deptno
from emp 
group by deptno
having avg(sal) like (select max(avg_sal)
from (select avg(sal) avg_sal,deptno
from emp 
group by deptno) e_sal)


