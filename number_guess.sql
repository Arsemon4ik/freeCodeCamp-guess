--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer NOT NULL,
    best_score integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1729001488870', 0, 0);
INSERT INTO public.users VALUES (3, 'user_1729001488869', 0, 0);
INSERT INTO public.users VALUES (5, 'user_1729003333413', 1, 0);
INSERT INTO public.users VALUES (4, 'user_1729003333414', 4, 0);
INSERT INTO public.users VALUES (25, 'user_1729004527883', 2, 17);
INSERT INTO public.users VALUES (1, 'Alex', 4, 0);
INSERT INTO public.users VALUES (7, 'user_1729003774058', 1, 566);
INSERT INTO public.users VALUES (24, 'user_1729004527884', 5, 445);
INSERT INTO public.users VALUES (6, 'user_1729003774059', 4, 690);
INSERT INTO public.users VALUES (9, 'user_1729003813525', 1, 208);
INSERT INTO public.users VALUES (8, 'user_1729003813526', 4, 275);
INSERT INTO public.users VALUES (10, 'Ars', 0, 99999);
INSERT INTO public.users VALUES (11, 'Ars1', 0, 99999);
INSERT INTO public.users VALUES (12, 'Ars3', 1, 0);
INSERT INTO public.users VALUES (27, 'user_1729004535074', 2, 698);
INSERT INTO public.users VALUES (15, 'user_1729004116568', 2, 332);
INSERT INTO public.users VALUES (26, 'user_1729004535075', 5, 242);
INSERT INTO public.users VALUES (14, 'user_1729004116569', 5, 275);
INSERT INTO public.users VALUES (17, 'user_1729004252974', 2, 572);
INSERT INTO public.users VALUES (29, 'user_1729004644356', 2, 345);
INSERT INTO public.users VALUES (16, 'user_1729004252975', 5, 407);
INSERT INTO public.users VALUES (28, 'user_1729004644357', 5, 1001);
INSERT INTO public.users VALUES (19, 'user_1729004314647', 2, 145);
INSERT INTO public.users VALUES (18, 'user_1729004314648', 5, 177);
INSERT INTO public.users VALUES (21, 'user_1729004369232', 2, 288);
INSERT INTO public.users VALUES (31, 'user_1729004651778', 2, 542);
INSERT INTO public.users VALUES (20, 'user_1729004369233', 5, 283);
INSERT INTO public.users VALUES (13, 'Ars4', 3, 17);
INSERT INTO public.users VALUES (30, 'user_1729004651779', 5, 176);
INSERT INTO public.users VALUES (23, 'user_1729004465085', 2, 501);
INSERT INTO public.users VALUES (22, 'user_1729004465086', 5, 634);
INSERT INTO public.users VALUES (33, 'user_1729004697942', 2, 363);
INSERT INTO public.users VALUES (32, 'user_1729004697943', 5, 474);
INSERT INTO public.users VALUES (35, 'user_1729004712934', 2, 100);
INSERT INTO public.users VALUES (34, 'user_1729004712935', 5, 394);
INSERT INTO public.users VALUES (37, 'user_1729004913610', 2, 609);
INSERT INTO public.users VALUES (36, 'user_1729004913611', 5, 585);
INSERT INTO public.users VALUES (39, 'user_1729004948099', 2, 427);
INSERT INTO public.users VALUES (38, 'user_1729004948100', 5, 255);
INSERT INTO public.users VALUES (41, 'user_1729004996769', 2, 31);
INSERT INTO public.users VALUES (40, 'user_1729004996770', 5, 269);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

