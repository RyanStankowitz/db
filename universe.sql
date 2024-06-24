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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text,
    distance_from_earth numeric,
    has_blackhole boolean NOT NULL,
    is_visible boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: last; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.last (
    last_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text,
    next_id integer,
    num integer,
    is_valid boolean NOT NULL
);


ALTER TABLE public.last OWNER TO freecodecamp;

--
-- Name: last_last_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.last_last_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.last_last_id_seq OWNER TO freecodecamp;

--
-- Name: last_last_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.last_last_id_seq OWNED BY public.last.last_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    radius numeric,
    distance_from_planet numeric,
    has_atmosphere boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    type character varying(50),
    mass numeric,
    radius numeric,
    distance_from_star numeric,
    has_life boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    type text,
    mass numeric,
    is_binary boolean NOT NULL,
    is_visible boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_star_id_seq OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: last last_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last ALTER COLUMN last_id SET DEFAULT nextval('public.last_last_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sphere', 0, true, true);
INSERT INTO public.galaxy VALUES (2, 'Ando', 'circle', 2897, true, true);
INSERT INTO public.galaxy VALUES (3, 'blank', 'tri', 5000, false, true);
INSERT INTO public.galaxy VALUES (4, 'Amanda', 'norm', 7, true, false);
INSERT INTO public.galaxy VALUES (5, 'Ryan', 'Spiral', 8799, false, true);
INSERT INTO public.galaxy VALUES (6, 'Black Monster', 'round', 657, true, true);


--
-- Data for Name: last; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.last VALUES (1, 'Amanda', '9', 3, 9, true);
INSERT INTO public.last VALUES (2, 'Ryan', '6', 8, 9, false);
INSERT INTO public.last VALUES (3, 'Basil', '7', 8, 1, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1737.4, 344567, false);
INSERT INTO public.moon VALUES (2, 'Virgo', 2, 1867.1, 5678, true);
INSERT INTO public.moon VALUES (3, 'Cap', 3, 1872.5, 897033, true);
INSERT INTO public.moon VALUES (4, 'Bird', 3, 4579.5, 12343987, true);
INSERT INTO public.moon VALUES (5, 'Larry', 1, 345.6, 2399008, false);
INSERT INTO public.moon VALUES (6, 'Derek', 1, 137.4, 344567, false);
INSERT INTO public.moon VALUES (7, 'White', 2, 21867.1, 9678, true);
INSERT INTO public.moon VALUES (8, 'Salary', 3, 12872.5, 1897033, true);
INSERT INTO public.moon VALUES (9, 'Tatum', 3, 859.5, 12987, true);
INSERT INTO public.moon VALUES (10, 'Jason', 1, 645.6, 8399008, false);
INSERT INTO public.moon VALUES (12, 'Dunk', 1, 137.4, 344567, false);
INSERT INTO public.moon VALUES (13, 'Al', 2, 21867.1, 9678, true);
INSERT INTO public.moon VALUES (14, 'Hortford', 3, 12872.5, 1897033, true);
INSERT INTO public.moon VALUES (15, 'Jaylen', 3, 859.5, 12987, true);
INSERT INTO public.moon VALUES (16, 'Brown', 1, 645.6, 8399008, false);
INSERT INTO public.moon VALUES (17, 'Chill', 1, 137.4, 344567, false);
INSERT INTO public.moon VALUES (18, 'Pill', 2, 21867.1, 9678, true);
INSERT INTO public.moon VALUES (19, 'Hor', 3, 12872.5, 1897033, true);
INSERT INTO public.moon VALUES (20, 'Jay', 3, 859.5, 12987, true);
INSERT INTO public.moon VALUES (21, 'Bun', 1, 645.6, 8399008, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', 1.0, 6370, 1.0, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'dead', 20, 1.0, 2356, true);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'non', 2, 47, 4.5, true);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 'Terrestrial', 1.0, 6370, 1.0, true);
INSERT INTO public.planet VALUES (5, 'Pluto', 1, 'dead', 20, 1.0, 2356, true);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, 'non', 2, 47, 4.5, true);
INSERT INTO public.planet VALUES (7, 'Burn', 1, 'Terrestrial', 1.0, 370, 1.0, true);
INSERT INTO public.planet VALUES (8, 'Marko', 1, 'dead', 20, 1.0, 2356, true);
INSERT INTO public.planet VALUES (9, 'Dils', 1, 'non', 2, 47, 4.5, true);
INSERT INTO public.planet VALUES (10, 'Burins', 1, 'Terrestrial', 1.0, 370, 1.0, true);
INSERT INTO public.planet VALUES (11, 'Celtics', 1, 'dead', 20, 1.0, 2356, true);
INSERT INTO public.planet VALUES (12, 'Bills', 1, 'non', 2, 47, 4.5, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'gas', 1.9, true, true);
INSERT INTO public.star VALUES (2, 'Aires', 2, 'solid', 0.8, false, true);
INSERT INTO public.star VALUES (3, 'Leo', 3, 'gas', 6, false, true);
INSERT INTO public.star VALUES (4, 'Peak', 4, 'plasma', 0.5, true, false);
INSERT INTO public.star VALUES (5, 'Barton', 5, 'gas', 1, true, true);
INSERT INTO public.star VALUES (6, 'Storm', 6, 'solid', 7, false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: last_last_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.last_last_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: start_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: last last_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last
    ADD CONSTRAINT last_name_key UNIQUE (name);


--
-- Name: last last_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.last
    ADD CONSTRAINT last_pkey PRIMARY KEY (last_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

