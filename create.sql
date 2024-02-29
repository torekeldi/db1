create table genre
(
	id serial,
	name varchar(200),
	constraint pk_genre_id primary key (id),
	constraint uc_genre_name unique (name),
	constraint nc_genre_name check (name is not null)
);

create table artist
(
	id serial,
	name varchar(200),
	constraint pk_artist_id primary key (id),
	constraint uc_artist_name unique (name),
	constraint nc_artist_name check (name is not null)
);

create table album
(
	id serial,
	title varchar(200),
	release_date date,
	constraint pk_album_id primary key (id),
	constraint uc_album_title unique (title),
	constraint nc_album_title check (title is not null),
	constraint nc_album_release_date check (release_date is not null)
);

create table track
(
	id serial,
	title varchar(200),
	duration int,
	album_id int,
	constraint pk_track_id primary key (id),
	constraint uc_track_title unique (title),
	constraint nc_track_title check (title is not null),
	constraint nc_track_duration check (duration is not null),
	constraint nc_track_album_id check (album_id is not null),
	constraint fk_track_album_id foreign key (album_id) references album
);

create table collection
(
	id serial,
	title varchar(200),
	release_date date,
	constraint pk_collection_id primary key (id),
	constraint uc_collection_title unique (title),
	constraint nc_collection_title check (title is not null),
	constraint nc_collection_release_date check (release_date is not null)
);

create table artist_genre
(
	id serial,
	artist_id int,
	genre_id int,
	constraint pk_artist_genre_id primary key (id),
	constraint nc_artist_genre_artist_id check (artist_id is not null),
	constraint nc_artist_genre_genre_id check (genre_id is not null),
	constraint uc_artist_genre unique (artist_id, genre_id),
	constraint fk_artist_genre_artist_id foreign key (artist_id) references artist,
	constraint fk_artist_genre_genre_id foreign key (genre_id) references genre
);

create table album_artist
(
	id serial,
	album_id int,
	artist_id int,
	constraint pk_album_artist_id primary key (id),
	constraint nc_album_artist_album_id check (album_id is not null),
	constraint nc_album_artist_artist_id check (artist_id is not null),
	constraint uc_album_artist unique (album_id, artist_id),
	constraint fk_album_artist_album_id foreign key (album_id) references album,
	constraint fk_album_artist_artist_id foreign key (artist_id) references artist
);

create table collection_track
(
	id serial,
	collection_id int,
	track_id int,
	constraint pk_collection_track_id primary key (id),
	constraint nc_collection_track_collection_id check (collection_id is not null),
	constraint nc_collection_track_track_id check (track_id is not null),
	constraint uc_collection_track unique (collection_id, track_id),
	constraint fk_collection_track_collection_id foreign key (collection_id) references collection,
	constraint fk_collection_track_track_id foreign key (track_id) references track
);