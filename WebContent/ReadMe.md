## Useful Links

**ThemeWagon** 

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
    fooddesc VARCHAR(200)
);

```


