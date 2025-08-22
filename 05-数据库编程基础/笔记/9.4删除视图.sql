#删除视图
show tables;
create view delete_view1 as select ename from emp;
create view delete_view2 as select ename,job from emp;
drop view if exists delete_view1;

#同时删除多个
drop view delete_view1,delete_view2;
