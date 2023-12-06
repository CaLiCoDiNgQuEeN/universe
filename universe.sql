--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    constellation text NOT NULL,
    distance_from_earth_in_lightyears integer,
    discovery_year integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_more_info (
    galaxy_more_info_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    how_many_stars integer,
    how_many_planets integer
);


ALTER TABLE public.galaxy_more_info OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    discovery_year integer,
    discovered_by text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_moon boolean NOT NULL,
    how_far_from_earth_in_km integer NOT NULL,
    greek_god_name text,
    how_many_moons integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age numeric(4,2),
    is_in_milkyway boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (100, 'ANTENNAE GALAXIES', 'CORVUS', 45000000, 1785);
INSERT INTO public.galaxy VALUES (200, 'ANDROMEDA GALAXY', 'ANDROMEDA', 2500000, 1612);
INSERT INTO public.galaxy VALUES (300, 'BACKWARD GALAXY', 'CENTAURUS', 111000000, 2001);
INSERT INTO public.galaxy VALUES (400, 'BLACK EYE GALAXY', 'COMA BERENICES', 1700000, 1779);
INSERT INTO public.galaxy VALUES (500, 'BODES GALAXY', 'URSA MAJOR', 11600000, 1774);
INSERT INTO public.galaxy VALUES (600, 'BUTTERFLY GALAXIES', 'VIRGO', 6000000, 1784);
INSERT INTO public.galaxy VALUES (700, 'CARTWHEEL GALAXY', 'SCULPTOR', 5000000, 1941);
INSERT INTO public.galaxy VALUES (800, 'CIRCINUS GALAXY', 'CIRCINUS', 13000000, 1977);
INSERT INTO public.galaxy VALUES (900, 'CONDOR GALAXY', 'PAVO', 21200000, 1835);
INSERT INTO public.galaxy VALUES (1000, 'COSMOS REDSHIFT 7', 'SEXTANS', 12900000, 1835);
INSERT INTO public.galaxy VALUES (1100, 'EYE OF SAURON', 'CANES VENATICI', 5200000, 1787);
INSERT INTO public.galaxy VALUES (1200, 'FIREWORKS GALAXY', 'CYGNUS AND CEPHEUS', 25200000, 1798);
INSERT INTO public.galaxy VALUES (1300, 'HOCKEYSTICK GALAXIES', 'SERPENS CAPUT', 3000000, 2005);
INSERT INTO public.galaxy VALUES (1400, 'LARGE MAGELLANIC CLOUD', 'DORADO/MENSA', 200000, 1519);
INSERT INTO public.galaxy VALUES (1500, 'LINDSAY-SHAPLEY RING', 'VOLANS', 30000000, 2003);
INSERT INTO public.galaxy VALUES (1600, 'LITTLE SOMBRERO GALAXY', 'PEGASUS', 400000, 1784);
INSERT INTO public.galaxy VALUES (1700, 'SMALL MAGELLANIC CLOUD', 'TUCANA', 200000, 1519);
INSERT INTO public.galaxy VALUES (1800, 'MILKY WAY', 'SAGITTARIUS', 0, 1920);
INSERT INTO public.galaxy VALUES (1900, 'SOUTHERN PINWHEEL GALAXY', 'HYDRA', 15000000, 1752);
INSERT INTO public.galaxy VALUES (2000, 'TADPOLE GALAXY', 'DRACO', 420000, 1982);


