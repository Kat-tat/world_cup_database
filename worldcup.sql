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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (257, 2018, 'Final', 242, 243, 4, 2);
INSERT INTO public.games VALUES (258, 2018, 'Third Place', 244, 245, 2, 0);
INSERT INTO public.games VALUES (259, 2018, 'Semi-Final', 243, 245, 2, 1);
INSERT INTO public.games VALUES (260, 2018, 'Semi-Final', 242, 244, 1, 0);
INSERT INTO public.games VALUES (261, 2018, 'Quarter-Final', 243, 246, 3, 2);
INSERT INTO public.games VALUES (262, 2018, 'Quarter-Final', 245, 247, 2, 0);
INSERT INTO public.games VALUES (263, 2018, 'Quarter-Final', 244, 248, 2, 1);
INSERT INTO public.games VALUES (264, 2018, 'Quarter-Final', 242, 249, 2, 0);
INSERT INTO public.games VALUES (265, 2018, 'Eighth-Final', 245, 250, 2, 1);
INSERT INTO public.games VALUES (266, 2018, 'Eighth-Final', 247, 251, 1, 0);
INSERT INTO public.games VALUES (267, 2018, 'Eighth-Final', 244, 252, 3, 2);
INSERT INTO public.games VALUES (268, 2018, 'Eighth-Final', 248, 253, 2, 0);
INSERT INTO public.games VALUES (269, 2018, 'Eighth-Final', 243, 254, 2, 1);
INSERT INTO public.games VALUES (270, 2018, 'Eighth-Final', 246, 255, 2, 1);
INSERT INTO public.games VALUES (271, 2018, 'Eighth-Final', 249, 256, 2, 1);
INSERT INTO public.games VALUES (272, 2018, 'Eighth-Final', 242, 257, 4, 3);
INSERT INTO public.games VALUES (273, 2014, 'Final', 258, 257, 1, 0);
INSERT INTO public.games VALUES (274, 2014, 'Third Place', 259, 248, 3, 0);
INSERT INTO public.games VALUES (275, 2014, 'Semi-Final', 257, 259, 1, 0);
INSERT INTO public.games VALUES (276, 2014, 'Semi-Final', 258, 248, 7, 1);
INSERT INTO public.games VALUES (277, 2014, 'Quarter-Final', 259, 260, 1, 0);
INSERT INTO public.games VALUES (278, 2014, 'Quarter-Final', 257, 244, 1, 0);
INSERT INTO public.games VALUES (279, 2014, 'Quarter-Final', 248, 250, 2, 1);
INSERT INTO public.games VALUES (280, 2014, 'Quarter-Final', 258, 242, 1, 0);
INSERT INTO public.games VALUES (281, 2014, 'Eighth-Final', 248, 261, 2, 1);
INSERT INTO public.games VALUES (282, 2014, 'Eighth-Final', 250, 249, 2, 0);
INSERT INTO public.games VALUES (283, 2014, 'Eighth-Final', 242, 262, 2, 0);
INSERT INTO public.games VALUES (284, 2014, 'Eighth-Final', 258, 263, 2, 1);
INSERT INTO public.games VALUES (285, 2014, 'Eighth-Final', 259, 253, 2, 1);
INSERT INTO public.games VALUES (286, 2014, 'Eighth-Final', 260, 264, 2, 1);
INSERT INTO public.games VALUES (287, 2014, 'Eighth-Final', 257, 251, 1, 0);
INSERT INTO public.games VALUES (288, 2014, 'Eighth-Final', 244, 265, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (242, 'France');
INSERT INTO public.teams VALUES (243, 'Croatia');
INSERT INTO public.teams VALUES (244, 'Belgium');
INSERT INTO public.teams VALUES (245, 'England');
INSERT INTO public.teams VALUES (246, 'Russia');
INSERT INTO public.teams VALUES (247, 'Sweden');
INSERT INTO public.teams VALUES (248, 'Brazil');
INSERT INTO public.teams VALUES (249, 'Uruguay');
INSERT INTO public.teams VALUES (250, 'Colombia');
INSERT INTO public.teams VALUES (251, 'Switzerland');
INSERT INTO public.teams VALUES (252, 'Japan');
INSERT INTO public.teams VALUES (253, 'Mexico');
INSERT INTO public.teams VALUES (254, 'Denmark');
INSERT INTO public.teams VALUES (255, 'Spain');
INSERT INTO public.teams VALUES (256, 'Portugal');
INSERT INTO public.teams VALUES (257, 'Argentina');
INSERT INTO public.teams VALUES (258, 'Germany');
INSERT INTO public.teams VALUES (259, 'Netherlands');
INSERT INTO public.teams VALUES (260, 'Costa Rica');
INSERT INTO public.teams VALUES (261, 'Chile');
INSERT INTO public.teams VALUES (262, 'Nigeria');
INSERT INTO public.teams VALUES (263, 'Algeria');
INSERT INTO public.teams VALUES (264, 'Greece');
INSERT INTO public.teams VALUES (265, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 288, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 265, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

