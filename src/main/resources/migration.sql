DROP DATABASE IF EXISTS keglister_db;

CREATE DATABASE keglister_db;
Use keglister_db;

create table beer_categories
(
    id        int unsigned auto_increment,
    beer_type varchar(200) not null,
    constraint beer_categories_pk
        unique (id)
);

alter table beer_categories
    add primary key (id);

create table ad_categories
(
    ad_id       int          null,
    category_id int unsigned null,
    constraint ad_categories_beer_categories_id_fk
        foreign key (category_id) references beer_categories (id)
);

create table brewery_info
(
    id      int unsigned auto_increment,
    address varchar(200) not null,
    city    varchar(250) not null,
    state   varchar(30)  not null,
    zip     varchar(20)  not null,
    image   text         null,
    website text         null,
    constraint brewery_info_pk
        unique (id)
);

alter table brewery_info
    add primary key (id);

create table users
(
    id       int unsigned auto_increment,
    username varchar(100) not null,
    email    varchar(250) not null,
    password varchar(250) not null,
    constraint users_pk
        unique (id)
);

alter table users
    add primary key (id);

create table ads
(
    id      int unsigned auto_increment,
    user_id int unsigned not null,
    name    varchar(200) not null,
    info_id int unsigned not null,
    constraint ads_pk
        unique (id),
    constraint info___fk
        foreign key (info_id) references brewery_info (id),
    constraint userid___fk
        foreign key (user_id) references users (id)
);

alter table ads
    add primary key (id);


