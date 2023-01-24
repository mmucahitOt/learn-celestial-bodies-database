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
-- Name: astroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroid (
    astroid_id integer NOT NULL,
    name character varying(10) NOT NULL,
    radius integer NOT NULL
);


ALTER TABLE public.astroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life numeric(1,0),
    distance_from_earth integer,
    is_spherical boolean,
    is_hot boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life numeric(1,0),
    distance_from_earth integer,
    is_spherical boolean,
    is_hot boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_types character(10),
    description text,
    age_in_millions_of_years integer,
    has_life numeric(1,0),
    distance_from_earth integer,
    is_spherical boolean,
    is_hot boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    has_life numeric(1,0),
    distance_from_earth integer,
    is_spherical boolean,
    is_hot boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: astroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroid VALUES (1, 'astroid_1', 1);
INSERT INTO public.astroid VALUES (2, 'astroid_2', 2);
INSERT INTO public.astroid VALUES (3, 'astroid_3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxy_7', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'galaxy_8', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'galaxy_9', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'galaxy_11', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'galaxy_12', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'galaxy_13', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'galaxy_14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'galaxy_15', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'galaxy_16', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'galaxy_17', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'galaxy_19', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'galaxy_20', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'galaxy_10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, 'galaxy_21', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'planet_1', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'planet_2', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'planet_3', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'planet_4', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'planet_5', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'planet_6', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'planet_7', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'planet_8', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'planet_9', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'planet_10', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'planet_11', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'planet_12', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'planet_13', NULL, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'planet_14', NULL, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'planet_15', NULL, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'planet_16', NULL, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'planet_17', NULL, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (21, 'planet_21', NULL, NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO public.moon VALUES (19, 'planet_19', NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, 'planet_20', NULL, NULL, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet_2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet_3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planet_4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planet_5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (9, 'planet_9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (6, 'planet_6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planet_7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'planet_8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (10, 'planet_10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'planet_11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'planet_12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'planet_13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'planet_14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'planet_15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'planet_16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'planet_17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (19, 'planet_19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, 'planet_20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.planet VALUES (21, 'planet_21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star_2', NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'star_3', NULL, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'star_4', NULL, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'star_5', NULL, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'star_6', NULL, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (7, 'star_7', NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, 'star_8', NULL, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, 'star_9', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (11, 'star_11', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, 'star_12', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, 'star_13', NULL, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, 'star_14', NULL, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, 'star_15', NULL, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, 'star_16', NULL, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, 'star_17', NULL, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (19, 'star_19', NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, 'star_20', NULL, NULL, NULL, NULL, NULL, NULL, 20);
INSERT INTO public.star VALUES (21, 'star_21', NULL, NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO public.star VALUES (10, 'star_10', NULL, NULL, NULL, NULL, NULL, NULL, 10);


--
-- Name: astroid astroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_name_key UNIQUE (name);


--
-- Name: astroid astroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_pkey PRIMARY KEY (astroid_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_key UNIQUE (planet_types);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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

