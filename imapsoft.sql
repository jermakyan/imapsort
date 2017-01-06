--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.8
-- Dumped by pg_dump version 9.5.5

-- Started on 2017-01-06 15:55:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1999 (class 1262 OID 24576)
-- Dependencies: 1998
-- Name: imapsoft; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE imapsoft IS 'for project imapsoft';


--
-- TOC entry 1 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2002 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 32770)
-- Name: test2; Type: TABLE; Schema: public; Owner: imapsoft
--

CREATE TABLE test2 (
    id smallint NOT NULL,
    number text,
    "timestamp" text,
    email text,
    summa integer
);


ALTER TABLE test2 OWNER TO imapsoft;

--
-- TOC entry 173 (class 1259 OID 32768)
-- Name: test2_id_seq; Type: SEQUENCE; Schema: public; Owner: imapsoft
--

CREATE SEQUENCE test2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE test2_id_seq OWNER TO imapsoft;

--
-- TOC entry 2003 (class 0 OID 0)
-- Dependencies: 173
-- Name: test2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: imapsoft
--

ALTER SEQUENCE test2_id_seq OWNED BY test2.id;


--
-- TOC entry 1882 (class 2604 OID 32773)
-- Name: id; Type: DEFAULT; Schema: public; Owner: imapsoft
--

ALTER TABLE ONLY test2 ALTER COLUMN id SET DEFAULT nextval('test2_id_seq'::regclass);


--
-- TOC entry 1993 (class 0 OID 32770)
-- Dependencies: 174
-- Data for Name: test2; Type: TABLE DATA; Schema: public; Owner: imapsoft
--

COPY test2 (id, number, "timestamp", email, summa) FROM stdin;
1	123456781234123	2016.10.10 12:45:67	admin@platbox.com	100
2	130916337	\N	\N	100
3	130912462	\N	\N	2800
4	130914173	\N	\N	100
5	140916337	\N	wrg_stasonoff81@mail.ru	400
6	140912462	\N	wrg_vladimir_shubin_1968@mail.ru	2800
7	140914173	\N	wrg_sashok_91_p@bk.ru	500
8	140916337	13.09.2016 20:35:48	wrg_stasonoff81@mail.ru	400
9	140912462	13.09.2016 20:22:25	wrg_vladimir_shubin_1968@mail.ru	2800
10	140914173	13.09.2016 11:33:32	wrg_sashok_91_p@bk.ru	500
11	140916337	13.09.2016 20:35:48	wrg_stasonoff81@mail.ru	400
12	140912462	13.09.2016 20:22:25	wrg_vladimir_shubin_1968@mail.ru	2800
13	140914173	13.09.2016 11:33:32	wrg_sashok_91_p@bk.ru	500
14	130916151802262501\t13.09.2016\t15:17:32\twrg_Roman_Belousov_1972@mail.ru\t100.00			0
15	130916135252832626\t13.09.2016\t13:52:34\twrg_Muerto.80@mail.ru\t200.00			0
16	130916151802262501	\t13.09.2016\t15:17:32	\twrg_Roman_Belousov_1972@mail.ru	100
17	130916135252832626	\t13.09.2016\t13:52:34	\twrg_Muerto.80@mail.ru	200
18	130916145311992145	\t13.09.2016\t14:52:53	\twrg_Zilafer131101@gmail.com	600
19	130916143555912117	\t13.09.2016\t14:35:13	\twrg_Misericord-76@yandex.ru	100
20	130916153221782998	\t13.09.2016\t15:31:25	\twrg_Kishma79@mail.ru	600
21	130916155313552590	\t13.09.2016\t15:52:49	\twrg_vanechka.volov@mail.ru	100
\.


--
-- TOC entry 2004 (class 0 OID 0)
-- Dependencies: 173
-- Name: test2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: imapsoft
--

SELECT pg_catalog.setval('test2_id_seq', 21, true);


--
-- TOC entry 2001 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-01-06 15:55:15

--
-- PostgreSQL database dump complete
--

