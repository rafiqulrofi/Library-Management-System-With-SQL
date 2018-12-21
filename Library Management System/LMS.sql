
/*****************Create Book Table*****************/

create table Book(

Bookid varchar(50),
Bookname varchar(50) NOT NULL,
Author varchar(50) NOT NULL,
Publication varchar(50),
Subjeect varchar(50),
No_of_page int

primary key(Bookid),

);


select* from [dbo].[Book];


insert into[dbo].[Book] values('15101050','Dipu number two','Muhammed Zafar Iqbal','1992','Interasting',700);

insert into[dbo].[Book] values('15101051','Himo','Humayun Ahmed','1995','Interasting',800);

insert into[dbo].[Book] values('15101052','Chutir din','Rabindranath Tagore','1972','Tragedy',120);

insert into[dbo].[Book] values('15101053','kamolakanto','Saratchandra Chatterjee','1962','Interasting',220);

insert into[dbo].[Book] values('15101054','Kabor','Kazi Nazrul Islam','1952','Tragedy',150);

insert into[dbo].[Book] values('15101055','Chokrobak','Kazi Nazrul Islam','1967','Tragedy',250);

insert into[dbo].[Book] values('15101056','Shiulimala','Kazi Nazrul Islam','1977','Interasting',300);

insert into[dbo].[Book] values('15101057','Gitanjali','Rabindranath Tagore','1910','Tragedy',770);

insert into[dbo].[Book] values('15101058','The Home and the World','Rabindranath Tagore','1916','Tragedy',970);

insert into[dbo].[Book] values('15101059','তাহারেই পড়ে মনে','Sufia Kamal','1956','Interasting',200);

insert into[dbo].[Book] values('15101060','Mother of pearls and other poems','Sufia Kamal','1946','Interasting',150);

insert into[dbo].[Book] values('15101061','Chithi','Sufia Kamal','1936','Interasting',300);



/*****************Create Publisher Table*********************/


create table Publisher(

Publisherid varchar(50),
Firstname varchar(50),
Lastname varchar(50),
Gender varchar(50),
Addresss varchar(50),
Email varchar(50),
Contact varchar(50),


primary key(Publisherid),
Bookid varchar(50)references Book(Bookid),


);

select*from[dbo].[Publisher];



insert into [dbo].[Publisher] values('14101050','Rafiqul','Islam','M','Dhaka','roficse15@gmail.com','01521431918','15101050');

insert into [dbo].[Publisher] values('14101051','Shepon','Das','M','Dhaka','das@gmail.com','01527639471','15101051');

insert into [dbo].[Publisher] values('14101052','Rabindranath','Tagore','M','Kalkata','Tagore@gmail.com','01727639471','15101052');

insert into [dbo].[Publisher] values('14101053','Saratchandra','Chatterjee','M','Kalkata','Chatterjee@gmail.com','01927639474','15101053');

insert into [dbo].[Publisher] values('14101054','Sufia','Kamal','F','Dhaka','Kamal@gmail.com','01927346274','15101054');

insert into [dbo].[Publisher] values('14101055','Kazi Nazrul','Islam','M','Dhaka','Islam@gmail.com','01897346274','15101055');

insert into [dbo].[Publisher] values('14101056','Muhammed Zafar','Iqbal','M','Sylate','Iqbal@gmail.com','01697346274','15101056');

insert into [dbo].[Publisher] values('14101057','Humayun','Ahmed','M','Sylate','Ahmed@gmail.com','01937346274','15101057');













/*******************Create Issue Table*********************/


create table Issue(

Issueid varchar(50),
Issuedate varchar(50),
Returndate varchar(50),
Duedate varchar(50),

primary key(Issueid),

Bookid varchar(50)references Book(Bookid),

);

select*from [dbo].[Issue];


insert into [dbo].[Issue] values('13101050','20-03-2017','05-04-2017','07-05-2017','15101050');

insert into [dbo].[Issue] values('13101051','21-03-2017','06-04-2017','08-05-2017','15101051');

insert into [dbo].[Issue] values('13101052','25-04-2017','08-05-2017','07-05-2017','15101052');

insert into [dbo].[Issue] values('13101053','25-05-2017','20-05-2017','22-05-2017','15101053');

insert into [dbo].[Issue] values('13101054','30-06-2017','15-06-2017','17-06-2017','15101054');

