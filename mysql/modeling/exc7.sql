use world;

CREATE TABLE IF NOT EXISTS `code` (
  `cdSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cdName` VARCHAR(50) NULL,
  `codeGroup_cgSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`cdSeq`, `codeGroup_cgSeq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_cgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_cgSeq`)
    REFERENCES `codeGroup` (`cgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `codeGroup` (
  `cgSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cgName` VARCHAR(50) NULL,
  PRIMARY KEY (`cgSeq`))
ENGINE = InnoDB;

drop table codeGroup;

insert into codeGroup (
cgName
) values (
'이메일타입구분'
);

insert into code (
cdName
, codeGroup_cgSeq
) values (
''
, '7'
);

SELECT * FROM codeGroup;
SELECT * FROM code;

use seventeen;