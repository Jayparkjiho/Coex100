create table member(
	mem_num number primary key,
	mem_id varchar2(20) not null,
	mem_pw varchar2(20) not null,
	mem_name varchar2(20) not null,
	mem_phone varchar2(30) not null,
	mem_email varchar2(40) not null
);

CREATE SEQUENCE seq_mem_num;