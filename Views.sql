---1) Список туров клиента.(func)
CREATE VIEW client_tour_list_1 AS
    SELECT "user".user_id, tour.tour_name
    FROM tour INNER JOIN sale ON sale.tour_id = tour.tour_id INNER JOIN "user" ON "user".user_id = sale.user_id
    WHERE sale.user_id = '550e8400-e29b-41d4-a716-446655440007';
---2) Список туров с сортировкой по суммарному рейтингу.
CREATE VIEW rating_sorted_tours AS
    SELECT tour_name
    FROM tour ORDER BY rating;
---3)Список пользователей с сортировкой по недавнему обновлению (новой продаже с его участием)
CREATE VIEW upd_sorted_users AS
    SELECT  first_name, last_name, sale.added
    FROM "user" INNER JOIN sale ON "user".user_id = sale.user_id ORDER BY sale.added;
---4)Top-100 недавно добавленных туров
CREATE VIEW added_sorted_tours AS
    SELECT  tour_name
    FROM tour ORDER BY tour.added LIMIT 100;
---5)Список туров в страну.(func)
CREATE VIEW tours_to_country AS
    SELECT  tour_name, country.country_name
    FROM tour INNER JOIN city ON city.city_id = tour.city_id
                INNER JOIN country on country.country_code = city.country_code
                WHERE country.country_name = 'Russia';
drop view tours_to_country;
---6)Список типов тура по алфавиту
CREATE VIEW tour_types AS
    SELECT  type_name
    FROM tour_type ;
---7)Список скидок , доступных всем
CREATE VIEW avaliable_discounts AS
    SELECT  discount_id, value
    FROM discount where for_registered = false;
---8)Админы
CREATE VIEW admins AS
    SELECT  first_name, last_name
    FROM "user" INNER JOIN access_role on "user".role_id = access_role.role_id where access_role.role_name = 'admin';
---9)Клиенты
CREATE VIEW clients AS
    SELECT  first_name, last_name
    FROM "user" INNER JOIN access_role on "user".role_id = access_role.role_id where access_role.role_name = 'client';
---9)Туроператоры
CREATE VIEW tour_operators AS
    SELECT  first_name, last_name
    FROM "user" INNER JOIN access_role on "user".role_id = access_role.role_id where access_role.role_name = 'tour operator';       



--SELECT tour_name FROM tour WHERE tour_id = (SELECT tour_id FROM sale WHERE count(tour_id) > 5);