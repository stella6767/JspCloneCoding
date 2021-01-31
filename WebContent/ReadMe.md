## 클론코딩 개인 프로젝트(부산시 한정 망고플레이트 구현)

**데이터베이스 구현** 


```
create user 'mangouser'@'%' identified by 'bitc5600';
GRANT ALL PRIVILEGES ON *.* TO 'mangouser'@'%';
create database mangodb;


create table matzip(
	id int PRIMARY key AUTO_INCREMENT,
    title VARCHAR(100),
    gugun VARCHAR(100),
    lat FLOAT,
    lng FLOAT,
    place VARCHAR(100),
    addr VARCHAR(100),
    tel VARCHAR(100),
    url VARCHAR(100),
    usagetime VARCHAR(100),
    menu VARCHAR(100),
    mainimg VARCHAR(100),
    subimg VARCHAR(100),
    fooddesc VARCHAR(200),
    rate FLOAT,
    readCount int DEFAULT 0
);

CREATE TABLE user(
    id int primary key auto_increment,
    username varchar(100) not null unique,
    password varchar(100) not null,
    email varchar(100) not null,
    userRole varchar(20),
    createDate timestamp
) engine=InnoDB default charset=utf8;


CREATE TABLE review(
    id int primary key auto_increment,
    userId int,
    boardId int,
    title varchar(200) not null,
    content varchar(1000) not null,
    createDate timestamp,
    updateDate timestamp
) engine=InnoDB default charset=utf8;


CREATE TABLE star(
    id int primary key auto_increment,
    userId int,
    boardId int,
    likeStar int default 0
) engine=InnoDB default charset=utf8;

```






