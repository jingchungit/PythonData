select * from emp;

#emp   dept表进行笛卡尔积
select * from emp cross join dept;
select count(*) from emp cross join dept;
/***
总共记录条数：14* 4=56
字段：8 + 3=11
**/