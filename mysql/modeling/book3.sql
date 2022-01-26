use world;

CREATE TABLE IF NOT EXISTS `book4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review4` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book4_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`),
  INDEX `fk_review_book4_idx` (`book4_no` ASC) VISIBLE,
  CONSTRAINT `fk_review_book4`
    FOREIGN KEY (`book4_no`)
    REFERENCES `book4` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc book4;

-- 1 이것이자바다 1
-- 2 프로그래밍가이드북
-- 3 안드로이드 3
-- 4차산업혁명의원리 4

insert into book4(
name
) values (
'4차산업혁명의원리'
);

select * from book4;
desc book4;
desc review4;

desc review4;

insert into review4(
comment
, book4_no
) values (
'책이 너무 유익하고 재미있어요.'
, 1
);

drop table review4;

CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review5_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review5_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- 1 이것이자바다 1
-- 2 프로그래밍가이드북
-- 3 안드로이드 3
-- 4차산업혁명의원리 4


insert into book5(
name
) values (
'sqlplus'
);

select * from book5;

desc book5;
desc review5;

desc review5;

insert into review5(
comment
, book5_no
) values (
'책이 너무 유익ㅋㅋ.'
, 2
);

drop table review5;

-- 점선 : nonidentifying : 부모 자식 관계, 개발하기 좀 불편하다
-- 실선 : identifying : ???? : 개발용이성이 높다

select * from book5;

select
a.name
, b.comment
from book5 a
left join review5 b on b.book5_no = a.no;

select
a.name
, b.comment
from book5 a
inner join review5 b on b.book5_no = a.no;

-- 리뷰 카운트
select
a.name
-- , b.comment
, (select count(*) from review5 where book5_no = a.no) as count
from book5 a;