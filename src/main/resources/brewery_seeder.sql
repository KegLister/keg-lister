USE keglister_db;

insert into keglister_db.users (username, email, password)
values ('charlesincharge', 'charles@gmail.com', 'codeup'),
       ('NELsanfordandSON', 'nelson@codeup.org', 'codedown'),
       ('AndrewGriffith', 'andrew@askjeeves.com', 'codeleft');

insert into keglister_db.ads (user_id, name, address, website, phone, image, type)
values (1, 'Ranger Creek Brewing and Distilling', '4834 Whirlwind Dr, Ste 102, San Antonio, TX, 78217', 'https://drinkrangercreek.com/', '(210) 339-2282','https://images.squarespace-cdn.com/content/v1/59da7f606f4ca34ba294a74e/1615', 'Taproom'),
       (2, 'Pappy Slokum Brewery', '409 S Treadaway Blvd, Abilene, TX, 79602', 'http://www.pappyslokum.com/', '(325) 704-5161', 'http://images.squarespace-cdn.com/content/v1/532082eee4b0500451247f58/1394677743282-1', 'Brewpub'),
       (3, 'Avery Brewing Company', '4910 Nautilus Ct N, Boulder, CO, 80301', 'https://www.averybrewing.com/', 'N/A','https://d1h6bqmdexfe1t.cloudfront.net/assets/brewery-story/1996-03e8286875ab0799c9e72110.jpg', 'Microbrewery');

