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
    id integer NOT NULL,
    username character varying(22),
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1715049039190', 2, 295);
INSERT INTO public.users VALUES (12, 'user_1715049545174', 2, 76);
INSERT INTO public.users VALUES (1, 'user_1715049039191', 5, 104);
INSERT INTO public.users VALUES (24, 'user_1715050018101', 2, 11);
INSERT INTO public.users VALUES (11, 'user_1715049545175', 5, 6);
INSERT INTO public.users VALUES (4, 'user_1715049084424', 2, 353);
INSERT INTO public.users VALUES (23, 'user_1715050018102', 5, 252);
INSERT INTO public.users VALUES (3, 'user_1715049084425', 5, 277);
INSERT INTO public.users VALUES (57, 'user_1715051512293', 5, 540);
INSERT INTO public.users VALUES (36, 'user_1715050511448', 2, 26);
INSERT INTO public.users VALUES (14, 'user_1715049627765', 2, 92);
INSERT INTO public.users VALUES (6, 'user_1715049122768', 2, 94);
INSERT INTO public.users VALUES (48, 'user_1715051020163', 2, 649);
INSERT INTO public.users VALUES (13, 'user_1715049627766', 5, 97);
INSERT INTO public.users VALUES (5, 'user_1715049122769', 5, 27);
INSERT INTO public.users VALUES (35, 'user_1715050511449', 5, 389);
INSERT INTO public.users VALUES (26, 'user_1715050069984', 2, 840);
INSERT INTO public.users VALUES (8, 'user_1715049224177', 2, 117);
INSERT INTO public.users VALUES (16, 'user_1715049826642', 2, 570);
INSERT INTO public.users VALUES (25, 'user_1715050069985', 5, 41);
INSERT INTO public.users VALUES (7, 'user_1715049224178', 5, 65);
INSERT INTO public.users VALUES (15, 'user_1715049826643', 5, 378);
INSERT INTO public.users VALUES (47, 'user_1715051020164', 5, 139);
INSERT INTO public.users VALUES (10, 'user_1715049293765', 2, 217);
INSERT INTO public.users VALUES (9, 'user_1715049293766', 5, 456);
INSERT INTO public.users VALUES (18, 'user_1715049887531', 2, 3);
INSERT INTO public.users VALUES (38, 'user_1715050652342', 2, 56);
INSERT INTO public.users VALUES (17, 'user_1715049887532', 5, 156);
INSERT INTO public.users VALUES (28, 'user_1715050153645', 2, 4);
INSERT INTO public.users VALUES (60, 'user_1715051763575', 2, 60);
INSERT INTO public.users VALUES (27, 'user_1715050153646', 5, 330);
INSERT INTO public.users VALUES (37, 'user_1715050652343', 5, 36);
INSERT INTO public.users VALUES (20, 'user_1715049902651', 2, 403);
INSERT INTO public.users VALUES (19, 'user_1715049902652', 5, 168);
INSERT INTO public.users VALUES (50, 'user_1715051268735', 2, 96);
INSERT INTO public.users VALUES (30, 'user_1715050222865', 2, 492);
INSERT INTO public.users VALUES (59, 'user_1715051763576', 5, 103);
INSERT INTO public.users VALUES (49, 'user_1715051268736', 5, 480);
INSERT INTO public.users VALUES (40, 'user_1715050789641', 2, 156);
INSERT INTO public.users VALUES (22, 'user_1715049913356', 2, 346);
INSERT INTO public.users VALUES (29, 'user_1715050222866', 5, 250);
INSERT INTO public.users VALUES (21, 'user_1715049913357', 5, 120);
INSERT INTO public.users VALUES (39, 'user_1715050789642', 5, 353);
INSERT INTO public.users VALUES (32, 'user_1715050347950', 2, 360);
INSERT INTO public.users VALUES (31, 'user_1715050347951', 5, 45);
INSERT INTO public.users VALUES (52, 'user_1715051301063', 2, 118);
INSERT INTO public.users VALUES (42, 'user_1715050857176', 2, 933);
INSERT INTO public.users VALUES (34, 'user_1715050466338', 2, 553);
INSERT INTO public.users VALUES (51, 'user_1715051301064', 5, 248);
INSERT INTO public.users VALUES (41, 'user_1715050857177', 5, 485);
INSERT INTO public.users VALUES (33, 'user_1715050466339', 5, 283);
INSERT INTO public.users VALUES (44, 'user_1715050941298', 2, 222);
INSERT INTO public.users VALUES (54, 'user_1715051373075', 2, 24);
INSERT INTO public.users VALUES (43, 'user_1715050941299', 5, 81);
INSERT INTO public.users VALUES (53, 'user_1715051373077', 5, 10);
INSERT INTO public.users VALUES (46, 'user_1715051004339', 2, 604);
INSERT INTO public.users VALUES (45, 'user_1715051004340', 5, 367);
INSERT INTO public.users VALUES (56, 'user_1715051436608', 2, 202);
INSERT INTO public.users VALUES (55, 'user_1715051436609', 5, 215);
INSERT INTO public.users VALUES (58, 'user_1715051512292', 2, 27);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 60, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

