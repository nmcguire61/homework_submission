drop table websites;

create table websites (
  id serial4 primary key,
  name varchar(255) not null,
  website varchar(255) not null,
  details text,
  genre varchar(255) not null
);

insert into websites (name, website, details, genre) values ('bbc', 'www.bbc.co.uk', 'Keep up-to-date with news sport and leisure.', 'News');
insert into websites (name, website, details, genre) values ('GeekTyrant', 'www.geektyrant.com', 'Geek culture bringing you information about films, tv series, comics and anime.', 'Geek');
insert into websites (name, website, details, genre) values ('Steam', 'store.steampowered.com', 'Pre-eminent digital gaming platform for PC/mac/linux', 'Games');
insert into websites (name, website, details, genre) values ('G2A', 'www.g2a.com', 'Cut price digital games', 'News');  