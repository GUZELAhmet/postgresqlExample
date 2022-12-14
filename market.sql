-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.firmalar
(
    firma_id integer NOT NULL,
    firma_adi character varying(50) COLLATE pg_catalog."default" NOT NULL,
    adres character varying(50) COLLATE pg_catalog."default",
    tel character varying(11) COLLATE pg_catalog."default",
    eposta character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT firmalar_pkey PRIMARY KEY (firma_id)
);

CREATE TABLE IF NOT EXISTS public.kategoriler
(
    kategori_id integer NOT NULL,
    kategori_adi character varying(25) COLLATE pg_catalog."default",
    kdv_orani integer,
    CONSTRAINT kategoriler_pkey PRIMARY KEY (kategori_id)
);

CREATE TABLE IF NOT EXISTS public.musteriler
(
    musteri_id integer NOT NULL,
    adi_soyadi character varying(50) COLLATE pg_catalog."default" NOT NULL,
    tel character varying(11) COLLATE pg_catalog."default",
    adres character varying(50) COLLATE pg_catalog."default",
    eposta character varying(25) COLLATE pg_catalog."default",
    CONSTRAINT musteriler_pkey PRIMARY KEY (musteri_id)
);

CREATE TABLE IF NOT EXISTS public.siparis_detay
(
    siparis_id integer NOT NULL,
    urun_id integer NOT NULL,
    adet integer
);

CREATE TABLE IF NOT EXISTS public.siparisler
(
    siparis_id integer NOT NULL,
    tarih date,
    musteri_id integer,
    CONSTRAINT siparisler_pkey PRIMARY KEY (siparis_id)
);

CREATE TABLE IF NOT EXISTS public.urunler
(
    urun_id integer NOT NULL,
    urun_adi character varying(20) COLLATE pg_catalog."default",
    kategori_id integer,
    firma_id integer,
    alis_fiyat real,
    satis_fiyati real,
    CONSTRAINT urunler_pkey PRIMARY KEY (urun_id)
);

