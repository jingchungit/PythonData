#日期时间函数
#获取当前时间
#curdate()日期  curtime()时间   now()日期时间  sysdate() 执行该函数时的日期时间
select curdate(),curtime(),now(),sysdate()

select now() ,sleep(3),sysdate()

#DAYOFYEAR()
select dayofyear(now())

#week()
select week(now())

#date_format(date,format)
select date_format(now(),'%Y-%m-%d %H:%i:%s')

#date_add(date,interval)
select now(),date_add(now(),interval 1 HOUR)
select now(),date_add(now(),interval 1 year)

select now(),date_add(now(),interval '1_2' YEAR_MONTH)

#date_sub(date,interval)
select now(),date_sub(now(),interval '1_2' HOUR_MINUTE)

#datediff(date1,date2)
select datediff(now(),'2020-10-1')




