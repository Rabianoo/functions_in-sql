--scalar function--

create function mymessage()
returns varchar(200)
as

begin
return 'Hello World';

end

select dbo.mymessage()


create function plus(@num1  int , @num2  int)
returns int
as

begin
return (@num1 + @num2)

end
 
  select dbo.plus(2,9)
 select dbo.plus(8,9)



 create function sub(@nu1 int ,@nu2 int )
returns int
as

begin
Declare @res int;
set @res = @nu1 -@nu2

return @res

end

select dbo.sub(4,22);



 ---inline table valued function --

 create table Student(id int, sname varchar(100),gender varchar(100),age int)

 insert into Student values(1,'sana','female',11);
 insert into Student values(2,'Ali','male',12);
 insert into Student values(3,'Tania','female',10);
 insert into Student values(4,'Sheeraz','male',13);

 select *from Student

 create function Today()
 returns table
 as
 return (select sname , age from Student)

 select *from Today();

  create function new(@Mess varchar(200))
 returns table
 as
 return (select *from Student where gender = @Mess)

 select *from new('female');

   



 --Multi statement table valued function --

 create function multi(@age int)
 returns @tbl table (Student_id int, Student_name varchar(50))

 as 
 begin 
 insert into @tbl 
 select id, sname from Student where age = @age

 return

 end
 select *from dbo.multi(11);






 


