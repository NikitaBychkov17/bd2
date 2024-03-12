insert into  artist values  
(1, 'Imagine Dragons'),
(2, 'Skillet'),
(3, 'Twenty One Pilots'),
(4, 'Fall Out Boy')
;

insert into genre values
(1, 'Pop-Rock'),
(2, 'Hard-Rock'),
(3, 'Reggae')
;

insert into  album  values  
(1, 'Evolve', '2017'),
(2, 'Awake', '2009'),
(3, 'Blurryface', '2015'),
(4, 'Believers Never Die', '2019')
;

insert into  track  values  
(1, 'Rise Up', 1, '00:03:51'),
(2, 'Believer', 1, '00:03:24'),
(3, 'Monster', 2, '00:02:58'),
(4, 'Comatose', 2, '00:03:50'),
(5, 'Stressed Out', 3, '00:03:22'),
(6, 'Ride', 3, '00:03:34'),
(7, 'My Songs Know What You Did in the Dark', 4, '00:03:08'),
(8, 'Alone Together', 4, '00:03:23')
;

insert into  collection  values  
(1, 'Best Pop-Rock', '2019'),
(2, 'Best 20XX', '2022'),
(3, 'Best Reggae', '2015'),
(4, 'Best Hard-Rock', '2009')
;

insert into  artist_genre  values  
(1, 1),
(2, 2),
(3, 3),
(4, 1)
;

insert into  album_artist  values  
(1, 1),
(2, 2),
(3, 3),
(4, 4)
;

insert into  track_collection  values  
(1, 1),
(2, 2),
(3, 2),
(4, 4),
(5, 2),
(6, 3),
(7, 1),
(8, 1)
;
