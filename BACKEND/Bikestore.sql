PGDMP     0                    {         	   Bikestore    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24597 	   Bikestore    DATABASE     �   CREATE DATABASE "Bikestore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Bikestore";
                postgres    false            �            1259    24598    prod    TABLE     �  CREATE TABLE public.prod (
    "ID_Producto" bigint NOT NULL,
    "Nombre_Producto " character varying(100) NOT NULL,
    "Descripcion " character varying,
    "Precio " money NOT NULL,
    "Stock" integer NOT NULL,
    "Categoria " character varying NOT NULL,
    "Tipo " character varying NOT NULL,
    "Marca " character varying NOT NULL,
    "Color " character varying NOT NULL,
    "Img_Producto" character varying
);
    DROP TABLE public.prod;
       public         heap    postgres    false            �          0    24598    prod 
   TABLE DATA           �   COPY public.prod ("ID_Producto", "Nombre_Producto ", "Descripcion ", "Precio ", "Stock", "Categoria ", "Tipo ", "Marca ", "Color ", "Img_Producto") FROM stdin;
    public          postgres    false    214   �       e           2606    24604    prod Prod_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.prod
    ADD CONSTRAINT "Prod_pkey" PRIMARY KEY ("ID_Producto");
 :   ALTER TABLE ONLY public.prod DROP CONSTRAINT "Prod_pkey";
       public            postgres    false    214            �   W   x�3�L�L��W(*-I�L��rK+�JS�
��"ə�)�)�*
�zF �c`�i�	��ę^Ι��^�������� \r     