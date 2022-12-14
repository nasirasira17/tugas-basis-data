PGDMP                      
    z            Retail    14.5    14.5 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16516    Retail    DATABASE     l   CREATE DATABASE "Retail" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Retail";
                postgres    false            ?            1259    16518    barang    TABLE     ?   CREATE TABLE public.barang (
    idbarang integer NOT NULL,
    nama character varying(30),
    harga integer,
    stok integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16517    barang_idbarang_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_idbarang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.barang_idbarang_seq;
       public          postgres    false    210                       0    0    barang_idbarang_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.barang_idbarang_seq OWNED BY public.barang.idbarang;
          public          postgres    false    209            ?            1259    16553 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    idpembayaran integer NOT NULL,
    tgl_pembayaran date,
    total_bayar integer,
    idtransaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16552    pembayaran_idpembayaran_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembayaran_idpembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.pembayaran_idpembayaran_seq;
       public          postgres    false    218                       0    0    pembayaran_idpembayaran_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.pembayaran_idpembayaran_seq OWNED BY public.pembayaran.idpembayaran;
          public          postgres    false    217            ?            1259    16532    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    idpembeli integer NOT NULL,
    nama character varying(30),
    no_telepon character(14),
    alamat character varying(30)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16531    pembeli_idpembeli_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembeli_idpembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pembeli_idpembeli_seq;
       public          postgres    false    212                       0    0    pembeli_idpembeli_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pembeli_idpembeli_seq OWNED BY public.pembeli.idpembeli;
          public          postgres    false    211            ?            1259    16539    supplier    TABLE     ?   CREATE TABLE public.supplier (
    idsupplier integer NOT NULL,
    nama_supplier character varying(30),
    no_hp character(14),
    alamat character varying(30)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16538    supplier_idsupplier_seq    SEQUENCE     ?   CREATE SEQUENCE public.supplier_idsupplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.supplier_idsupplier_seq;
       public          postgres    false    214                       0    0    supplier_idsupplier_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.supplier_idsupplier_seq OWNED BY public.supplier.idsupplier;
          public          postgres    false    213            ?            1259    16546 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    idtransaksi integer NOT NULL,
    idbarang integer,
    idpembeli integer,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            ?            1259    16545    transaksi_idtransaksi_seq    SEQUENCE     ?   CREATE SEQUENCE public.transaksi_idtransaksi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.transaksi_idtransaksi_seq;
       public          postgres    false    216                       0    0    transaksi_idtransaksi_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.transaksi_idtransaksi_seq OWNED BY public.transaksi.idtransaksi;
          public          postgres    false    215            p           2604    16521    barang idbarang    DEFAULT     r   ALTER TABLE ONLY public.barang ALTER COLUMN idbarang SET DEFAULT nextval('public.barang_idbarang_seq'::regclass);
 >   ALTER TABLE public.barang ALTER COLUMN idbarang DROP DEFAULT;
       public          postgres    false    210    209    210            t           2604    16556    pembayaran idpembayaran    DEFAULT     ?   ALTER TABLE ONLY public.pembayaran ALTER COLUMN idpembayaran SET DEFAULT nextval('public.pembayaran_idpembayaran_seq'::regclass);
 F   ALTER TABLE public.pembayaran ALTER COLUMN idpembayaran DROP DEFAULT;
       public          postgres    false    217    218    218            q           2604    16535    pembeli idpembeli    DEFAULT     v   ALTER TABLE ONLY public.pembeli ALTER COLUMN idpembeli SET DEFAULT nextval('public.pembeli_idpembeli_seq'::regclass);
 @   ALTER TABLE public.pembeli ALTER COLUMN idpembeli DROP DEFAULT;
       public          postgres    false    211    212    212            r           2604    16542    supplier idsupplier    DEFAULT     z   ALTER TABLE ONLY public.supplier ALTER COLUMN idsupplier SET DEFAULT nextval('public.supplier_idsupplier_seq'::regclass);
 B   ALTER TABLE public.supplier ALTER COLUMN idsupplier DROP DEFAULT;
       public          postgres    false    214    213    214            s           2604    16549    transaksi idtransaksi    DEFAULT     ~   ALTER TABLE ONLY public.transaksi ALTER COLUMN idtransaksi SET DEFAULT nextval('public.transaksi_idtransaksi_seq'::regclass);
 D   ALTER TABLE public.transaksi ALTER COLUMN idtransaksi DROP DEFAULT;
       public          postgres    false    216    215    216                      0    16518    barang 
   TABLE DATA           =   COPY public.barang (idbarang, nama, harga, stok) FROM stdin;
    public          postgres    false    210   Y*                 0    16553 
   pembayaran 
   TABLE DATA           \   COPY public.pembayaran (idpembayaran, tgl_pembayaran, total_bayar, idtransaksi) FROM stdin;
    public          postgres    false    218   ?*                 0    16532    pembeli 
   TABLE DATA           F   COPY public.pembeli (idpembeli, nama, no_telepon, alamat) FROM stdin;
    public          postgres    false    212   ?*                 0    16539    supplier 
   TABLE DATA           L   COPY public.supplier (idsupplier, nama_supplier, no_hp, alamat) FROM stdin;
    public          postgres    false    214   ]+                 0    16546 	   transaksi 
   TABLE DATA           Q   COPY public.transaksi (idtransaksi, idbarang, idpembeli, keterangan) FROM stdin;
    public          postgres    false    216   ?+                  0    0    barang_idbarang_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.barang_idbarang_seq', 1, false);
          public          postgres    false    209                        0    0    pembayaran_idpembayaran_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.pembayaran_idpembayaran_seq', 1, false);
          public          postgres    false    217            !           0    0    pembeli_idpembeli_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pembeli_idpembeli_seq', 1, false);
          public          postgres    false    211            "           0    0    supplier_idsupplier_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.supplier_idsupplier_seq', 1, false);
          public          postgres    false    213            #           0    0    transaksi_idtransaksi_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.transaksi_idtransaksi_seq', 1, false);
          public          postgres    false    215            v           2606    16523    barang barang_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (idbarang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            ~           2606    16558    pembayaran pembayaran_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (idpembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            x           2606    16537    pembeli pembeli_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (idpembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    212            z           2606    16544    supplier supplier_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (idsupplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            |           2606    16551    transaksi transaksi_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (idtransaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    216               D   x?3422??I,(?/?43 N#.CC??o~I~??1T?(l???-(-I-?44???r??qqq ?6?         &   x?34#N###]C 2?44? NC#c#C?=... ?S         j   x?%?M?0?u??????l?(?ې?;?K|??????[CE?fM?Y?!x?f?+I(?OoX??(ʢ????m??Yx?????D?I7K}?Q???Α?~?I?         2   x?3224?0????
r?s?4?0561351642VP?HLI?K?????? ???         0   x?34262?4FF?F?????~!?A?
??N??@?W? ?	]     