PGDMP     0                
    z            retail    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24667    retail    DATABASE     ?   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    24676    pegawai    TABLE     ?   CREATE TABLE public.pegawai (
    nopegawai integer NOT NULL,
    nama character varying(50),
    alamat character varying(50),
    email character varying(100),
    phone character varying(30),
    pekerjaan character varying(30)
);
    DROP TABLE public.pegawai;
       public         heap    postgres    false            ?            1259    24675    pegawai_nopegawai_seq    SEQUENCE     ?   CREATE SEQUENCE public.pegawai_nopegawai_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pegawai_nopegawai_seq;
       public          postgres    false    215                       0    0    pegawai_nopegawai_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pegawai_nopegawai_seq OWNED BY public.pegawai.nopegawai;
          public          postgres    false    214            ?            1259    24690 	   pelanggan    TABLE     ?   CREATE TABLE public.pelanggan (
    nopelanggan integer NOT NULL,
    nama character varying(50),
    phone character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            ?            1259    24689    pelanggan_nopelanggan_seq    SEQUENCE     ?   CREATE SEQUENCE public.pelanggan_nopelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.pelanggan_nopelanggan_seq;
       public          postgres    false    219                       0    0    pelanggan_nopelanggan_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.pelanggan_nopelanggan_seq OWNED BY public.pelanggan.nopelanggan;
          public          postgres    false    218            ?            1259    24704    pesanan    TABLE     ?   CREATE TABLE public.pesanan (
    nopesanan integer NOT NULL,
    tglpesanan date,
    nopelanggan integer,
    noproduk integer,
    jumlahpesanan integer
);
    DROP TABLE public.pesanan;
       public         heap    postgres    false            ?            1259    24703    pesanan_nopesanan_seq    SEQUENCE     ?   CREATE SEQUENCE public.pesanan_nopesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pesanan_nopesanan_seq;
       public          postgres    false    221                       0    0    pesanan_nopesanan_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pesanan_nopesanan_seq OWNED BY public.pesanan.nopesanan;
          public          postgres    false    220            ?            1259    24683    produk    TABLE     ?   CREATE TABLE public.produk (
    noproduk integer NOT NULL,
    namaproduk character varying(60),
    jumlah integer,
    harga numeric(8,2)
);
    DROP TABLE public.produk;
       public         heap    postgres    false            ?            1259    24682    produk_noproduk_seq    SEQUENCE     ?   CREATE SEQUENCE public.produk_noproduk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.produk_noproduk_seq;
       public          postgres    false    217                       0    0    produk_noproduk_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.produk_noproduk_seq OWNED BY public.produk.noproduk;
          public          postgres    false    216            t           2604    24679    pegawai nopegawai    DEFAULT     v   ALTER TABLE ONLY public.pegawai ALTER COLUMN nopegawai SET DEFAULT nextval('public.pegawai_nopegawai_seq'::regclass);
 @   ALTER TABLE public.pegawai ALTER COLUMN nopegawai DROP DEFAULT;
       public          postgres    false    215    214    215            v           2604    24693    pelanggan nopelanggan    DEFAULT     ~   ALTER TABLE ONLY public.pelanggan ALTER COLUMN nopelanggan SET DEFAULT nextval('public.pelanggan_nopelanggan_seq'::regclass);
 D   ALTER TABLE public.pelanggan ALTER COLUMN nopelanggan DROP DEFAULT;
       public          postgres    false    218    219    219            w           2604    24707    pesanan nopesanan    DEFAULT     v   ALTER TABLE ONLY public.pesanan ALTER COLUMN nopesanan SET DEFAULT nextval('public.pesanan_nopesanan_seq'::regclass);
 @   ALTER TABLE public.pesanan ALTER COLUMN nopesanan DROP DEFAULT;
       public          postgres    false    221    220    221            u           2604    24686    produk noproduk    DEFAULT     r   ALTER TABLE ONLY public.produk ALTER COLUMN noproduk SET DEFAULT nextval('public.produk_noproduk_seq'::regclass);
 >   ALTER TABLE public.produk ALTER COLUMN noproduk DROP DEFAULT;
       public          postgres    false    217    216    217                      0    24676    pegawai 
   TABLE DATA           S   COPY public.pegawai (nopegawai, nama, alamat, email, phone, pekerjaan) FROM stdin;
    public          postgres    false    215   ?"                 0    24690 	   pelanggan 
   TABLE DATA           E   COPY public.pelanggan (nopelanggan, nama, phone, alamat) FROM stdin;
    public          postgres    false    219   V#                 0    24704    pesanan 
   TABLE DATA           ^   COPY public.pesanan (nopesanan, tglpesanan, nopelanggan, noproduk, jumlahpesanan) FROM stdin;
    public          postgres    false    221   ?#                 0    24683    produk 
   TABLE DATA           E   COPY public.produk (noproduk, namaproduk, jumlah, harga) FROM stdin;
    public          postgres    false    217   7$                   0    0    pegawai_nopegawai_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pegawai_nopegawai_seq', 1, false);
          public          postgres    false    214            !           0    0    pelanggan_nopelanggan_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelanggan_nopelanggan_seq', 1, false);
          public          postgres    false    218            "           0    0    pesanan_nopesanan_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pesanan_nopesanan_seq', 1, false);
          public          postgres    false    220            #           0    0    produk_noproduk_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.produk_noproduk_seq', 1, false);
          public          postgres    false    216            y           2606    24681    pegawai pegawai_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pegawai
    ADD CONSTRAINT pegawai_pkey PRIMARY KEY (nopegawai);
 >   ALTER TABLE ONLY public.pegawai DROP CONSTRAINT pegawai_pkey;
       public            postgres    false    215            }           2606    24695    pelanggan pelanggan_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (nopelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    219                       2606    24709    pesanan pesanan_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (nopesanan);
 >   ALTER TABLE ONLY public.pesanan DROP CONSTRAINT pesanan_pkey;
       public            postgres    false    221            {           2606    24688    produk produk_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (noproduk);
 <   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_pkey;
       public            postgres    false    217               ?   x?]???0???DY?K?A!QP?l????@q,~']hV???b?pIS??2+l ??W
?j?Rp??Vp??f??
8????͗??a}?w??Z??Q(?5?+??<E?2$?ׅ????o???%?U?p?%???DT????J?wZ?N???4/???0?~+E         q   x?-ͱ
?0E?Y??b)2??]??f?"?q?S?????;?#??l??O.	?(}?M?(29???k????<??c?/=?u??A<??mS.?lߺ?|? %??h?h????y? ?         P   x?m?Q
?0???.?$?v??C?'IA?B??@Ge??_+c?jm??h[o?kw?液?m=??ϼ;?̼ ??3         {   x?Uͱ
?0?Y?
A???vN?!S?.Gk??=?M?????h?C???X??yj?9L??5iÌ???<6)Ϩv??p?t????h?`?08դNv??g???+f)?n??>c?ׇ)?     