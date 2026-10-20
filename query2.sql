-- 1.
-- select movies.name, movies_genres.genre, directors.first_name as first_name_directors, directors.last_name as last_name_directors 
-- from movies
-- join movies_genres
--     on movies.id = movies_genres.movie_id
-- join movies_directors
--     on movies_directors.movie_id = movies.id
-- join directors
--     on movies_directors.director_id = directors.id
-- limit 50;
-- SELECT * FROM directors;

-- 2.
-- select movies.name as movie_name, actors.first_name, actors.last_name, roles.role 
-- from movies
-- JOIN roles
--     on movies.id = roles.movie_id
-- join actors
--     on actors.id = roles.actor_id;

