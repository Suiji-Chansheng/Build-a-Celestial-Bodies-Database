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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    volume numeric NOT NULL,
    name character varying(30) NOT NULL,
    name_id integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_id integer NOT NULL,
    galaxy_volume numeric NOT NULL,
    desc_galaxy text NOT NULL,
    has_water boolean DEFAULT false NOT NULL
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    name_id integer NOT NULL,
    moon_volume numeric NOT NULL,
    desc_moon text NOT NULL,
    has_water boolean DEFAULT false NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    name_id integer NOT NULL,
    planet_volume numeric NOT NULL,
    desc_star text NOT NULL,
    has_water boolean DEFAULT false NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    name_id integer NOT NULL,
    gstar_volume numeric NOT NULL,
    desc_star text NOT NULL,
    has_water boolean DEFAULT false NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 90, 'l', NULL);
INSERT INTO public.earth VALUES (2, 30, 'o', NULL);
INSERT INTO public.earth VALUES (3, 8, 'p', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1, 90, 'dd', false);
INSERT INTO public.galaxy VALUES (3, 'galaxy2', 2, 90, 'dd', false);
INSERT INTO public.galaxy VALUES (4, 'galaxy3', 3, 90, 'dd', false);
INSERT INTO public.galaxy VALUES (5, 'galaxy4', 4, 90, 'dd', false);
INSERT INTO public.galaxy VALUES (7, 'galaxy5', 5, 90, 'dd', false);
INSERT INTO public.galaxy VALUES (8, 'galaxy6', 6, 90, 'dd', false);
INSERT INTO public.galaxy VALUES (10, 'galaxy7', 7, 90, 'dd', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 3, 1, 40, 'oo', false);
INSERT INTO public.moon VALUES (2, 'moon2', 3, 2, 40, 'oo', false);
INSERT INTO public.moon VALUES (3, 'moon3', 3, 3, 40, 'oo', false);
INSERT INTO public.moon VALUES (4, 'moon4', 3, 4, 40, 'oo', false);
INSERT INTO public.moon VALUES (5, 'moon5', 3, 5, 40, 'oo', false);
INSERT INTO public.moon VALUES (6, 'moon6', 3, 6, 40, 'oo', false);
INSERT INTO public.moon VALUES (7, 'moon7', 3, 7, 40, 'oo', false);
INSERT INTO public.moon VALUES (8, 'moon8', 3, 8, 40, 'oo', false);
INSERT INTO public.moon VALUES (9, 'moon9', 3, 9, 40, 'oo', false);
INSERT INTO public.moon VALUES (10, 'moon10', 3, 10, 40, 'oo', false);
INSERT INTO public.moon VALUES (11, 'moon11', 3, 11, 40, 'oo', false);
INSERT INTO public.moon VALUES (12, 'moon12', 3, 12, 40, 'oo', false);
INSERT INTO public.moon VALUES (13, 'moon13', 3, 13, 40, 'oo', false);
INSERT INTO public.moon VALUES (14, 'moon14', 3, 14, 40, 'oo', false);
INSERT INTO public.moon VALUES (15, 'moon15', 3, 15, 40, 'oo', false);
INSERT INTO public.moon VALUES (16, 'moon16', 3, 16, 40, 'oo', false);
INSERT INTO public.moon VALUES (17, 'moon17', 3, 17, 40, 'oo', false);
INSERT INTO public.moon VALUES (18, 'moon18', 3, 18, 40, 'oo', false);
INSERT INTO public.moon VALUES (19, 'moon19', 3, 19, 40, 'oo', false);
INSERT INTO public.moon VALUES (20, 'moon20', 3, 20, 40, 'oo', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'star1', 1, 1, 10, 'rr', false);
INSERT INTO public.planet VALUES (2, 'star2', 1, 2, 10, 'rr', false);
INSERT INTO public.planet VALUES (3, 'star3', 1, 3, 10, 'rr', false);
INSERT INTO public.planet VALUES (4, 'star4', 1, 4, 10, 'rr', false);
INSERT INTO public.planet VALUES (5, 'star5', 1, 5, 10, 'rr', false);
INSERT INTO public.planet VALUES (6, 'star6', 1, 6, 10, 'rr', false);
INSERT INTO public.planet VALUES (7, 'star7', 1, 7, 10, 'rr', false);
INSERT INTO public.planet VALUES (8, 'star8', 1, 8, 10, 'rr', false);
INSERT INTO public.planet VALUES (9, 'star9', 1, 9, 10, 'rr', false);
INSERT INTO public.planet VALUES (10, 'star10', 1, 10, 10, 'rr', false);
INSERT INTO public.planet VALUES (11, 'star11', 1, 11, 10, 'rr', false);
INSERT INTO public.planet VALUES (12, 'star12', 1, 12, 10, 'rr', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'planet1', 1, 1, 50, 'uu', false);
INSERT INTO public.star VALUES (2, 'planet2', 1, 2, 50, 'uu', false);
INSERT INTO public.star VALUES (3, 'planet3', 1, 3, 50, 'uu', false);
INSERT INTO public.star VALUES (4, 'planet4', 1, 4, 50, 'uu', false);
INSERT INTO public.star VALUES (5, 'planet5', 1, 5, 50, 'uu', false);
INSERT INTO public.star VALUES (6, 'planet6', 1, 6, 50, 'uu', false);
INSERT INTO public.star VALUES (7, 'planet7', 1, 7, 50, 'uu', false);
INSERT INTO public.star VALUES (8, 'planet8', 1, 8, 50, 'uu', false);
INSERT INTO public.star VALUES (9, 'planet9', 1, 9, 50, 'uu', false);
INSERT INTO public.star VALUES (10, 'planet10', 4, 10, 50, 'uu', false);
INSERT INTO public.star VALUES (11, 'planet11', 3, 11, 50, 'uu', false);
INSERT INTO public.star VALUES (13, 'planet12', 3, 12, 50, 'uu', false);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: earth earth_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_id_key UNIQUE (name_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_id_key UNIQUE (name_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_id_key UNIQUE (name_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_id_key UNIQUE (name_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_id_key UNIQUE (name_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

