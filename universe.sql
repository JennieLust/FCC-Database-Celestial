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
    name character varying(30) NOT NULL,
    density integer,
    distance_from_earth numeric(10,2),
    shape text
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
    density integer,
    distance_from_earth numeric(10,2),
    planet_id integer
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
    density integer,
    distance_from_earth numeric(10,2),
    description text,
    has_atmosphere boolean,
    has_moon boolean,
    star_id integer
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
    density integer,
    distance_from_earth numeric(10,2),
    galaxy_id integer
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
-- Name: supernovas; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernovas (
    supernovas_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    description text,
    date_observed date
);


ALTER TABLE public.supernovas OWNER TO freecodecamp;

--
-- Name: supernovas_supernovas_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supernovas_supernovas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supernovas_supernovas_id_seq OWNER TO freecodecamp;

--
-- Name: supernovas_supernovas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supernovas_supernovas_id_seq OWNED BY public.supernovas.supernovas_id;


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
-- Name: supernovas supernovas_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovas ALTER COLUMN supernovas_id SET DEFAULT nextval('public.supernovas_supernovas_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', NULL, 0.00, NULL);
INSERT INTO public.galaxy VALUES (2, 'URSA MINOR DWARF', NULL, 225.00, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sirius', NULL, 8.60, NULL);
INSERT INTO public.galaxy VALUES (4, 'Alfa Centauri', NULL, 4.37, NULL);
INSERT INTO public.galaxy VALUES (5, 'Alfa Centauri', NULL, 4.37, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', NULL, 204.37, NULL);
INSERT INTO public.galaxy VALUES (7, 'Messier 82', NULL, 1100.50, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 0, 0.30, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'Ganymedes', NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Io', NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'Rhea', NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Hyperion', NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Japetus', NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Titania', NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', NULL, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Triton', NULL, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, 'The origin of humanity.', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', NULL, NULL, NULL, true, true, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.planet VALUES (5, 'Neptune', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.planet VALUES (6, 'Saturnus', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, true, NULL);
INSERT INTO public.planet VALUES (8, 'Venus', NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.planet VALUES (10, 'Ross 128 b', NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.planet VALUES (11, 'Wolf 1061c', NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.planet VALUES (12, 'Gliese 876 d', NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.planet VALUES (13, 'Gliese 823 c', NULL, NULL, NULL, NULL, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 333000, 8.32, 1);
INSERT INTO public.star VALUES (2, 'Alfa Ursae Minoris', 6, 434.00, 2);
INSERT INTO public.star VALUES (3, 'Sirius', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Alpha', NULL, NULL, 6);
INSERT INTO public.star VALUES (5, 'Made thiis up', NULL, NULL, 7);
INSERT INTO public.star VALUES (6, 'M31-RV', NULL, NULL, 6);


--
-- Data for Name: supernovas; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernovas VALUES (1, 'Keplers Star', NULL, NULL, NULL);
INSERT INTO public.supernovas VALUES (2, 'SN 2005ap', NULL, NULL, NULL);
INSERT INTO public.supernovas VALUES (3, 'SN 2008D', NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: supernovas_supernovas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supernovas_supernovas_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: supernovas supernovas_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovas
    ADD CONSTRAINT supernovas_pkey PRIMARY KEY (supernovas_id);


--
-- Name: supernovas supernovas_supernovas_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernovas
    ADD CONSTRAINT supernovas_supernovas_id_key UNIQUE (supernovas_id);


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

