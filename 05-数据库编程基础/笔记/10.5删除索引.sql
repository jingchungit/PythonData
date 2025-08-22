#1使用ALTER TABLE语句删除索引
show index from stu2
alter table stu2 drop index stu_id


#2.使用DROP INDEX语句删除索引
show index from stu3;
drop index email on stu3

show index from stu7
drop index stu_id on stu7;

