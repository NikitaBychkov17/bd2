select track_name, duration  from track 
	order by duration desc
	limit 1;
	
select track_name, duration  from track 
	where duration >= '00:03:30';
	
select collection_name from collection 
	where year_of_release >= '2018' and year_of_release <= '2020';
	
select artist_name from artist
	where artist_name not like '%% %%'
	
select track_name  from track  
	where (track_name like '%%my%%') or (track_name like '%%My%%') or (track_name like '%%мой%%') or (track_name like '%%Мой%%')
	
select genre_name , count(a.artist_name) from genre g 
	left join artist_genre ag on g.id = ag.genre_id 
	left join artist a on ag.artist_id = a.id 
	group by genre_name 
	order by count(a.artist_name) desc;
    
select count(track_name) from track t
	left join album a on t.album_id = a.id
	where date_release >= '2019' and date_release <= '2020';

select albums_name, avg(duration) from track t 
	left join album a on t.album_id = a.id
	group by albums_name 
	order by avg(duration);

select artist_name from album a 
	join album_artist aa on a.id = aa.album_id 
	join artist a2 on  aa.artist_id = a2.id 
	where a.date_release != '2020';  

select collection_name from collection c 
	left join track_collection t on t.collection_id = c.id 
	left join track t2 on t.track_id = t2.id 
	left join album a on t2.album_id = a.id 
	left join album_artist a2 on a.id = a2.album_id 
	left join artist a3 on a2.artist_id = a3.id 
	where artist_name like 'Skillet';