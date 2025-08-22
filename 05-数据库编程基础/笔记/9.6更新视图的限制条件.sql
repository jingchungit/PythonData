#(1)视图中包含多行函数，如SUM()、MIN()、MAX()、COUNT()等。
create view view1 as select max(sal) max_sal from emp
select * from view1
#insert
insert into view1 values(10000)
#update
update view1 set max_sal=10000
#delete
delete from view1;

#(2)视图中包含DISTINCT、GROUP BY、HAVING、UNION或者UNION ALL关键字。
create view view2 as select deptno,max(sal) max_sal from emp group by deptno
select * from view2
update view2 set max_sal=10000 where deptno=10

#(3)视图中的SELECT语句包含子查询。
create view view3 as select ename,sal from emp where sal>(select avg(sal) from emp)

select * from view3
insert into view3 values('lili',10000)
#(4)视图引用的只是文字值（也成为常量视图，这种情况下，根本没有要更新的基础表）。
create view view4 as select PI() pi
select * from view4
update view4 set pi=1234

#(5)视图是根据不可更新视图构建的。
create view view5 as select * from view3
select * from view5
delete from view5 where ename='jones'
