-- start by writing psql
psql 

--now create the server by creating a database, we called it nba_stats
CREATE DATABASE nba_stats;

--now create a table for your server to store the data
CREATE TABLE player_stats (
    id SERIAL PRIMARY KEY,
    player_name VARCHAR(100),
    team_abbreviation VARCHAR(10),
    age FLOAT,
    player_height FLOAT,
    player_weight FLOAT,
    college VARCHAR(100),
    country VARCHAR(100),
    draft_year VARCHAR(10),
    draft_round VARCHAR(10),
    draft_number VARCHAR(10),
    gp INTEGER,
    pts FLOAT,
    reb FLOAT,
    ast FLOAT,
    net_rating FLOAT,
    oreb_pct FLOAT,
    dreb_pct FLOAT,
    usg_pct FLOAT,
    ts_pct FLOAT,
    ast_pct FLOAT,
    season VARCHAR(20)
);

--confirm the table was created with empty data, should 
SELECT * FROM player_stats;

--copy the csv file over to postgres
\COPY player_stats FROM 'destination_to_file' DELIMITER ',' CSV HEADER; 

--confirm the table was populated with your data (should return 12844)
SELECT COUNT(*) FROM player_stats;

