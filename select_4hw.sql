--1.Количество исполнителей в каждом жанре.
select count(artist_id), genre_id 
from artistgenre
group by genre_id;

--2.Количество треков, вошедших в альбомы 2019–2020 годов
select count(t.track_id), 
from track t join album a on t.album_id = a.album_id 
where a.year between 2019 and 2020
group by a.year;

--3.Средняя продолжительность треков по каждому альбому.
select avg(t.duration),a.name
from track t join album a on t.album_id = a.album_id 
group by a.name;

--4.Все исполнители, которые не выпустили альбомы в 2020 году.
select artist.name
from artistalbum
	join album on artistalbum.album_id = album.album_id 
	join artist on artistalbum.artist_id  = artist.artist_id	
where album.year <> 2020
group by artist.name;

--5.Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select col.name
from сollection col
	join collectiontrack col_t on col.сollection_id = col_t.сollection_id 
	join track t on col_t.track_id  = t.track_id
	join album a on t.album_id = a.album_id 
	join artistalbum a_a on a.album_id = a_a.album_id 
	join artist art on a_a.artist_id = art.artist_id 
where art.name = 'Billie Holiday'
group by col.name;

--6.Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select a.name
from album a
	join artistalbum a_a on a_a.album_id = a.album_id
where a_a.artist_id in (select ag.artist_id 
						from artistgenre ag
						group by ag.artist_id
						having count(ag.genre_id) > 1)

--7.Наименования треков, которые не входят в сборники.
select t.name
from track t
	left join collectiontrack c on t.track_id = c.track_id 
where c.track_id is null

--8.Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select a.name,t.duration 
from track t 
	join album a on a.album_id = t.album_id 
	join artistalbum a_a on a.album_id = a_a.album_id
	join artist art on a_a.artist_id = art.artist_id  
	where t.duration = (select min(t.duration) from track t)
	
--9.Названия альбомов, содержащих наименьшее количество треков.
select a.name
from album a
where a.album_id in (select album_id 
					 from(select album_id
						  from track t
						  group by album_id
						  having count(track_id) = (select min(cnt)
												    from (select album_id, count(track_id) cnt
														  from track t 
														  group by album_id) s_cnt))s_a)
