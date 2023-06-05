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

INSERT INTO public.games VALUES (65, 788, 789, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 790, 791, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 789, 791, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 788, 790, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 789, 792, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 791, 793, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 790, 794, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 788, 795, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 791, 796, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 793, 797, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 790, 798, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 794, 799, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 789, 800, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 792, 801, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 795, 802, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 788, 803, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 804, 803, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 805, 794, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 803, 805, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 804, 794, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 805, 806, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 803, 790, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 794, 796, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 804, 788, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 794, 807, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 796, 795, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 788, 808, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 804, 809, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 805, 799, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 806, 810, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 803, 797, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 790, 811, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (788, 'France');
INSERT INTO public.teams VALUES (789, 'Croatia');
INSERT INTO public.teams VALUES (790, 'Belgium');
INSERT INTO public.teams VALUES (791, 'England');
INSERT INTO public.teams VALUES (792, 'Russia');
INSERT INTO public.teams VALUES (793, 'Sweden');
INSERT INTO public.teams VALUES (794, 'Brazil');
INSERT INTO public.teams VALUES (795, 'Uruguay');
INSERT INTO public.teams VALUES (796, 'Colombia');
INSERT INTO public.teams VALUES (797, 'Switzerland');
INSERT INTO public.teams VALUES (798, 'Japan');
INSERT INTO public.teams VALUES (799, 'Mexico');
INSERT INTO public.teams VALUES (800, 'Denmark');
INSERT INTO public.teams VALUES (801, 'Spain');
INSERT INTO public.teams VALUES (802, 'Portugal');
INSERT INTO public.teams VALUES (803, 'Argentina');
INSERT INTO public.teams VALUES (804, 'Germany');
INSERT INTO public.teams VALUES (805, 'Netherlands');
INSERT INTO public.teams VALUES (806, 'Costa Rica');
INSERT INTO public.teams VALUES (807, 'Chile');
INSERT INTO public.teams VALUES (808, 'Nigeria');
INSERT INTO public.teams VALUES (809, 'Algeria');
INSERT INTO public.teams VALUES (810, 'Greece');
INSERT INTO public.teams VALUES (811, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 811, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


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

