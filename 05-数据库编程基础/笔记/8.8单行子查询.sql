#1.标量子查询
#查询emp表中月薪比员工“Clark”高的员工信息。
#1.员工“Clark”的薪资
select sal from emp where ename='clark'

#查询薪资比2450高的雇员信息
select * from emp where sal>(select sal from emp where ename='clark')

#查询emp表中受雇日期早于“scott”的雇员信息
#查询“scott”的入职日期
select hiredate from emp where ename='scott'
#查询emp表中受雇日期早于1987-04-19的雇员信息
select * from emp where hiredate<(select hiredate from emp where ename='scott')

#查询所有薪资高于平均薪资的雇员姓名，职位，薪资
#平均薪资
select avg(sal) from emp
#高于2073.214286的雇员姓名，职位，薪资
select ename,job,sal from emp where sal>(select avg(sal) from emp)

#显示职位与雇员7788相同的，并且薪水高于7499的雇员信息,雇员不包括7788
#雇员7788的职位
select job from emp where empno=7788
#7499的雇员的薪资
select sal from emp where empno=7499

select * from emp 
where job =(select job from emp where empno=7788)
and sal>(select sal from emp where empno=7499)
and empno !=7788



#2.行子查询
#查询emp表中职位与部门与员工“Allen”相同的员工信息。
#员工“Allen”的职位和部门
select job,deptno from emp where ename='allen'

select * from emp where (job,deptno) =(select job,deptno from emp where ename='allen')





