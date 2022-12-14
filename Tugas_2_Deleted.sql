PGDMP     7                
    z            siakad    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24645    siakad    DATABASE     ?   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    24646    dosen    TABLE     z   CREATE TABLE public.dosen (
    nip integer NOT NULL,
    nama character varying(20),
    alamat character varying(30)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    24649    dosen_nip_seq    SEQUENCE     ?   CREATE SEQUENCE public.dosen_nip_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dosen_nip_seq;
       public          postgres    false    214                       0    0    dosen_nip_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dosen_nip_seq OWNED BY public.dosen.nip;
          public          postgres    false    215            ?            1259    24650 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    24653    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    216                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    217            ?            1259    24654    mk    TABLE     k   CREATE TABLE public.mk (
    idmk integer NOT NULL,
    namamk character varying(15),
    nilai integer
);
    DROP TABLE public.mk;
       public         heap    postgres    false            ?            1259    24657    mk_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.mk_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mk_idmk_seq;
       public          postgres    false    218                       0    0    mk_idmk_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mk_idmk_seq OWNED BY public.mk.idmk;
          public          postgres    false    219            o           2604    24658 	   dosen nip    DEFAULT     f   ALTER TABLE ONLY public.dosen ALTER COLUMN nip SET DEFAULT nextval('public.dosen_nip_seq'::regclass);
 8   ALTER TABLE public.dosen ALTER COLUMN nip DROP DEFAULT;
       public          postgres    false    215    214            p           2604    24659    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    217    216            q           2604    24660    mk idmk    DEFAULT     b   ALTER TABLE ONLY public.mk ALTER COLUMN idmk SET DEFAULT nextval('public.mk_idmk_seq'::regclass);
 6   ALTER TABLE public.mk ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    219    218                      0    24646    dosen 
   TABLE DATA           2   COPY public.dosen (nip, nama, alamat) FROM stdin;
    public          postgres    false    214   P                 0    24650 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    216   }       
          0    24654    mk 
   TABLE DATA           1   COPY public.mk (idmk, namamk, nilai) FROM stdin;
    public          postgres    false    218   ?                  0    0    dosen_nip_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dosen_nip_seq', 1, false);
          public          postgres    false    215                       0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    217                       0    0    mk_idmk_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.mk_idmk_seq', 1, false);
          public          postgres    false    219            s           2606    24662    dosen dosen_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (nip);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    214            u           2606    24664    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    216            w           2606    24666 
   mk mk_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.mk
    ADD CONSTRAINT mk_pkey PRIMARY KEY (idmk);
 4   ALTER TABLE ONLY public.mk DROP CONSTRAINT mk_pkey;
       public            postgres    false    218                  x?3?400??,??t??K?????? 8??             x?322400???????M?J?K?????? J??      
   #   x?340?tJ?H,NT??KO/?,??4?????? jX?     