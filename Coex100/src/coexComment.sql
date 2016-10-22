create table member(
	mem_num number primary key,
	mem_id varchar2(20) not null,
	mem_pw varchar2(20) not null,
	mem_name varchar2(20) not null,
	mem_phone varchar2(30) not null,
	mem_email varchar2(40) not null
);

CREATE SEQUENCE seq_mem_num;


create table ANSWER(
perpose varchar2(100) primary key,
sex char(1) not null,
age varchar2(50) not null,
people varchar2(50),
relation varchar2(50),
baby varchar2(50),
transport varchar2(50) not null,
starttime varchar2(50) not null,
endtime varchar2(50) not null
)



create sequence seq_place;

create table place (
	place_num varchar2(10) primary key ,
	place_name varchar2(50) not null,
	place_loc varchar2(30) not null,
	place_info varchar2(100) not null,
	place_price number(20) not null,
	place_like number(10) default 0,
	place_time varchar2(20) not null,
	place_picture varchar2(500) not null,
	place_runtime varchar2(100) not null,
	place_cate varchar2(500) not null,
	place_menu varchar2(700) not null
);

drop table place;