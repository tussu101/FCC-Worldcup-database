--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 716, 717, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (2, 718, 719, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (3, 717, 719, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (4, 716, 718, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (5, 717, 720, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 719, 721, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 718, 722, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 716, 723, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 719, 724, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 721, 725, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 718, 726, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 722, 727, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 717, 728, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 720, 729, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 723, 730, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 716, 731, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 732, 731, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (18, 733, 722, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (19, 731, 733, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (20, 732, 722, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 733, 734, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 731, 718, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 722, 724, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 732, 716, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 722, 735, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 724, 723, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 716, 736, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 732, 737, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 733, 727, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 734, 738, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 731, 725, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 718, 739, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (716, 'France');
INSERT INTO public.teams VALUES (717, 'Croatia');
INSERT INTO public.teams VALUES (718, 'Belgium');
INSERT INTO public.teams VALUES (719, 'England');
INSERT INTO public.teams VALUES (720, 'Russia');
INSERT INTO public.teams VALUES (721, 'Sweden');
INSERT INTO public.teams VALUES (722, 'Brazil');
INSERT INTO public.teams VALUES (723, 'Uruguay');
INSERT INTO public.teams VALUES (724, 'Colombia');
INSERT INTO public.teams VALUES (725, 'Switzerland');
INSERT INTO public.teams VALUES (726, 'Japan');
INSERT INTO public.teams VALUES (727, 'Mexico');
INSERT INTO public.teams VALUES (728, 'Denmark');
INSERT INTO public.teams VALUES (729, 'Spain');
INSERT INTO public.teams VALUES (730, 'Portugal');
INSERT INTO public.teams VALUES (731, 'Argentina');
INSERT INTO public.teams VALUES (732, 'Germany');
INSERT INTO public.teams VALUES (733, 'Netherlands');
INSERT INTO public.teams VALUES (734, 'Costa Rica');
INSERT INTO public.teams VALUES (735, 'Chile');
INSERT INTO public.teams VALUES (736, 'Nigeria');
INSERT INTO public.teams VALUES (737, 'Algeria');
INSERT INTO public.teams VALUES (738, 'Greece');
INSERT INTO public.teams VALUES (739, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 739, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

