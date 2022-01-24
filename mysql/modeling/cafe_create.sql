use world;

show tables;

-- 주석

-- 테이블 생성
create table member(
seq int,
neme varchar(100),
id varchar(100),
regdate datetime
);

create table member2 (
 seq int,
 name varchar(100),
 id varchar(100),
 regdate datetime
);

-- 테이블 삭제

drop table member2;
drop table member;
drop table member;

-- 잊지 말고 꼭 하기
use world;


create table cafe(
seq int,
cafename varchar(100),
tablenum int(100),
chairnum int(100),
adress varchar(150),
area varchar(150),
ceoname varchar(100)
);

drop table cafe;

create table cafe(
seq int,
cafename varchar(100),
tablenum int,
chairnum int,
adress varchar(150),
area varchar(150),
ceoname varchar(100)
);

drop table cafe;