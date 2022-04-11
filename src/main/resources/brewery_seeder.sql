USE keglister_db;

insert into keglister_db.beer_categories (beer_type)
values ('Kolsch'), ('Bock'), ('IPA'), ('Stout');

insert into keglister_db.brewery_info (address, city, state, zip, website)
values ('4834 Whirlwind Dr, Ste 102', 'San Antonio', 'TX', 78217, 'https://drinkrangercreek.com/'),
       ('409 S Treadaway Blvd', 'Abilene', 'TX', 79602, 'http://www.pappyslokum.com/'),
       ('4910 Nautilus Ct N', 'Boulder', 'CO', 80301, 'https://www.averybrewing.com/');

insert into keglister_db.users (username, email, password)
values ('charlesincharge', 'charles@gmail.com', 'codeup'),
       ('NELsanfordandSON', 'nelson@codeup.org', 'codedown'),
       ('AndrewGriffith', 'andrew@askjeeves.com', 'codeleft');

insert into keglister_db.ads (user_id, name, info_id)
values (1, 'Ranger Creek Brewing and Distilling', 1),
       (2, 'Pappy Slokum Brewery', 2),
       (3, 'Avery Brewing Company', 3);

insert into keglister_db.ad_categories (ad_id, category_id)
values (1, 2), (1, 3), (2, 1), (2, 4), (3, 2), (3, 3), (3, 4);