insert into [dbo].[Issue] values('13101055','02-06-2017','17-05-2017','20-06-2017','15101054');

insert into [dbo].[Issue] values('13101056','07-06-2017','25-06-2017','29-06-2017','15101055');

insert into [dbo].[Issue] values('13101057','10-06-2017','25-06-2017','27-06-2017','15101056');

insert into [dbo].[Issue] values('13101058','15-06-2017','30-06-2017','05-07-2017','15101057');

insert into [dbo].[Issue] values('13101059','20-06-2017','04-07-2017','06-07-2017','15101058');

insert into [dbo].[Issue] values('13101060','30-06-2017','15-07-2017','17-07-2017','15101059');

insert into [dbo].[Issue] values('13101061','28-07-2017','10-08-2017','12-08-2017','15101060');

insert into [dbo].[Issue] values('13101062','04-08-2017','20-08-2017','22-08-2017','15101061');







/*****************Create Member Table*********************/


create table Member(


Memberid varchar(50),
Firstname varchar(50),
Lastname varchar(50),
Gender varchar(50),
addresss varchar(50),
Memebertyp varchar(50),
Email varchar(50),

primary key(Memberid),

Issueid varchar(50)references Issue(Issueid),



);



select*from[dbo].[Member];


insert into [dbo].[Member] values ('12101050','rafiqul','Islam','M','Dhaka','A','roficse15@gmail.com','13101050');

insert into [dbo].[Member] values ('12101051','Shafiqul','Islam','M','Dhaka','A','roficse15@gmail.com','13101051');

insert into [dbo].[Member] values ('12101052','Shepon','Das','M','Puran dhaka','A','das@gmail.com','13101052');

insert into [dbo].[Member] values ('12101053','Jakir','Khan','M','Dhaka','B','Khan@gmail.com','13101053');

insert into [dbo].[Member] values ('12101054','Samin','Hosian','M','Comilla','C','hosin@gmail.com','13101054');

insert into [dbo].[Member] values ('12101055','Tamanna','Jakir','F','Dhaka','A','jakir@gmail.com','13101055');

insert into [dbo].[Member] values ('12101056','Mominul','Islam','M','Dhaka','A','rony@gmail.com','13101056');

insert into [dbo].[Member] values ('12101057','Kawasr','Hosain','M','Comilla','B','hosain2@gmail.com','13101057');

insert into [dbo].[Member] values ('12101058','Sharif','Mia','M','Comilla','C','mia@gmail.com','13101058');

insert into [dbo].[Member] values ('12101059','Najim','Uddin','M','Comilla','A','uddin@gmail.com','13101059');

insert into [dbo].[Member] values ('12101060','Najir','Khan','M','Comilla','B','das@gmail.com','13101060');

insert into [dbo].[Member] values ('12101061','Khan','Mia','M','Dhaka','A','khan4@gmail.com','13101061');






/*******************Create Student Table********************/

create table Student(

Studentid varchar(50),
Firstname varchar(50) NOT NULL,
Lastname varchar(50) NOT NULL,
Gender varchar(50),
Section varchar(50),
Semester varchar(50),
Department varchar(50) NOT NULL,

primary key(Studentid),

Memberid varchar(50) references Member(Memberid),
);





select *from[dbo].[Student];


insert into [dbo].[Student] values ('11101050','Rafiqul','Islam','M','B','Spring','CSE','12101050');

insert into [dbo].[Student] values ('11101051','Shepon','Das','M','B','Spring','CSE','12101053');

insert into [dbo].[Student] values ('11101052','Jakir','Hosain','M','A','Fall','EEE','12101054');

insert into [dbo].[Student] values ('11101053','Shafiqul','Islam','M','C','Spring','Arch','12101055');

insert into [dbo].[Student] values ('11101054','Mominul','Islam','M','A','Fall','EEE','12101056');









/********************create Studenlogin Table********************/


create table Studentlogin(

Loginid varchar(50),
Username varchar(50),
Passwordd varchar(50),
Numbooks varchar (50),

primary key(Loginid),

Studentid varchar(50)references Student(Studentid),

);





select* from[dbo].[Studentlogin];



insert into [dbo].[Studentlogin] values ('10101050','rofi','12345','5','11101050');

insert into [dbo].[Studentlogin] values ('10101051','Shepon','87543','2','11101051');

