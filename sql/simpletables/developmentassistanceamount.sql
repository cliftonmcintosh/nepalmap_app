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


ALTER TABLE IF EXISTS ONLY public.development_assistance_amount DROP CONSTRAINT IF EXISTS development_assistance_amount_pkey;
DROP TABLE IF EXISTS public.development_assistance_amount;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: development_assistance_amount; Type: TABLE; Schema: public; Tablespace:
--

CREATE TABLE development_assistance_amount (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "US dollars disbursed" INTEGER NOT NULL
);


--
-- Data for Name: development_assistance_amount; Type: TABLE DATA; Schema: public
--

COPY development_assistance_amount ("US dollars disbursed", geo_code, geo_level) FROM stdin WITH DELIMITER ',';
7539172,01,district
6906249,02,district
4487254,03,district
6102677,04,district
8446967,05,district
5544636,06,district
4915066,07,district
4895143,08,district
8290841,09,district
10132506,10,district
9608955,11,district
11153857,12,district
8278267,13,district
9749020,14,district
8483477,15,district
8403755,16,district
8473649,17,district
12973876,18,district
15111624,19,district
8655658,20,district
13618294,21,district
9982537,22,district
17899956,23,district
24984892,24,district
19992553,25,district
15787658,26,district
32834907,27,district
8911844,28,district
17166531,29,district
8803638,30,district
9053926,31,district
8637699,32,district
9021779,33,district
12391263,34,district
8133348,35,district
4904609,36,district
5214298,37,district
5040644,38,district
3761757,39,district
6523637,40,district
5523399,41,district
5995500,42,district
7011241,43,district
19181031,44,district
3321446,45,district
3010109,46,district
4082775,47,district
3007535,48,district
5893656,49,district
6083191,50,district
7399710,51,district
4110981,52,district
7387732,53,district
5991058,54,district
8540196,55,district
7808219,56,district
6063721,57,district
5517304,58,district
6135778,59,district
5583222,60,district
6307823,61,district
7147665,62,district
11106774,63,district
10048087,64,district
10631680,65,district
5399795,66,district
12828555,67,district
9852440,68,district
8326755,69,district
10327151,70,district
16427064,71,district
6823779,72,district
12975000,73,district
11295179,74,district
7851415,75,district
\.


--
-- Name: development_assistance_amount_pkey; Type: CONSTRAINT; Schema: public; Tablespace:
--

ALTER TABLE ONLY development_assistance_amount
    ADD CONSTRAINT development_assistance_amount_pkey PRIMARY KEY (geo_level, geo_code);


--
-- PostgreSQL database dump complete
--

