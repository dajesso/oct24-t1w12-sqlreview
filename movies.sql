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
    genre_id integer
)