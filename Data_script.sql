
-------------------------------------------
INSERT INTO country (country_code, country_name) VALUES
    (276 , 'Germany');
INSERT INTO country (country_code, country_name) VALUES
    (643 , 'Russia');

-----------------------------------------------------

INSERT INTO city (city_id, country_code, city_name) VALUES
    (1 ,643, 'Perm');

INSERT INTO city (city_id, country_code, city_name) VALUES
    (2 ,643, 'Moscow');

INSERT INTO city (city_id, country_code, city_name) VALUES
    (3 ,643, 'Saint-Petersburg');

INSERT INTO city (city_id, country_code, city_name) VALUES
    (4 ,276, 'Berlin');

INSERT INTO city (city_id, country_code, city_name) VALUES
    (5 ,276, 'Koln');

INSERT INTO city (city_id, country_code, city_name) VALUES
    (6 ,276, 'Munich');

-----------------------------------------------------

INSERT INTO tour_type (type_id, type_name) VALUES
    (1 , 'Weekend');

INSERT INTO tour_type (type_id, type_name) VALUES
    (2 , 'Voyage');

INSERT INTO tour_type (type_id, type_name) VALUES
    (3 , 'Family');

INSERT INTO tour_type (type_id, type_name) VALUES
    (4 , 'Gastronomic');

INSERT INTO tour_type (type_id, type_name) VALUES
    (5 , 'For lovers');

----------------------------------------------------

INSERT INTO hotel (hotel_id, city_id, stars, hotel_name) VALUES
    (1 , 1, 3, 'Ural');

INSERT INTO hotel (hotel_id, city_id, stars, hotel_name) VALUES
    (2 , 2, 4, 'Seasons');

INSERT INTO hotel (hotel_id, city_id, stars, hotel_name) VALUES
    (3 , 3, 5, 'Piter');

INSERT INTO hotel (hotel_id, city_id, stars, hotel_name) VALUES
    (4 , 6, 3, 'Platz');

INSERT INTO hotel (hotel_id, city_id, stars, hotel_name) VALUES
    (5 , 2, 2, 'Dom');

-----------------------------------------------------------------

INSERT INTO discount (discount_id, value, for_registered) VALUES
    (1 ,  30, True);

INSERT INTO discount (discount_id, value, for_registered) VALUES
    (2 ,  20, false);

INSERT INTO discount (discount_id, value, for_registered) VALUES
    (3 , 50, True);

INSERT INTO discount (discount_id, value, for_registered) VALUES
    (4 ,  70, True);

INSERT INTO discount (discount_id, value, for_registered) VALUES
    (5 , 10, false);

------------------------------------------------------------------
alter table tour add column tour_operator_id uuid;
update tour set tour_operator_id = '550e8400-e29b-41d4-a716-446655440004' where tour_id = 2;

update tour set tour_operator_id = '550e8400-e29b-41d4-a716-446655440008' where tour_id = 1;

update tour set tour_operator_id = '550e8400-e29b-41d4-a716-446655440008' where tour_id = 4;

update tour set tour_operator_id = '550e8400-e29b-41d4-a716-446655440004' where tour_id = 5;

update tour set tour_operator_id = '550e8400-e29b-41d4-a716-446655440008' where tour_id = 3;

--------

INSERT INTO tour (tour_id, city_id, hotel_id, tour_name, arrival_date, departure_date, price, rating, review_cnt, discount_id, type_id, added, tour_operator_id) VALUES
    (1 , 2, 2, 'Golden ring','2018-05-09 22:18:39.382000 +00:00', '2018-05-20 21:10:39.382000 +00:00', 30000, 60, 1, 2, 3, '2017-09-14 06:50:09.076000', '550e8400-e29b-41d4-a716-446655440004');

INSERT INTO tour (tour_id, city_id, hotel_id, tour_name, arrival_date, departure_date, price, rating, review_cnt, discount_id, type_id, added, tour_operator_id) VALUES
    (2 , 1, 1, 'Ural','2018-06-08 16:18:39.382000 +00:00', '2018-06-10 21:10:39.382000 +00:00', 10000, 50, 2, 1, 1, '2018-06-10 06:59:17.437000','550e8400-e29b-41d4-a716-446655440008');

INSERT INTO tour (tour_id, city_id, hotel_id, tour_name, arrival_date, departure_date, price, rating, review_cnt, discount_id, type_id, added, tour_operator_id) VALUES
    (3 , 6, 4, 'Octoberfest','2018-10-20 22:18:39.382000 +00:00', '2018-10-30 21:10:39.382000 +00:00', 50000, 80, 1, 5, 4, '2016-07-13 06:53:25.940000', '550e8400-e29b-41d4-a716-446655440008');

INSERT INTO tour (tour_id, city_id, hotel_id, tour_name, arrival_date, departure_date, price, rating, review_cnt, discount_id, type_id, added, tour_operator_id) VALUES
    (4 , 5, 5, 'Shopping in Germany','2018-07-08 22:18:39.382000 +00:00', '2018-08-01 21:10:39.382000 +00:00', 70000, 70, 1, 3, 5,'2015-05-10 06:50:37.143000', '550e8400-e29b-41d4-a716-446655440004');

