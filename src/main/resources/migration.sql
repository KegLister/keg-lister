DROP DATABASE IF EXISTS keglister_db;
CREATE DATABASE keglister_db;
Use keglister_db;
create table users
(
    id       int unsigned auto_increment,
    username varchar(100) not null unique,
    email    varchar(250) not null,
    password varchar(250) not null,
    constraint users_pk unique (id),
    primary key (id)
);
create table ads
(
    id      int unsigned auto_increment,
    user_id int unsigned not null,
    name    varchar(200) not null,
    address varchar(500) not null,
    website varchar(100) not null,
    phone   varchar(100),
    image   varchar(255) null,
    type    varchar(50),
    constraint ads_pk unique (id),
    constraint userid___fk foreign key (user_id) references users (id),
    primary key (id));
