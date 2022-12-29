--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-28 22:08:40

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
-- TOC entry 217 (class 1259 OID 24791)
-- Name: pelanggan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama character varying(30),
    umur integer
);


ALTER TABLE public.pelanggan OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24790)
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelanggan_id_pelanggan_seq OWNER TO postgres;

--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 216
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;


--
-- TOC entry 219 (class 1259 OID 24798)
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    id_pesanan integer NOT NULL,
    id_produk integer,
    id_pelanggan integer,
    jumlahbarang integer,
    tanggalpesanan date
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24797)
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_id_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pesanan_id_pesanan_seq OWNER TO postgres;

--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 218
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_id_pesanan_seq OWNED BY public.pesanan.id_pesanan;


--
-- TOC entry 215 (class 1259 OID 24784)
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    no_produk integer NOT NULL,
    namaproduk character varying(30),
    hargabeli integer,
    hargajual integer
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24783)
-- Name: produk_no_produk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_no_produk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produk_no_produk_seq OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 214
-- Name: produk_no_produk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_no_produk_seq OWNED BY public.produk.no_produk;


--
-- TOC entry 3184 (class 2604 OID 24794)
-- Name: pelanggan id_pelanggan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 24801)
-- Name: pesanan id_pesanan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN id_pesanan SET DEFAULT nextval('public.pesanan_id_pesanan_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 24787)
-- Name: produk no_produk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN no_produk SET DEFAULT nextval('public.produk_no_produk_seq'::regclass);


--
-- TOC entry 3337 (class 0 OID 24791)
-- Dependencies: 217
-- Data for Name: pelanggan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelanggan (id_pelanggan, nama, umur) FROM stdin;
1	Joko	19
2	Jaki	20
3	Andre	16
4	Bayu	18
5	Yuda	16
6	Bagas	17
7	Giring	23
8	Agus	21
9	Yoga	21
10	Fajrul	18
11	Fikri	19
12	Parto	16
13	Melinda	15
14	Ayu	19
15	Melisa	19
\.


--
-- TOC entry 3339 (class 0 OID 24798)
-- Dependencies: 219
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (id_pesanan, id_produk, id_pelanggan, jumlahbarang, tanggalpesanan) FROM stdin;
1	2	3	1	2022-12-10
2	1	5	2	2022-12-10
3	3	1	1	2022-12-10
4	14	11	3	2022-12-11
5	15	5	1	2022-12-11
6	5	6	1	2022-12-11
7	3	4	2	2022-12-11
8	6	14	3	2022-12-12
9	11	12	1	2022-12-12
10	12	4	4	2022-12-12
11	2	3	1	2022-12-13
12	1	5	2	2022-12-13
13	3	1	1	2022-12-14
14	14	11	3	2022-12-14
15	15	5	1	2022-12-14
\.


--
-- TOC entry 3335 (class 0 OID 24784)
-- Dependencies: 215
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (no_produk, namaproduk, hargabeli, hargajual) FROM stdin;
1	Keyboard	100000	200000
2	Flashdisk	100000	150000
3	Mouse	100000	200000
4	Kabel OTG	15000	20000
5	Charger	200000	300000
6	VGA	500000	600000
7	Printer	600000	700000
8	Hardisk	300000	400000
9	Earphone	200000	250000
10	RAM	200000	250000
11	Processor	450000	600000
12	Cooling System	300000	400000
13	Monitor	500000	650000
14	SSD	500000	600000
15	Fan	200000	250000
\.


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 216
-- Name: pelanggan_id_pelanggan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 15, true);


--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 218
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_id_pesanan_seq', 15, true);


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 214
-- Name: produk_no_produk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_no_produk_seq', 15, true);


--
-- TOC entry 3189 (class 2606 OID 24796)
-- Name: pelanggan pelanggan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);


--
-- TOC entry 3191 (class 2606 OID 24803)
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (id_pesanan);


--
-- TOC entry 3187 (class 2606 OID 24789)
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (no_produk);


-- Completed on 2022-12-28 22:08:43

--
-- PostgreSQL database dump complete
--