INSERT INTO tour (tour_id, city_id, hotel_id, tour_name, arrival_date, departure_date, price, rating, review_cnt, discount_id, type_id, added, tour_operator_id) VALUES
    (5 , 3, 3, 'Northern capital','2018-12-09 22:18:39.382000 +00:00', '2018-12-20 21:10:39.382000 +00:00', 60000, 60, 1, Null, 5, '2018-09-30 06:50:44.462000', '550e8400-e29b-41d4-a716-446655440008');

---------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO "user" (user_id, login, email, phone, password, city_id, first_name, last_name, gender, birthday, role_id) VALUES
    ('550e8400-e29b-41d4-a716-446655440005' , 'admin', 'admin@mail.ru', '89156868904', 'qwert1', 3, 'Admin', 'Admin', Null, '24.02.1997' , '550e8400-e29b-41d4-a716-446655440002' );

INSERT INTO "user" (user_id, login, email, phone, password, city_id, first_name, last_name, gender, birthday, role_id) VALUES
    ('550e8400-e29b-41d4-a716-446655440004' , 'masha', 'masha@mail.ru', '89176868904', 'qwert', 2, 'Maria', 'Yartieva', 'F', '23.02.1997' , '550e8400-e29b-41d4-a716-446655440003' );

INSERT INTO "user" (user_id, login, email, phone, password, city_id, first_name, last_name, gender, birthday, role_id) VALUES
    ('550e8400-e29b-41d4-a716-446655440006' , 'ilya', 'ilya@mail.ru', '89146868904', 'qwert2', 4, 'Ilya', 'Rubanov', 'M', '25.02.1997' , '550e8400-e29b-41d4-a716-446655440001' );

INSERT INTO "user" (user_id, login, email, phone, password, city_id, first_name, last_name, gender, birthday, role_id) VALUES
    ('550e8400-e29b-41d4-a716-446655440007' , 'polina', 'polina@mail.ru', '89136868904', 'qwert3', 5, 'Polina', 'Kutsevol', 'F', '26.02.1997' , '550e8400-e29b-41d4-a716-446655440001' );

INSERT INTO "user" (user_id, login, email, phone, password, city_id, first_name, last_name, gender, birthday, role_id) VALUES
    ('550e8400-e29b-41d4-a716-446655440008', 'nikita', 'nikita@mail.ru', '89166868904', 'qwert4', 6, 'Nikita', 'Korobov', 'M', '27.02.1997' , '550e8400-e29b-41d4-a716-446655440003' );


-------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO favourite (user_id, tour_id, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440006' , 1, '2018-05-09 19:40:25.461000');

INSERT INTO favourite (user_id, tour_id, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440007' , 3, '2018-06-09 19:40:25.461000');
    
INSERT INTO favourite (user_id, tour_id, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440006' , 1, '2018-05-19 19:40:25.461000');
    
INSERT INTO favourite (user_id, tour_id, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440000' , 4, '2018-05-06 19:40:25.461000');

INSERT INTO favourite (user_id, tour_id, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440006' , 1, '2018-05-02 19:40:25.461000');
    
-------------------------------------------------------------------------------------

INSERT INTO rating (user_id, tour_id, rate_mark, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440006' , 5, 20,'2018-05-09 19:40:25.461000');
INSERT INTO rating (user_id, tour_id, rate_mark, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440006' , 4, 100,'2018-06-09 19:40:25.461000');
INSERT INTO rating (user_id, tour_id, rate_mark, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440000' , 3 ,80,'2018-04-09 19:40:25.461000');
INSERT INTO rating (user_id, tour_id, rate_mark, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440007' , 2, 60,'2018-03-09 19:40:25.461000');
INSERT INTO rating (user_id, tour_id, rate_mark, added) VALUES
    ('550e8400-e29b-41d4-a716-446655440007' , 1, 10,'2018-02-09 19:40:25.461000');


--------------------------------------------------------------------------------------

INSERT INTO review (review_id, user_id, tour_id, text, added) VALUES
    (1,'550e8400-e29b-41d4-a716-446655440006' , 5, 'Cool','2018-05-09 19:40:25.461000');

INSERT INTO review (review_id, user_id, tour_id, text, added) VALUES
    (2,'550e8400-e29b-41d4-a716-446655440006' , 1, 'Great','2018-05-07 19:40:25.461000');

INSERT INTO review (review_id, user_id, tour_id, text, added) VALUES
    (3,'550e8400-e29b-41d4-a716-446655440007' , 1, 'Beautifil views','2018-05-05 19:40:25.461000');

INSERT INTO review (review_id, user_id, tour_id, text, added) VALUES
    (4,'550e8400-e29b-41d4-a716-446655440000' , 3, 'Very bad','2018-05-03 19:40:25.461000');

INSERT INTO review (review_id, user_id, tour_id, text, added) VALUES
    (5,'550e8400-e29b-41d4-a716-446655440000' , 4, 'Normal','2018-05-01 19:40:25.461000');

---------------------------------------------------------------------------------------------
