create database nba_2017;
use nba_2017;

CREATE TABLE IF NOT EXISTS game_results (
  game_date DATE,
  abbv1 VARCHAR(20),
  visitor VARCHAR(20),
  points1 VARCHAR(20),     -- The point spread is only populated for 1 team in each game
  win_prob1 FLOAT,
  score1 INT,
  abbv2 VARCHAR(20),
  home VARCHAR(20),
  points2 FLOAT,
  win_prob2 FLOAT,
  score2 INT
);

-- LOAD DATA INFILE '/var/lib/mysql-files/538-nba-game-predictions.csv'
-- INTO TABLE game_results
-- FIELDS TERMINATED BY ',' ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n';
