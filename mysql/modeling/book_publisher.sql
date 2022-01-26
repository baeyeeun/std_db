use world;

CREATE TABLE IF NOT EXISTS `book2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `publisher` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

insert into book2(
 name
 , publisher_cd 
 ) values('프로그래밍가이드북', 1);
 
 
insert into publisher(
name) values (
 '아이콕스'
 );
 
 select*from book2;
 select*from publisher;
 
 select
 a.no
, a.name
, a.publisher_cd
, b.name
from book2 as a
left join publisher as b on b.no= a.publisher_cd;

-- 테이블 조인을 해야 하면 테이블 이름에 알리아스를 넣는다(alias)

drop table book2;
drop table publisher;

select
a.no
, a.name
, a.publisher_cd
, (select name from publisher where no = a.publisher_cd) as publiser_name
from book2 as a;

select
a.no
,a.name
,a.publisher_cd
,getPublisherName -- 함수
from book2 as a;

-- 조인문
