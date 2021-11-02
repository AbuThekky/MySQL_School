use world;
show tables;
select * from city;
select * from country;
select * from countrylanguage;

#Question 1
select count(name) from city where CountryCode ="USA"; 

#Question 2
select population, avg(LifeExpectancy) from country where code="ARG";

#Question 3
select * from country where lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy desc LIMIT 1;

#Question 4
select city.name FROM city JOIN country ON city.id=country.capital WHERE country.code="ESP";

#Question 5
select countrylanguage.language from countrylanguage join country on countrylanguage.countrycode=country.code where country.region="Southeast Asia";

#Question 6
select * from city where name like "f%" limit 25;

#Question 7
select COUNT(name) from city WHERE countrycode="CHN";

#Question 8
select * from country where population IS NOT NULL ORDER BY population asc LIMIT 1;

#Question 9
select count(name) from country;

#Question 10
select * from country where population IS NOT NULL ORDER BY population desc LIMIT 5;

#Question 11
select * from city where city.countrycode="JPN" order by population desc limit 5;

#Question 12
select * from country where country.headofstate="Elisabeth II";

#Questions 13
select * from country order by surfacearea asc limit 10;

#Question 14
select distinct language from countrylanguage;

#Question 15
select * from country order by GNP desc limit 10;

#Question 16
select * from country order by surfacearea desc limit 10;

#Question 17
select country.name from country join countrylanguage on countrylanguage.countrycode=country.code where language like "%French%" and percentage>50;

#Question 18
select country.name from country order by lifeexpectancy asc limit 1;

#Question 19
select GovernmentForm from country;

#Question 20
select count(name) from country where IndepYear is not null;