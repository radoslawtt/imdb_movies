-- Creating database

create database imdb_movies;
use imdb_movies;

-- Directors with a number of movies rated higher than 8 on IMDb and 80 on metascore

select 
	Director, 
	COUNT(*) as 'Number of movies'
from movies
where IMDB_Rating > 8 and Meta_score > 80
group by Director
order by count(*) desc;

-- Top-earning movies and their directors by gross revenue

select 
	Director, 
	sum(gross) as 'Total money made by movies',
	count(*) as 'Number of movies'
from movies
group by director
order by sum(gross) desc;

-- Average, minimum and maximum rating of genre on IMDB and Meta

select 
	Genre, 
    round(avg(IMDB_Rating), 2) as 'Average IMDB rating of genre', 
    min(IMDB_Rating) as 'Lowest rating of genre on IMDB', 
    max(IMDB_Rating) as 'Highest rating of genre on IMDB',
    round(avg(Meta_score), 2) as 'Average Meta score of genre',
    min(Meta_score) as 'Lowest Meta score of genre ', 
    max(Meta_score) as 'Highest Meta score of genre'
from movies
group by Genre
order by avg(IMDB_Rating) desc, avg(Meta_score) desc, Genre desc;

-- Average, minimum, and maximum gross revenue by genre

select
    Genre, 
    count(*) as 'Number of movies',
    coalesce(nullif(avg(gross),''),0) as 'Average gross of genre', 
    coalesce(nullif(min(gross), ''), 0) as 'Lowest gross of genre', 
    coalesce(nullif(max(gross), ''), 0) as 'Highest gross of genre',
    coalesce(nullif(sum(gross), ''), 0) as 'Total gross of genre'
from movies
group by Genre
order by avg(gross) desc, Genre desc;

-- Top grossing movie of each year

select m.Released_Year as 'Year of release', m.Series_Title as 'Movie name', m.Gross
from movies m
join (
    select Released_Year, MAX(Gross) as MaxGross
    from movies
    where Gross != '' -- Exclude records with empty gross
    group by Released_Year
) subquery
on m.Released_Year = subquery.Released_Year and m.Gross = subquery.MaxGross
order by m.Released_Year desc;

-- Top 10 Highest-Grossing Movies

select *
from movies
order by Gross desc
limit 10;

-- Top 5 oldest movies

select
	Series_Title as 'Movie name',
    Released_Year as 'Year of release'
from movies
order by Released_Year
limit 5;

-- The longest and shortest movies in each genre

select
    Genre,
    max(Runtime) as 'Longest movie runtime',
    min(Runtime) as 'Shortest movie runtime'
from movies
group by Genre
order by Genre;

