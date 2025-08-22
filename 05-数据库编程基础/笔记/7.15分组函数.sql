#多行函数
select count(*) from emp;

#雇员表有多少人发奖金
select count(comm) from emp;

#共有几位员工是领导
select distinct(mgr) from emp; #7
select count(distinct(mgr)) from emp;  #6
select count(distinct(ifnull(mgr,0))) from emp;  #7

#sum() avg()
select count(sal),count(distinct(sal)) from emp

select sum(sal),avg(sal),sum(distinct(sal)),avg(distinct(sal)) from emp;

#查询雇员最高薪资，最低薪资
select max(sal),min(sal) from emp

#查询部分10 最高薪资 和最低薪资
select max(sal) ,min(sal) from emp where deptno=10