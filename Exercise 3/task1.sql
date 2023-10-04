/*
Create a database based on last week's task 4. In that task we designed a database for a web news paper. The database has
to follow the plan created last week. If you need to update the plan, include an updated drawing of the
database to your return. Add foreign key restrictions for the tables as well.

Luo tietokanta viime viikon tehtävän 3 perusteella. Tuossa tehtävässä suunittelimme tietokannan verkkolehdelle.
Tietokannan tulee noudattaa viime viikon suunitelmaa. Jos suunnitelmaan pitää tehdä muutoksia, lisää palautukseen
mukaan kuva päivitetyn tietokannan rakenteesta. Lisää myös vierasavainrajoitteet tauluille.
*/

CREATE DATABASE news;
USE news;
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(75),
    author BOOLEAN default FALSE
);
CREATE TABLE articles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    content TEXT,
    author INT,
    FOREIGN KEY(author) REFRENCES users(id) ON DELETE SET NULL
    ON UPDATE CASCADE
);
CREATE TABLE comments(
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT FOREIGN KEY REFRENCES users(id) NOT NULL ON DELETE SET NULL
    ON UPDATE CASCADE,
    article_id INT FOREIGN KEY REFRENCES news(id) NOT NULL ON DELETE
    CASCADE ON UPDATE CASCADE,
    text VARCHAR(250) NOT NULL
);