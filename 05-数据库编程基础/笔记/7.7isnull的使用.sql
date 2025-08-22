#is [not] null 的使用
select *from emp;
#查询有奖金的雇员姓名，薪资，奖金
select ename,sal,comm from emp where comm is not null;

#查询没有奖金的雇员信息
select * from emp where comm is null;

#没有领导的雇员
select * from emp where mgr is null;