insert into [dbo].[Studentlogin] values ('10101052','Rony','97362','1','11101052');

insert into [dbo].[Studentlogin] values ('10101053','roky','90745','3','11101053');

insert into [dbo].[Studentlogin] values ('10101054','Jakir','97503','2','11101054');






/*******************create Teacher Table******************/


create table Teacher(
Teacherid varchar(50),
Firstname varchar(50) NOT NULL,
Lastname varchar(50) NOT NULL,
Gender varchar(50),
Designation varchar(50),
Department varchar(50),
Email varchar(50),

primary key (Teacherid),

Memberid varchar(50) references Member(Memberid),
);




select* from[dbo].[Teacher];



insert into [dbo].[Teacher] values ('9101050','Nedeem','Ahamed','M','Lecture','CSE','Nadeem@gmail.com','12101051');

insert into [dbo].[Teacher] values ('9101051','Asif','Hossain','M','Lecture','CSE','Hossain@gmail.com','12101057');

insert into [dbo].[Teacher] values ('9101052','Nahida','Chodhury','F','Lecture','CSE','Nahida@gmail.com','12101058');

insert into [dbo].[Teacher] values ('9101053','Shurov','Ahamed','M','Lecture','EEE','Shurov@gmail.com','12101059');

insert into [dbo].[Teacher] values ('9101054','Rafiqul','Islam','M','Lecture','CSE','roficse15@gmail.com','12101060');





/*******************Create Teacherlogin Table******************/



create table Teacherlogin(

Loginid varchar(50),
Username varchar(50),
Passwordd varchar(50),
Numbooks varchar (50),

primary key(Loginid),

Teacherid varchar(50) references Teacher(Teacherid),

);




select* from [dbo].[Teacherlogin];




insert into [dbo].[Teacherlogin] values('8101050','Shepon','12345','6','9101050');

insert into [dbo].[Teacherlogin] values('8101051','Naeem','89739','3','9101051');

insert into [dbo].[Teacherlogin] values('8101052','asif','8976','2','9101052');

insert into [dbo].[Teacherlogin] values('8101053','Nahida','87893','5','9101053');

insert into [dbo].[Teacherlogin] values('8101054','Shurov','98346','1','9101054');






/**************************** Create Exotic Table************************/


create table Exotic(


Exoticid varchar(50),
Firstname varchar(50) NOT NULL,
Lastname varchar(50) NOT NULL,
Gender varchar(50),
Designation varchar(50),
Email varchar(50),

primary key(Exoticid),

Memberid varchar(50) references Member(Memberid),


);


select* from[dbo].[Exotic];


insert into[dbo].[Exotic] values('7101050','Sabrin','Ahamed','F','Teacher','Sabrin@gmail.com','12101052');

insert into[dbo].[Exotic] values('7101051','Rafiqul','Islam','M','Teacher','Islam@gmail.com','12101053');

insert into[dbo].[Exotic] values('7101052','Shanto','Ahamed','M','Student','Ahamed@gmail.com','12101054');

insert into[dbo].[Exotic] values('7101053','Kawsar','Ahamed','M','Student','Ahamed4@gmail.com','12101054');

insert into[dbo].[Exotic] values('7101054','Mominul','Islam','M','Professor','Islam3@gmail.com','12101055');



/******************************Create Eoxtic Login Table*****************************/


Create table Exoticlogin(


Loginid varchar(50),
Username varchar(50),
Passwordd varchar(50),
Numbooks varchar (50),

primary key(Loginid),


Exoticid varchar(50) references Exotic(Exoticid),

);


select* from[dbo].[Exoticlogin];


insert into [dbo].[Exoticlogin] values ('6101050','roky','12345','3','7101050');

insert into [dbo].[Exoticlogin] values ('6101051','Rafiqul','79343','5','7101052');

insert into [dbo].[Exoticlogin] values ('6101052','Mominul','98732','2','7101053');

insert into [dbo].[Exoticlogin] values ('6101053','Shanto','97923','6','7101054');

insert into [dbo].[Exoticlogin] values ('6101054','Jakir','89374','1','7101051');






/******************************Create Eoxtic Registration Table*****************************/


create table Eoxticregistration(


Registrationid varchar(50),
Username varchar(50),
Passwordd varchar(50),

primary key(Registrationid),

Exoticid varchar(50) references Exotic(Exoticid),

);


