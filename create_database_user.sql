use mysql;

CREATE DATABASE hero;

CREATE USER 'hero'@'localhost' identified by 'hero123';
CREATE USER 'hero'@'%' identified by 'hero123';

GRANT ALL PRIVILEGES ON hero.* TO 'hero'@'localhost' IDENTIFIED BY 'hero123';
GRANT ALL PRIVILEGES ON hero.* TO 'hero'@'%' IDENTIFIED BY 'hero123';

FLUSH PRIVILIEGES;
