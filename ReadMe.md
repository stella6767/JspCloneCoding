## 클론코딩 개인 프로젝트(부산시 망고플레이트)


**시연 영상**

<https://www.youtube.com/watch?v=R9xXR7wmzyE&ab_channel=%EC%8A%88%EC%B9%B4%EC%9B%94%EB%93%9C>

<hr/>

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
<hr/>

**설명 블로그**

* 1. 프로젝트 개요  <https://blog.naver.com/alsrb9434/222206054151>

* 2. UI 만들기   <https://blog.naver.com/alsrb9434/222208445854>

* 3. 오픈 API 활용   <https://blog.naver.com/alsrb9434/222216245440>

* 4. 데이터베이스 생성  <https://blog.naver.com/alsrb9434/222218372826>

* 5. AllList page 더보기 버튼 구현(ajax)  <https://blog.naver.com/alsrb9434/222220446553>

* 6. 모델 설계  <https://blog.naver.com/alsrb9434/222227671331>

* 7. 카카오 지도 API  <https://blog.naver.com/alsrb9434/222227696515>

* 8. AJAX 좋아요(찜) 기능 구현  <https://blog.naver.com/alsrb9434/222227712878>

* 9. 검색창 + 페이징 작업  <https://blog.naver.com/alsrb9434/222227791426>



