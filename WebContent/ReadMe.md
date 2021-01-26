## 클론코딩

**부산시 한정 망고플레이트 구현** 


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

```


```
메뉴별 맛집..
해산물
밀면
족발 앤 보쌈
백숙
일식
만두


```

