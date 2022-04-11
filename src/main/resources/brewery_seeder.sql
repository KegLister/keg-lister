USE keglister_db;
​
insert into keglister_db.users (username, email, password)
values ('charlesincharge', 'charles@gmail.com', 'codeup'),
       ('NELsanfordandSON', 'nelson@codeup.org', 'codedown'),
       ('AndrewGriffith', 'andrew@askjeeves.com', 'codeleft');
​
insert into keglister_db.ads (user_id, name, address, website, phone, image, type)
values (1, 'Alamo Beer Company', '415 Burnet St San Antonio, TX 78202-1909', 'www.alamobeer.com', '(210) 872-5589', 'https://images.getbento.com/accounts/ca1c2dc641c9cdb6036b8c5a6ba1b76f/media/images/97929AlamoBeerCompany-Logo2.png', 'Microbrewery'),
       (2, 'Back Unturned Brewing Co.', '516 Brooklyn Ave San Antonio, TX 78215', 'https://www.facebook.com/backunturned/', '(210) 257-0022', 'https://s.hdnux.com/photos/01/05/71/22/18322592/3/1200x0.jpg', 'Brewpub'),
       (3, 'Black Laboratory Brewing', '1602 E. Houston St Suite 109 San Antonio, TX 78202', 'www.blacklaboratorybrewing.com','(210) 854-0804','http://custom-images.strikinglycdn.com/res/hrscywv4p/image/upload/c_limit,fl_lossy,h_9000,w_1200,f_auto,q_auto/798826/134925_941699.png' , 'Taproom'),
       (1, 'Blue Star Brewing Co', '1414 S Alamo St # 105 San Antonio, TX 78210-1117', 'www.bluestarbrewing.com', '(210) 212-5506', 'http://bluestarbrewing.com/wp-content/uploads/2017/03/a0c927df91a2a879c61442e661daba39-1.gif', 'Brewpub'),
       (2, 'Busted Sandal Brewing Company', '7114 Oaklawn Dr San Antonio, TX 78229-3021', 'www.bustedsandalbrewing.com', '(210) 872-1486', 'http://images.squarespace-cdn.com/content/v1/53209a45e4b0c6583227b75d/1412716737691-PZXZD4M6MA9BWZ82D9NB/logo+for+website.jpg?format=1500w', 'Microbrewery'),
       (3, 'Dorcol Distilling and Brewing CO', '1902 S Flores St San Antonio, TX 78204', 'www.dorcolspirits.com', '(210) 229-0607', 'http://images.squarespace-cdn.com/content/v1/54da47b1e4b09fc9c3d595e3/1473019293503-F6POKHM7XDOHLXQYZ622/Dorcol-Web-new.png?format=1500w', 'Microbrewery'),
       (1, 'Dos Sirenos Brewing', '231 E Cevallos San Antonio, TX 78204', 'www.dossirenosbrewing.com', '(210) 669-3971', 'https://img1.wsimg.com/isteam/ip/848c686a-16f6-40af-a63f-c672bc0f55bf/afe1c78e-e991-4818-9abd-262ad9040cd3.jpg/:/cr=t:2.83%25,l:2.83%25,w:94.34%25,h:94.34%25/rs=w:773,h:1000,cg:true,m', 'Brewpub'),
       (2, 'Freetail Brewing Co', '2000 S Presa St San Antonio, TX 78210-2835', 'www.freetailbrewing.com', '(210) 395-4974', 'https://www.freetailbrewing.com/wp-content/uploads/2019/09/logo.svg', 'Microbrewery' ),
       (3, 'Islla St. Brewing', '11911 Crosswinds Way Unit 201 San Antonio, TX 78233', 'www.isllastreetbrewing.com', '(361) 759-1941', 'https://static.wixstatic.com/media/5c3680_7393374031944895aebed97f6f58a4b9~mv2.png/v1/fill/w_2442,h_1576,al_c,usm_2.00_1.00_0.00,enc_auto/5c3680_7393374031944895aebed97f6f58a4b9~mv2.png', 'Taproom'),
       (1, 'Künstler Brewing', '302 E Lachapelle San Antonio, TX 78204-1945', 'www.kuenstlerbrewing.com', '(210) 688-4519', 'https://static.spotapps.co/web/kuenstlerbrewing--com/custom/logo.png', 'Brewpub'),
       (2, 'Longtab Brewing Company', '4700 Timco W Ste 105 San Antonio, TX 78238-1920', 'www.longtabbrewing.com', '(210) 974-4766', 'https://www.longtabbrewing.com/uploads/b/b948fb70e07d845761164976d903c9a05fd4a3b70457481935b9fb2480f22958/Longtab%20LOGO_1623529548.png?width=800', 'Brewpub'),
       (3, 'Mad Pecker Brewing', '6025 Tezel Rd Ste 122 San Antonio, TX 78250-4180', 'www.madpeckerbrewing.com', '(210) 562-3059', 'https://www.madpeckerbrewing.com/wp-content/themes/madpecker_2016/images/madpeckerlogo.gif', 'Brewpub'),
       (1, 'Man Overboard Brewing Co.', '1203 Camden St San Antonio, TX 78215', 'https://www.facebook.com/people/Man-Overboard-Brewing-Co/100071101844641/', '(210) 290-8474', 'https://untappd.akamaized.net/photos/2022_03_06/87912b0351690828f2430d6485e948ce_640x640.jpg', 'Taproom'),
       (2, 'Ranger Creek Brewing', '4834 Whirlwind Dr Ste 2 San Antonio, TX 78217-3740', 'www.drinkrangercreek.com', '(210) 339-2282', 'https://images.squarespace-cdn.com/content/v1/59da7f606f4ca34ba294a74e/1508874119755-1TQIBJ5BJABUSBS59NRQ/RangerCreek_CircularLogo1TPinverted.png?format=750w', 'Microbrewery'),
       (3, 'Roadmap Brewing Co', '723 N Alamo St San Antonio, TX 78215-1812', 'www.roadmapbrewing.com', '(210) 254-9962', 'https://images.squarespace-cdn.com/content/v1/58f77429be65943dde2958a4/1632936448084-YLRUG3MTAQSO4M6LYBI3/DSCF0649.jpg?format=1500w', 'Taproom'),
       (1, 'Second Pitch Beer Company', '11935 Starcrest Dr. San Antonio, TX 78247', 'www.secondpitchbeer.com', '(408) 655-6700', 'https://secondpitchbeer.com/wp-content/uploads/2021/03/SPBC_logo_Color_light.png', 'Taproom'),
       (2, 'Southerleigh Brewing', '136 E Grayson St., Ste 120 San Antonio, TX 78212-4114', 'www.southerleigh.com', '(210) 313-7627', 'https://images.getbento.com/accounts/386bc5114ea3f379bfdd3678d0778524/media/images/spades2.png?w=1000&fit=max&auto=compress,format&h=1000', 'Microbrewery'),
       (3, 'Weathered Souls Brewing Company', '606 Embassy Oaks Ste 500 San Antonio, TX 78216-1501', 'www.weatheredsouls.beer', '(704) 770-6605', 'https://pbs.twimg.com/profile_images/1412051644154589187/MvEF0333_400x400.jpg', 'Brewpub'),
       (1, 'Grain Theory', '202 Pine St Abilene, TX 79601', 'www.graintheory.beer', '(325) 513-6628', 'https://images.squarespace-cdn.com/content/v1/5e3f0dc4769779685abf5bf1/1592412486227-PC2FIVZ27WOSCD8SX0JL/GrainTheory-CircleLockup-2020.jpg?format=1500w', 'Brewpub'),
       (2, 'Pappy Slokum Brewing Co.', '409 S Treadaway Blvd Abilene, TX 79602-1750', 'www.pappyslokum.com', '(325) 201-4112', 'http://images.squarespace-cdn.com/content/v1/532082eee4b0500451247f58/1394677743282-1BMH37H8BLG53Y9QUI4A/logogold.png?format=1500w', 'Taproom'),
       (3, 'Sockdolager Brewing Company', '833 S. 1st St. Abilene, TX 79602', 'www.sockdolagerbrewery.com', '(325) 721-1718', 'https://secureservercdn.net/166.62.112.219/445.cb1.myftpupload.com/wp-content/uploads/2015/02/sockdolager_badge_large.png', 'Taproom'),
       (1, 'SunnHaus Brewing Project', '344 Clark Rd Abilene, TX 79602', 'www.sunnhaus.com/', '(405) 397-4092', 'https://untappd.akamaized.net/site/brewery_logos_hd/brewery-500310_35b6a_hd.jpeg', 'Taproom');
