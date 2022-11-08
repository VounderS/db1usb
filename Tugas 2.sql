toc.dat                                                                                             0000600 0004000 0002000 00000014034 14332413420 0014435 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           -             
    z            siakad    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16397    siakad    DATABASE     �   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE siakad;
                postgres    false         �            1259    16414    dosen    TABLE     z   CREATE TABLE public.dosen (
    nip integer NOT NULL,
    nama character varying(20),
    alamat character varying(30)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false         �            1259    16413    dosen_nip_seq    SEQUENCE     �   CREATE SEQUENCE public.dosen_nip_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dosen_nip_seq;
       public          postgres    false    219                    0    0    dosen_nip_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dosen_nip_seq OWNED BY public.dosen.nip;
          public          postgres    false    218         �            1259    16400 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false         �            1259    16399    mahasiswa_nim_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    215                    0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    214         �            1259    16407    mk    TABLE     k   CREATE TABLE public.mk (
    idmk integer NOT NULL,
    namamk character varying(15),
    nilai integer
);
    DROP TABLE public.mk;
       public         heap    postgres    false         �            1259    16406    mk_idmk_seq    SEQUENCE     �   CREATE SEQUENCE public.mk_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mk_idmk_seq;
       public          postgres    false    217                    0    0    mk_idmk_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mk_idmk_seq OWNED BY public.mk.idmk;
          public          postgres    false    216         q           2604    16420 	   dosen nip    DEFAULT     f   ALTER TABLE ONLY public.dosen ALTER COLUMN nip SET DEFAULT nextval('public.dosen_nip_seq'::regclass);
 8   ALTER TABLE public.dosen ALTER COLUMN nip DROP DEFAULT;
       public          postgres    false    218    219    219         o           2604    16421    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    215    214    215         p           2604    16422    mk idmk    DEFAULT     b   ALTER TABLE ONLY public.mk ALTER COLUMN idmk SET DEFAULT nextval('public.mk_idmk_seq'::regclass);
 6   ALTER TABLE public.mk ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    216    217    217                   0    16414    dosen 
   TABLE DATA           2   COPY public.dosen (nip, nama, alamat) FROM stdin;
    public          postgres    false    219       3339.dat           0    16400 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    215       3335.dat 	          0    16407    mk 
   TABLE DATA           1   COPY public.mk (idmk, namamk, nilai) FROM stdin;
    public          postgres    false    217       3337.dat            0    0    dosen_nip_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dosen_nip_seq', 1, false);
          public          postgres    false    218                    0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    214                    0    0    mk_idmk_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mk_idmk_seq', 1, false);
          public          postgres    false    216         w           2606    16419    dosen dosen_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (nip);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    219         s           2606    16405    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    215         u           2606    16412 
   mk mk_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.mk
    ADD CONSTRAINT mk_pkey PRIMARY KEY (idmk);
 4   ALTER TABLE ONLY public.mk DROP CONSTRAINT mk_pkey;
       public            postgres    false    217                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            3339.dat                                                                                            0000600 0004000 0002000 00000000047 14332413420 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        19001	Jaki	Mamuju
19002	Siti	Bone
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3335.dat                                                                                            0000600 0004000 0002000 00000000055 14332413420 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        221001	Fadhil	Mamuju
221002	Joko	Majene
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   3337.dat                                                                                            0000600 0004000 0002000 00000000055 14332413420 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        101	Matematika	80
102	Bahasa Inggris	90
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000012425 14332413420 0015364 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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

DROP DATABASE siakad;
--
-- Name: siakad; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE siakad OWNER TO postgres;

\connect siakad

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
-- Name: dosen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dosen (
    nip integer NOT NULL,
    nama character varying(20),
    alamat character varying(30)
);


ALTER TABLE public.dosen OWNER TO postgres;

--
-- Name: dosen_nip_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dosen_nip_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dosen_nip_seq OWNER TO postgres;

--
-- Name: dosen_nip_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dosen_nip_seq OWNED BY public.dosen.nip;


--
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);


ALTER TABLE public.mahasiswa OWNER TO postgres;

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mahasiswa_nim_seq OWNER TO postgres;

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;


--
-- Name: mk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mk (
    idmk integer NOT NULL,
    namamk character varying(15),
    nilai integer
);


ALTER TABLE public.mk OWNER TO postgres;

--
-- Name: mk_idmk_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mk_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mk_idmk_seq OWNER TO postgres;

--
-- Name: mk_idmk_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mk_idmk_seq OWNED BY public.mk.idmk;


--
-- Name: dosen nip; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dosen ALTER COLUMN nip SET DEFAULT nextval('public.dosen_nip_seq'::regclass);


--
-- Name: mahasiswa nim; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);


--
-- Name: mk idmk; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mk ALTER COLUMN idmk SET DEFAULT nextval('public.mk_idmk_seq'::regclass);


--
-- Data for Name: dosen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dosen (nip, nama, alamat) FROM stdin;
\.
COPY public.dosen (nip, nama, alamat) FROM '$$PATH$$/3339.dat';

--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
\.
COPY public.mahasiswa (nim, nama, alamat) FROM '$$PATH$$/3335.dat';

--
-- Data for Name: mk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mk (idmk, namamk, nilai) FROM stdin;
\.
COPY public.mk (idmk, namamk, nilai) FROM '$$PATH$$/3337.dat';

--
-- Name: dosen_nip_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.dosen_nip_seq', 1, false);


--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);


--
-- Name: mk_idmk_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mk_idmk_seq', 1, false);


--
-- Name: dosen dosen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (nip);


--
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);


--
-- Name: mk mk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mk
    ADD CONSTRAINT mk_pkey PRIMARY KEY (idmk);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           