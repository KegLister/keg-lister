USE keglister_db;

create table IF NOT EXISTS beer_categories
(
    id        int          not null,
    beer_type varchar(200) not null,
    constraint beer_categories_pk
        unique (id)
);
create table IF NOT EXISTS ad_categories
(
    ad_id       int null,
    category_id int null,
    constraint ad_categories_beer_categories_id_fk
        foreign key (category_id) references beer_categories (id)
);
create table IF NOT EXISTS brewery_info
(
    id      int          null,
    address varchar(200) not null,
    city    varchar(250) not null,
    state   varchar(30)  not null,
    zip     varchar(20)  not null,
    image   text         null,
    website text         null,
    constraint brewery_info_pk
        unique (id)
);
create table IF NOT EXISTS users
(
    id       int          null,
    username varchar(100) not null,
    email    varchar(250) not null,
    password varchar(250) not null,
    constraint users_pk
        unique (id)
);
create table IF NOT EXISTS ads
(
    id      int          null,
    user_id int          not null,
    name    varchar(200) not null,
    info_id int          null,
    constraint ads_pk
        unique (id),
    constraint ads_brewery_info_id_fk
        foreign key (info_id) references brewery_info (id),
    constraint ads_users_id_fk
        foreign key (user_id) references users (id)
);
