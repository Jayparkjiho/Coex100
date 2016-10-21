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