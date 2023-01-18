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
    discovery_year integer NOT NULL,
    galaxy_types character varying(20) NOT NULL,
    constellation character varying(50) NOT NULL
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
-- Name: important_astronomers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.important_astronomers (
    important_astronomers_id integer NOT NULL,
    name character varying(50) NOT NULL,
    birth integer NOT NULL,
    death integer NOT NULL,
    description text
);


ALTER TABLE public.important_astronomers OWNER TO freecodecamp;

--
-- Name: important_astronomers_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.important_astronomers_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.important_astronomers_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: important_astronomers_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.important_astronomers_astronomer_id_seq OWNED BY public.important_astronomers.important_astronomers_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    gravity numeric NOT NULL,
    planet_id integer,
    orbital_period numeric NOT NULL
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
    is_livable boolean NOT NULL,
    is_terrestrial boolean NOT NULL,
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
    star_class character varying(20) NOT NULL,
    galaxy_id integer,
    distance_from_earth_lightyears numeric NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: important_astronomers important_astronomers_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.important_astronomers ALTER COLUMN important_astronomers_id SET DEFAULT nextval('public.important_astronomers_astronomer_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1610, 'spiral', 'Sagittarius, Orion, Scorpius, Carina and Ara');
INSERT INTO public.galaxy VALUES (2, 'Magellanic Clouds', 1519, 'irregular', 'Dorado, Mensa');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 1500, 'spiral', 'Andromeda');
INSERT INTO public.galaxy VALUES (4, 'Tadpole', 1982, 'spiral', 'Draco');
INSERT INTO public.galaxy VALUES (5, 'Sunflower', 1779, 'spiral', 'Canus venatici');
INSERT INTO public.galaxy VALUES (6, 'Porpoise', 1864, 'irregular', 'Hydra');


--
-- Data for Name: important_astronomers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.important_astronomers VALUES (5, 'Stephen Hawking', 1942, 2018, 'Hawking was an English theoretical physicist, cosmologist, and author who, at the time of his death, was director of research at the Centre for Theoretical Cosmology at the university of Cambridge. WHERE death=2018;
');
INSERT INTO public.important_astronomers VALUES (1, 'Galileo Galilei', 1564, 1642, 'Galileo was an Italian astronomer, physicist and engineer. he is called, sometimes, the father of observational astronomy, modern physics and the scientific method.');
INSERT INTO public.important_astronomers VALUES (2, 'Edwin Hubble', 1889, 1953, 'Hubble was an American astronomer. he player a crucial role in establishing the fields of extragalactic astronomy and observational cosmology.');
INSERT INTO public.important_astronomers VALUES (3, 'Nicollau Copernicus', 1473, 1543, 'copernicus was a Renaissance plymath, active as a mathematician, astronomer, and catholic canon, who formulated a model of the universe that placed the Sun rather than Earth at its center.');
INSERT INTO public.important_astronomers VALUES (4, 'Johannes Kepler', 1571, 1630, 'Kepler was a German astronomer, mathematician, astrologer, natural philosopher and writer on music. he is a key figure in the 17 century scientific revolution.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1.62, 1, 660);
INSERT INTO public.moon VALUES (2, 'Ganymede', 1.428, 6, 172);
INSERT INTO public.moon VALUES (3, 'Io', 1.796, 6, 42);
INSERT INTO public.moon VALUES (4, 'Phobos', 0.0057, 2, 8);
INSERT INTO public.moon VALUES (5, 'Mimas', 0.0064, 4, 23);
INSERT INTO public.moon VALUES (6, 'Europa', 1.315, 6, 85);
INSERT INTO public.moon VALUES (7, 'Titan', 1.352, 4, 380);
INSERT INTO public.moon VALUES (8, 'Enceladus', 0.113, 4, 33);
INSERT INTO public.moon VALUES (9, 'Iapetus', 0.223, 4, 1.900);
INSERT INTO public.moon VALUES (10, 'Triton', 0.779, 7, 141);
INSERT INTO public.moon VALUES (11, 'Umbriel', 0.2, 8, 99);
INSERT INTO public.moon VALUES (12, 'Phoebe', 0.049, 4, 13.200);
INSERT INTO public.moon VALUES (13, 'Amalthea', 0.02, 6, 12);
INSERT INTO public.moon VALUES (14, 'Eirene', 0.288, 6, 17.700);
INSERT INTO public.moon VALUES (15, 'Callisto', 1.236, 6, 400);
INSERT INTO public.moon VALUES (16, 'Pan', 0.0018, 4, 14);
INSERT INTO public.moon VALUES (17, 'Oberon', -0.354, 8, 320);
INSERT INTO public.moon VALUES (18, 'Dione', 0.232, 4, 66);
INSERT INTO public.moon VALUES (19, 'Ariel', 0.249, 8, 60);
INSERT INTO public.moon VALUES (20, 'Titania', 0.367, 8, 209);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', false, false, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, false, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', true, true, 4);
INSERT INTO public.planet VALUES (10, 'Proxima centauri d', false, true, 5);
INSERT INTO public.planet VALUES (11, 'Proxima centauri c', false, true, 5);
INSERT INTO public.planet VALUES (12, 'Proxima centauri b', true, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 1, 0.000015555);
INSERT INTO public.star VALUES (2, 'Antares', 'm1.5lab-lb', 1, 554.5);
INSERT INTO public.star VALUES (3, 'Vega', 'A0V', 1, 25.05);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M5.5 Ve', 1, 4.246);
INSERT INTO public.star VALUES (6, 'R71', 'LBV', 2, 2.2489);
INSERT INTO public.star VALUES (4, 'Kepler-452', 'G-V', 1, 1.402);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: important_astronomers_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.important_astronomers_astronomer_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: important_astronomers astro_important_astronomers_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.important_astronomers
    ADD CONSTRAINT astro_important_astronomers_id_key UNIQUE (important_astronomers_id);


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
-- Name: important_astronomers important_astronomers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.important_astronomers
    ADD CONSTRAINT important_astronomers_pkey PRIMARY KEY (important_astronomers_id);


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
-- Name: moon moon_orbiting_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_orbiting_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_orbiting_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_orbiting_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_current_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_current_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--