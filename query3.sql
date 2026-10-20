select * from directors_genres;
select * from directors;
select * from movies_directors;
select * from movies_genres;
SELECT * from roles;
SELECT * from movies;
SELECT * from actors;
SELECT * from roles;
select tablename from pg_tables where schemaname = 'public'

-- 1
select COUNT(id) as genre_director, directors.first_name
from directors
join directors_genres
    on directors.id = directors_genres.director_id
group by directors.id
order by genre_director asc;


-- 2 
select actors.first_name, count(distinct roles.role)
from actors 
join roles
    on actors.id = roles.actor_id
group by actors.first_name
HAVING count(distinct roles.role) > 5;


-- 3 
select directors.first_name,COUNT(movies_directors.movie_id) as total_movies
from directors
join movies_directors
    on movies_directors.director_id= directors.id
GROUP BY directors.first_name
ORDER BY total_movies desc
limit 1;

-- 4
select count(id) as total_film, year
from movies 
group by year 
order by total_film desc
limit 1;

-- 5
select movies.name, string_agg(movies_genres.genre, ', ') as genres
from movies
join movies_genres
    on movies.id = movies_genres.movie_id
GROUP BY movies.name
