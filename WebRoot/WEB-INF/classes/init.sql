create database easyui;
use easyui;

CREATE TABLE e_organization (
  id INT(11),
  name VARCHAR(20)
);

CREATE TABLE e_user(
	id int primary key not null auto_increment,
	username varchar(10),
	orgname  varchar(10),
	state    varchar(10),
	loginname  varchar(20),
	ctime    date,
	orgId varchar(50),
	note  varchar(100)
);

insert into e_organization values(1,'总经办');
insert into e_organization values(2,'开发部');
insert into e_organization values(3,'测试部');

insert into e_user values('1','zhangsan','总经办','可用','zhangsan','2014-01-01','1','无');
insert into e_user values('2','just do it','测试部','可用','lisi','2014-01-01','3','');
insert into e_user values('3','牛牛','开发部','可用','niuniu','2014-01-01','2','技术大牛');

insert into e_user values('4','牛1','开发部','可用','niuniu','2014-01-01','2','技术大牛');
insert into e_user values('5','牛2','开发部','可用','niuniu','2014-01-01','2','技术大牛');
insert into e_user values('6','牛3','开发部','可用','niuniu','2014-01-01','2','技术大牛');
insert into e_user values('7','牛4','开发部','可用','niuniu','2014-01-01','2','技术大牛');
insert into e_user values('8','牛5','开发部','可用','niuniu','2014-01-01','2','技术大牛');
insert into e_user values('9','牛6','开发部','可用','niuniu','2014-01-01','2','技术大牛');
insert into e_user values('10','牛7','开发部','可用','niuniu','2014-01-01','2','技术大牛');
insert into e_user values('11','牛8','开发部','可用','niuniu','2014-01-01','2','技术大牛');

---------------------
--栏目表
CREATE TABLE e_column(
  id VARCHAR(20) PRIMARY KEY,
  NAME VARCHAR(20),
  state VARCHAR(1),
  parentId VARCHAR(20)
);




create table e_article(
   id INT(11) NOT NULL AUTO_INCREMENT
   name varchar(30),
   abstract varchar(150),
   content clob,
   state INT(11) DEFAULT NULL,
   isnew int,
   ishot int,
   filename varchar(256),
   realname varchar(256),
   filepath varchar(256),
   note  VARCHAR(300) DEFAULT NULL,
   ctime TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
   utime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)

