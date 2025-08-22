#按一个字段分组 按部门号分组
select deptno from emp group by deptno

#按部门号及职位分组
select deptno,job from emp group by deptno,job

#分组查询与分组函数一起使用
#注意：分组查询中如果查询结果中有字段也有分组函数，则查询字段必须是分组字段
#查询雇员表中每个部门人数，薪资总和，平均薪资，最高薪资
select deptno,count(*),sum(sal),avg(sal),max(sal)
from emp
group by deptno

#下面的查询有问题，查询结果中分组字段和分组函数才可以
select deptno,ename,sal,count(*),sum(sal),avg(sal),max(sal)
from emp
group by deptno

#查询雇员表中每个部门人数，薪资总和，平均薪资，最高薪资 ，部门号不是10
select deptno,count(*),sum(sal),avg(sal),max(sal)
from emp
where deptno!=10
group by deptno

#查询雇员表中每个部门人数，薪资总和，平均薪资，最高薪资 ，部门号不是10 部门人数大于5

select deptno,count(*),sum(sal),avg(sal),max(sal)
from emp
where deptno!=10 and count(*)>5
group by deptno

#分组函数作为条件，需要使用having来限定
select deptno,count(*),sum(sal),avg(sal),max(sal)
from emp
where deptno!=10 
group by deptno
having count(*)>5

#查询雇员表中每个部门人数，薪资总和，平均薪资，最高薪资 ，部门号不是10 
#部门人数大于5 且平均薪资大于1000
select deptno,count(*),sum(sal),avg(sal),max(sal)
from emp
where deptno!=10 
group by deptno
having count(*)>5 and avg(sal)>1000

/*
1.查询结果为分组字段和分组函数
2.分组函数作为条件，需要使用having
3.having中限定条件，操作符和where条件中的一样
4.执行过程由先到后依次为：FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY。
5.HAVING子句出现在GROUP BY从句之后，而WHERE子句要出现在GROUP BY从句之前。
*/