select* from[dbo].[Eoxticregistration];



insert into [dbo].[Eoxticregistration] values('5101050','rofi','12345','7101050');


insert into [dbo].[Eoxticregistration] values('5101051','Das','74565','7101051');


insert into [dbo].[Eoxticregistration] values('5101052','roky','87654','7101052');


insert into [dbo].[Eoxticregistration] values('5101053','rony','76535','7101053');


insert into [dbo].[Eoxticregistration] values('5101054','jakir','78654','7101054');









/***************************Query***********************/











/*1*****Get all book list from Libray Managment SYstem*******/




select [Bookname] from [dbo].[Book];




/*2**********Total Libray Member and Detailes***************/




select* from [dbo].[Member] as All_Member;




/*3******* Delete Member from Libray Managment SYstem*********/




delete from [dbo].[Member] where [Memberid] ='12101061';



/*4*********************UpdaterMember from Libray Managment SYstem*********/



insert into [dbo].[Member] values ('12101063','rafiqul','Islam','M','Dhaka','A','roficse15@gmail.com','13101057');




/*5******Get  Members Of Libray Managment SYstem and First name one letter ********/



select* from[dbo].[Student] where [Firstname] Like '%a%';
select* from[dbo].[Exotic] where[Firstname] Like '%a%';
select*from [dbo].[Teacher] where [Firstname] Like '%a%';




/*6*********Forgote Password Student *****************/



select[Passwordd]as Your_Password from[dbo].[Studentlogin] where [Username]='rofi';




/*7*********Forgote Password Teacher *****************/



select[Passwordd]as Your_Password from[dbo].[Teacherlogin] where [Username]='asif';



/*8*********Forgote Password Exotic *****************/



select[Passwordd]as Your_Password from[dbo].[Exoticlogin] where [Username]='shanto';




/*9********************Forgot Username Student********************/



select[Username]as Your_Username from [dbo].[Studentlogin] where [Passwordd]='12345';



/*10********************Forgot Username Teacher********************/


select[Username]as Your_Username from [dbo].[Teacherlogin] where [Passwordd]='8976';  


/*11********************Forgot Username Exotic********************/ 



select[Username]as Your_Username from [dbo].[Exoticlogin] where [Passwordd]='97923';




/*12********************Exotic Registration************************/



insert into [dbo].[Eoxticregistration] values('5101055','rofi','12345','7101053');



/*13******************All Publisher ***********************/



select distinct[Author] as Author_List from [dbo].[Book];




/*14****************** Issue Delete******************/



delete from[dbo].[Issue] where [Issueid]='13101062';



/*15******************Find One Member and Detailes**************/




select* from[dbo].[Member] where [Memberid]='12101050';




/*16*****************find out Number of Student Member list***************/



select* from[dbo].[Student];




/*17*****************find out Number of Exotic Member list***************/



select* from[dbo].[Exotic];



/*18*****************find out Number of Teacher member list***************/



select* from[dbo].[Teacher];




/*19***********************Count BOOK*****************************/



select count(No_of_page) as Total_Book from [dbo].[Book];



/*20*******************ALL Issue Book  date and Returndate******************/



select[Issuedate],[Returndate] from[dbo].[Issue] ;




/*21*******************Male Female Member separate list**************/




select [Firstname], case when [Gender]='M' then 'Male' when [Gender] ='F' then 'Femal' end as [Gender] from [dbo].[Member];



/*22***********************Find out Id Who are take book from LMS***************/


select[Issueid] from [dbo].[Issue];


/*23******************find out Duedate Book and Book id*****************/


select[Bookid],[Duedate] from [dbo].[Issue];



/*24*********************find out Book search bar**************/



select[Bookname] from [dbo].[Book]  where [Bookname]='Dipu number two' and [Author]='Muhammed Zafar Iqbal'; 



/*25*************************find out Author book list*********************/



select [Bookname] from [dbo].[Book]where [Author]='Kazi Nazrul Islam';


/*26********************************find out book by Author***************************/


select [Bookname] from [dbo].[Book] where [Author]='Rabindranath Tagore';


/*27**************************Find out book bye Book name****************/


select[Bookname] from [dbo].[Book] where [Bookname]='Dipu number two';




/**********************************************************/








