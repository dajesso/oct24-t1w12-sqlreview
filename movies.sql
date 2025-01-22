drop table if exists users;
drop table if exists genres;
drop table if exists movies;
drop table if exists reviews;


create table  users(
    id serial primary key,
    name varchar(50),
    email varchar(150) not null,
    address varchar(200)
);

create table genres(
    id serial primary key,
    name varchar(100) not null,
    description varchar(200)
);
create table movies(
    id serial primary key,
    title varchar(100) not null,
    length integer,
    genre_id integer not null,
    foreign key (genre_id) references genres(id) --on delete set null --on delete cascade
);
create table reviews(
    id serial primary key,
    stars integer  not null,
    message text,
    user_id integer not null,
    movie_id integer not null,
    foreign key (user_id) references users(id) on delete set null,
    foreign key (movie_id) references movies(id) on delete cascade
);