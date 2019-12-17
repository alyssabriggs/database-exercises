USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date INTEGER,
    sales FLOAT NOT NULL,
    genre TEXT NOT NULL,
    PRIMARY KEY(id)
)