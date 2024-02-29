--название и продолжительность самого длительного трека.
select 
  title,
  duration
from 
  track
order by 
  duration desc 
limit 
  1
;

--название треков, продолжительность которых не менее 3,5 минут.
select 
  title,
  duration
from 
  track
where 
  duration >= 210
;

--названия сборников, вышедших в период с 2018 по 2020 год включительно.
select 
  title
from 
  collection
where 
  release_date between '2018-01-01' and '2020-12-31'
;

--исполнители, чьё имя состоит из одного слова.
select 
  name
from 
  artist
where 
  replace(name, ' ', '') = name
;

--название треков, которые содержат слово «мой» или «my».
select 
  title
from 
  track
where 
  title ilike 'my %'
  or title ilike '% my'
  or title ilike '% my %'
  or title ilike 'my'
;

--количество исполнителей в каждом жанре.
select 
  g.name,
  count(*)
from 
  genre g
  left join artist_genre ag on ag.genre_id = g.id
group by 
  g.name
;

--количество треков, вошедших в альбомы 2019–2020 годов.
select 
  count(*)
from 
  album a 
  join track t on t.album_id = a.id
where 
  a.release_date between '2019-01-01' and '2020-12-31'
;

--средняя продолжительность треков по каждому альбому.
select 
  a.title,
  round(avg(t.duration)) avg_duration
from 
  track t 
  join album a on a.id = t.album_id 
group by 
  a.title
;

--все исполнители, которые не выпустили альбомы в 2020 году.
select 
  a.name
from 
  artist a
where
  a.name not in
    (
    select 
      d.name
    from
      artist d
      left join album_artist e on e.artist_id = d.id 
      left join album f on f.id = e.album_id
    where 
      f.release_date between '2020-01-01' and '2020-12-31'
    )
;

--названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select 
  distinct a.title
from
  collection a
  join collection_track b on b.collection_id = a.id 
  join track c on c.id = b.track_id
  join album_artist d on d.album_id = c.album_id 
  join artist e on e.id = d.artist_id 
where
  e.name = 'taeyeon'
;

--названия альбомов, в которых присутствуют исполнители более чем одного жанра.
select
  distinct a.title
from
  album a
  join album_artist b on b.album_id = a.id
  join artist_genre d on d.artist_id = b.artist_id
group by
  a.title,
  d.artist_id
having
  count(*) > 1
;

--наименования треков, которые не входят в сборники.
select
  a.title
from
  track a
  left join collection_track b on b.track_id = a.id
where
  b.track_id is null
;

--исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
select
  distinct a.name
from
  artist a
  join album_artist b on b.artist_id = a.id
  join track c on c.album_id = b.album_id
where
  c.duration =
    (
    select
      min(duration)
    from
      track
    )
;

--названия альбомов, содержащих наименьшее количество треков.
select
  a.title
from
  album a
  join track b on b.album_id = a.id
group by
  a.title
having
  count(*) = 
    (
    select
      count(*)
    from
      track
    group by
      album_id
    order by
      1
    limit
      1
    )
;