--
-- Data for Name: galaxy_more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_more_info VALUES (1, 'MILKY WAY', 100, 10000000, 43);
INSERT INTO public.galaxy_more_info VALUES (2, 'ANDROMEDA GALAXY', 200, 320088, 58);
INSERT INTO public.galaxy_more_info VALUES (3, 'LARGE MAGELLANIC CLOUD', 300, 436759, 239);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'THE MOON', 3, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'DEIMOS', 4, 1877, 'ASAPH HALL');
INSERT INTO public.moon VALUES (23, 'PHOBOS', 4, 1877, 'ASAPH HALL');
INSERT INTO public.moon VALUES (24, 'CALLISTO', 5, 1610, 'GALILEO GALILEI');
INSERT INTO public.moon VALUES (25, 'EUROPA', 5, 1610, 'GALILEO GALILEI');
INSERT INTO public.moon VALUES (26, 'GANYMEDE', 5, 1610, 'GALILEO GALILE');
INSERT INTO public.moon VALUES (27, 'LO', 5, 1610, 'GALILEO GALILEI');
INSERT INTO public.moon VALUES (28, 'DIONE', 6, 1684, 'GD CASSINI');
INSERT INTO public.moon VALUES (29, 'ENCELADUS', 6, 1789, 'WILLIAM HERSCHEL');
INSERT INTO public.moon VALUES (30, 'HYPERION', 6, 1884, 'W & G GOND, W. LASSELL');
INSERT INTO public.moon VALUES (31, 'LAPETUS', 6, 1671, 'GD CASSINI');
INSERT INTO public.moon VALUES (32, 'JANUS', 6, 1966, 'AUDOUIN DOLLFUS');
INSERT INTO public.moon VALUES (33, 'MIMAS', 6, 1789, 'WILLIAM HERSCHEL');
INSERT INTO public.moon VALUES (34, 'PHOEBE', 6, 1898, 'W.PICKERING');
INSERT INTO public.moon VALUES (35, 'RHEA', 6, 1672, 'G.D CASSINI');
INSERT INTO public.moon VALUES (36, 'TETHYS', 6, 1684, 'G.D CASSINI');
INSERT INTO public.moon VALUES (37, 'TITAN', 6, 1655, 'CHRISTIANN HUYGENS');
INSERT INTO public.moon VALUES (38, 'ARIEL', 7, 1851, 'WILLIAM LASSELL');
INSERT INTO public.moon VALUES (39, 'OVERON', 7, 1787, 'WILLIAM HERSCHEL');
INSERT INTO public.moon VALUES (40, 'UMBRIEL', 7, 1787, 'WILLIAM HERSCHEL');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'MERCURY', false, 77000000, 'HERMES', 0, 11);
INSERT INTO public.planet VALUES (2, 'VENUS', false, 61000000, 'APHRODITE', 0, 12);
INSERT INTO public.planet VALUES (3, 'EARTH', true, 0, 'GAEA', 1, 13);
INSERT INTO public.planet VALUES (4, 'MARS', true, 54600000, 'ARES', 2, 14);
INSERT INTO public.planet VALUES (5, 'JUPITER', true, 58800000, 'DIAS', 79, 15);
INSERT INTO public.planet VALUES (6, 'SATURN', true, 142700000, 'CRONUS', 82, 16);
INSERT INTO public.planet VALUES (7, 'URANUS', true, 26000000, 'OURANOS', 27, 17);
INSERT INTO public.planet VALUES (8, 'NEPTUNE', true, 4300000, 'POSEIDON', 14, 18);
INSERT INTO public.planet VALUES (9, 'PLUTO', true, 7450000, 'HADES', 5, 19);
INSERT INTO public.planet VALUES (10, 'ERIS', true, 14410000, 'ERIS', 1, 20);
INSERT INTO public.planet VALUES (11, 'HAUMEA', true, 64567000, NULL, 2, 21);
INSERT INTO public.planet VALUES (12, 'MAKEMAKE', true, 68456700, NULL, 1, 22);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (11, 'SUN', 32.15, true, 100);
INSERT INTO public.star VALUES (12, 'ALPHA CENAURI', 54.23, true, 200);
INSERT INTO public.star VALUES (13, 'SIRIUS', 67.36, false, 300);
INSERT INTO public.star VALUES (14, 'POLARIS', 76.32, false, 400);
INSERT INTO public.star VALUES (15, 'BELTELGEUSE', 77.23, true, 500);
INSERT INTO public.star VALUES (16, 'RIGEL', 23.11, true, 600);
INSERT INTO public.star VALUES (17, 'VEGA', 36.22, false, 700);
INSERT INTO public.star VALUES (18, 'ALTAIR', 57.33, true, 800);
INSERT INTO public.star VALUES (19, 'ACTURUS', 56.99, false, 900);
INSERT INTO public.star VALUES (20, 'PLEIADES', 77.45, true, 1000);
INSERT INTO public.star VALUES (21, 'ALDEBARAN', 65.34, false, 1100);
INSERT INTO public.star VALUES (22, 'ANTARES', 59.43, true, 1200);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy_more_info galaxy_more_info_galaxy_more_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_more_info
    ADD CONSTRAINT galaxy_more_info_galaxy_more_info_id_key UNIQUE (galaxy_more_info_id);


--
-- Name: galaxy_more_info galaxy_more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_more_info
    ADD CONSTRAINT galaxy_more_info_name_key UNIQUE (name);


--
-- Name: galaxy_more_info galaxy_more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_more_info
    ADD CONSTRAINT galaxy_more_info_pkey PRIMARY KEY (galaxy_more_info_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

