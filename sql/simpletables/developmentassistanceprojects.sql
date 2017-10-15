--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;


ALTER TABLE IF EXISTS ONLY public.development_assistance_projects DROP CONSTRAINT IF EXISTS development_assistance_projects_pkey;
DROP TABLE IF EXISTS public.development_assistance_projects;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: development_assistance_projects; Type: TABLE; Schema: public; Tablespace:
--

CREATE TABLE development_assistance_projects (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    projects INTEGER NOT NULL
);


--
-- Data for Name: development_assistance_projects; Type: TABLE DATA; Schema: public
--

COPY development_assistance_projects (geo_level, projects, geo_code) FROM stdin WITH DELIMITER ',';
district,18,01
district,23,02
district,24,03
district,27,04
district,23,05
district,16,06
district,22,07
district,20,08
district,30,09
district,31,10
district,28,11
district,38,12
district,33,13
district,27,14
district,28,15
district,30,16
district,37,17
district,48,18
district,49,19
district,37,20
district,40,21
district,37,22
district,41,23
district,49,24
district,37,25
district,38,26
district,55,27
district,26,28
district,33,29
district,36,30
district,34,31
district,31,32
district,31,33
district,38,34
district,37,35
district,19,36
district,17,37
district,17,38
district,11,39
district,25,40
district,19,41
district,22,42
district,20,43
district,36,44
district,15,45
district,17,46
district,25,47
district,12,48
district,23,49
district,17,50
district,25,51
district,30,52
district,31,53
district,32,54
district,38,55
district,30,56
district,29,57
district,30,58
district,29,59
district,38,60
district,29,61
district,34,62
district,43,63
district,48,64
district,44,65
district,36,66
district,33,67
district,48,68
district,38,69
district,39,70
district,52,71
district,27,72
district,43,73
district,41,74
district,34,75
\.


--
-- Name: development_assistance_projects_pkey; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY development_assistance_projects
    ADD CONSTRAINT development_assistance_projects_pkey PRIMARY KEY (geo_level, geo_code);


--
-- PostgreSQL database dump complete
--

