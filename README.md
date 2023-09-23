# IMDb Movies Database SQL Queries

## Overview

This repository contains SQL queries and database creation commands for analyzing the IMDb movies dataset. The dataset provides information about movies, including details such as director names, ratings, gross revenue, and more.

## Data Source

The dataset used in these SQL queries has been sourced from https://www.kaggle.com/datasets/omarhanyy/imdb-top-1000

## Queries

The repository includes several SQL queries for exploring and analyzing the IMDb movies dataset:

### Directors with High-Rated Movies

This query identifies directors who have a number of movies rated higher than 8 on IMDb and with a Metascore higher than 80. It provides the number of such movies for each director.

### Top-Earning Movies and Their Directors

This query lists the top-earning movies and their respective directors by gross revenue. It also calculates the total money made by each director and the number of movies they directed.

### Genre Analysis

This query calculates the average, minimum, and maximum IMDb ratings and Metascores for each genre. It provides insights into the performance of different genres in terms of ratings.

### Gross Revenue by Genre

This query analyzes the gross revenue for each genre, including the average, minimum, and maximum gross revenue, as well as the total gross revenue. It helps identify which genres are the most profitable.

### Top Grossing Movie of Each Year

This query finds the top-grossing movie of each year, along with its gross revenue. It excludes records with empty gross revenue values.

### Top 10 Highest-Grossing Movies

This query lists the top 10 highest-grossing movies from the dataset, providing information about their titles, directors, and gross revenue.

### Top 5 Oldest Movies

This query identifies the top 5 oldest movies in the dataset, listing their titles and release years.

### Movie Runtimes by Genre

This query calculates the longest and shortest movies in each genre, providing insights into the runtime distribution within genres.

Feel free to explore and modify these queries to suit your specific analysis needs. You can run these queries in a SQL database environment to gain valuable insights from the IMDb movies dataset.
