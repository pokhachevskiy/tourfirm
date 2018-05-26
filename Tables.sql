CREATE TABLE public.access_role
(
    role_id uuid PRIMARY KEY NOT NULL,
    role_name text NOT NULL
);

CREATE TABLE public.change_password
(
    user_id uuid NOT NULL,
    new_pass char(64),
    added timestamp,
    verification_code uuid,
    CONSTRAINT change_password_user_user_id_fk FOREIGN KEY (user_id) REFERENCES "user" (user_id)
);

CREATE TABLE public.city
(
    city_id integer PRIMARY KEY NOT NULL,
    country_code char(3),
    city_name text,
    CONSTRAINT city_country_country_code_fk FOREIGN KEY (country_code) REFERENCES country (country_code)
);

CREATE TABLE public.country
(
    country_code char(3) PRIMARY KEY NOT NULL,
    country_name text
);

CREATE TABLE public.discount
(
    discount_id integer PRIMARY KEY NOT NULL,
    tour_id integer,
    value integer,
    for_registered boolean DEFAULT false,
    CONSTRAINT discount_tour_tour_id_fk FOREIGN KEY (tour_id) REFERENCES tour (tour_id)
);

CREATE TABLE public.favourite
(
    user_id uuid,
    tour_id integer NOT NULL,
    added timestamp,
    CONSTRAINT favourite_user_user_id_fk FOREIGN KEY (user_id) REFERENCES "user" (user_id),
    CONSTRAINT favourite_tour_tour_id_fk FOREIGN KEY (tour_id) REFERENCES tour (tour_id)
);

CREATE TABLE public.hotel
(
    hotel_id integer PRIMARY KEY NOT NULL,
    city_id integer NOT NULL,
    stars smallint,
    hotel_name text,
    CONSTRAINT hotel_city_city_id_fk FOREIGN KEY (city_id) REFERENCES city (city_id)
);

CREATE TABLE public.rating
(
    user_id uuid,
    tour_id integer NOT NULL,
    rate_mark smallint,
    added timestamp,
    CONSTRAINT rating_user_user_id_fk FOREIGN KEY (user_id) REFERENCES "user" (user_id),
    CONSTRAINT rating_tour_tour_id_fk FOREIGN KEY (tour_id) REFERENCES tour (tour_id)
);

CREATE TABLE public.registration
(
    user_id uuid NOT NULL,
    verification_code uuid,
    CONSTRAINT registration_user_user_id_fk FOREIGN KEY (user_id) REFERENCES "user" (user_id)
);

CREATE TABLE public.review
(
    review_id integer PRIMARY KEY NOT NULL,
    user_id uuid,
    tour_id integer,
    text text,
    added timestamp,
    CONSTRAINT review_user_user_id_fk FOREIGN KEY (user_id) REFERENCES "user" (user_id),
    CONSTRAINT review_tour_tour_id_fk FOREIGN KEY (tour_id) REFERENCES tour (tour_id)
);

CREATE TABLE public.sale
(
    sale_id integer PRIMARY KEY NOT NULL,
    tour_id integer,
    added timestamp,
    user_id uuid,
    CONSTRAINT sale_tour_tour_id_fk FOREIGN KEY (tour_id) REFERENCES tour (tour_id),
    CONSTRAINT sale_user_user_id_fk FOREIGN KEY (user_id) REFERENCES "user" (user_id)
);

CREATE TABLE public.tour
(
    tour_id integer PRIMARY KEY NOT NULL,
    city_id integer,
    hotel_id integer,
    tour_name text,
    arrival_date timestamp with time zone NOT NULL,
    departure_date timestamp with time zone NOT NULL,
    price money,
    rating integer,
    review_cnt integer,
    discount_id integer,
    type_id integer,
    CONSTRAINT tour_city_city_id_fk FOREIGN KEY (city_id) REFERENCES city (city_id),
    CONSTRAINT tour_hotel_hotel_id_fk FOREIGN KEY (hotel_id) REFERENCES hotel (hotel_id),
    CONSTRAINT tour_discount_discount_id_fk FOREIGN KEY (discount_id) REFERENCES discount (discount_id),
    CONSTRAINT tour_tour_type_type_id_fk FOREIGN KEY (type_id) REFERENCES tour_type (type_id)
);

CREATE SEQUENCE tour_id_seq;
ALTER SEQUENCE tour_id_seq OWNED BY tour.tour_id;

CREATE TABLE public.tour_type
(
    type_id integer PRIMARY KEY NOT NULL,
    type_name text
);

CREATE TABLE public."user"
(
    user_id uuid PRIMARY KEY NOT NULL,
    login text NOT NULL,
    email text,
    phone text,
    password char(64),
    city_id integer,
    first_name text,
    last_name text,
    gender char,
    birthday date,
    role_id uuid,
    CONSTRAINT user_city_city_id_fk FOREIGN KEY (city_id) REFERENCES city (city_id),
    CONSTRAINT user_access_role_role_id_fk FOREIGN KEY (role_id) REFERENCES access_role (role_id)
);