PGDMP     &    %                {         	   Bikestore    15.3    15.3 ^    [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ^           1262    24597 	   Bikestore    DATABASE     �   CREATE DATABASE "Bikestore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Bikestore";
                postgres    false            �            1259    41408    carrito    TABLE     �   CREATE TABLE public.carrito (
    id_carrito integer NOT NULL,
    fecha date NOT NULL,
    id_usuario integer NOT NULL,
    id_producto integer NOT NULL
);
    DROP TABLE public.carrito;
       public         heap    postgres    false            �            1259    41405    carrito_id_carrito_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_id_carrito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrito_id_carrito_seq;
       public          postgres    false    225            _           0    0    carrito_id_carrito_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carrito_id_carrito_seq OWNED BY public.carrito.id_carrito;
          public          postgres    false    222            �            1259    41407    carrito_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.carrito_id_producto_seq;
       public          postgres    false    225            `           0    0    carrito_id_producto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.carrito_id_producto_seq OWNED BY public.carrito.id_producto;
          public          postgres    false    224            �            1259    41406    carrito_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrito_id_usuario_seq;
       public          postgres    false    225            a           0    0    carrito_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carrito_id_usuario_seq OWNED BY public.carrito.id_usuario;
          public          postgres    false    223            �            1259    41445    clientes    TABLE     n  CREATE TABLE public.clientes (
    id_usuario integer NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    correo_electronico text NOT NULL,
    direccion text NOT NULL,
    "hash_contraseña" text NOT NULL,
    numero_telefono text NOT NULL,
    documento_identidad text NOT NULL,
    edad integer NOT NULL,
    id_listafavoritos integer NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    41444    clientes_id_listafavoritos_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_listafavoritos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.clientes_id_listafavoritos_seq;
       public          postgres    false    236            b           0    0    clientes_id_listafavoritos_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.clientes_id_listafavoritos_seq OWNED BY public.clientes.id_listafavoritos;
          public          postgres    false    235            �            1259    41443    clientes_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_usuario_seq;
       public          postgres    false    236            c           0    0    clientes_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_usuario_seq OWNED BY public.clientes.id_usuario;
          public          postgres    false    234            �            1259    41419    compras    TABLE     �   CREATE TABLE public.compras (
    id_compra integer NOT NULL,
    id_producto integer NOT NULL,
    id_proveedor integer NOT NULL,
    costo_t money NOT NULL,
    cantidad bigint NOT NULL,
    fecha_c date NOT NULL
);
    DROP TABLE public.compras;
       public         heap    postgres    false            �            1259    41416    compras_id_compra_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.compras_id_compra_seq;
       public          postgres    false    229            d           0    0    compras_id_compra_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.compras_id_compra_seq OWNED BY public.compras.id_compra;
          public          postgres    false    226            �            1259    41417    compras_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.compras_id_producto_seq;
       public          postgres    false    229            e           0    0    compras_id_producto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.compras_id_producto_seq OWNED BY public.compras.id_producto;
          public          postgres    false    227            �            1259    41418    compras_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.compras_id_proveedor_seq;
       public          postgres    false    229            f           0    0    compras_id_proveedor_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.compras_id_proveedor_seq OWNED BY public.compras.id_proveedor;
          public          postgres    false    228            �            1259    41428    listafavoritos    TABLE     O   CREATE TABLE public.listafavoritos (
    id_listafavoritos integer NOT NULL
);
 "   DROP TABLE public.listafavoritos;
       public         heap    postgres    false            �            1259    41427 $   listafavoritos_id_listafavoritos_seq    SEQUENCE     �   CREATE SEQUENCE public.listafavoritos_id_listafavoritos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.listafavoritos_id_listafavoritos_seq;
       public          postgres    false    231            g           0    0 $   listafavoritos_id_listafavoritos_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.listafavoritos_id_listafavoritos_seq OWNED BY public.listafavoritos.id_listafavoritos;
          public          postgres    false    230            �            1259    41435 	   productos    TABLE     �  CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(100) NOT NULL,
    descripcion character varying(255),
    precio money NOT NULL,
    stock integer NOT NULL,
    categoria character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    marca character varying(255) NOT NULL,
    color character varying(255) NOT NULL,
    img_producto character varying(255)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    41434    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public          postgres    false    233            h           0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public          postgres    false    232            �            1259    41379    proveedores    TABLE     �   CREATE TABLE public.proveedores (
    id_proveedor integer NOT NULL,
    nombre_p character varying(255) NOT NULL,
    correo_p character varying(255) NOT NULL
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false            �            1259    41378    proveedores_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.proveedores_id_proveedor_seq;
       public          postgres    false    215            i           0    0    proveedores_id_proveedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.proveedores.id_proveedor;
          public          postgres    false    214            �            1259    41388    stock    TABLE     �   CREATE TABLE public.stock (
    id_productos integer NOT NULL,
    fecha_c_i date NOT NULL,
    cantidad_i bigint NOT NULL,
    cantidad_v bigint NOT NULL,
    fecha_u_v date NOT NULL,
    cantidad_c bigint NOT NULL,
    fecha_uc date NOT NULL
);
    DROP TABLE public.stock;
       public         heap    postgres    false            �            1259    41387    stock_id_productos_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_id_productos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.stock_id_productos_seq;
       public          postgres    false    217            j           0    0    stock_id_productos_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.stock_id_productos_seq OWNED BY public.stock.id_productos;
          public          postgres    false    216            �            1259    41397    ventas    TABLE       CREATE TABLE public.ventas (
    id_venta integer NOT NULL,
    id_producto integer NOT NULL,
    id_cliente integer NOT NULL,
    estado_v character varying(255) NOT NULL,
    fecha_v date NOT NULL,
    cantidad bigint NOT NULL,
    costo money NOT NULL
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    41396    ventas_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ventas_id_cliente_seq;
       public          postgres    false    221            k           0    0    ventas_id_cliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ventas_id_cliente_seq OWNED BY public.ventas.id_cliente;
          public          postgres    false    220            �            1259    41395    ventas_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ventas_id_producto_seq;
       public          postgres    false    221            l           0    0    ventas_id_producto_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ventas_id_producto_seq OWNED BY public.ventas.id_producto;
          public          postgres    false    219            �            1259    41394    ventas_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ventas_id_venta_seq;
       public          postgres    false    221            m           0    0    ventas_id_venta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ventas_id_venta_seq OWNED BY public.ventas.id_venta;
          public          postgres    false    218            �           2604    41411    carrito id_carrito    DEFAULT     x   ALTER TABLE ONLY public.carrito ALTER COLUMN id_carrito SET DEFAULT nextval('public.carrito_id_carrito_seq'::regclass);
 A   ALTER TABLE public.carrito ALTER COLUMN id_carrito DROP DEFAULT;
       public          postgres    false    225    222    225            �           2604    41412    carrito id_usuario    DEFAULT     x   ALTER TABLE ONLY public.carrito ALTER COLUMN id_usuario SET DEFAULT nextval('public.carrito_id_usuario_seq'::regclass);
 A   ALTER TABLE public.carrito ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    223    225    225            �           2604    41413    carrito id_producto    DEFAULT     z   ALTER TABLE ONLY public.carrito ALTER COLUMN id_producto SET DEFAULT nextval('public.carrito_id_producto_seq'::regclass);
 B   ALTER TABLE public.carrito ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    41448    clientes id_usuario    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_usuario SET DEFAULT nextval('public.clientes_id_usuario_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    236    234    236            �           2604    41449    clientes id_listafavoritos    DEFAULT     �   ALTER TABLE ONLY public.clientes ALTER COLUMN id_listafavoritos SET DEFAULT nextval('public.clientes_id_listafavoritos_seq'::regclass);
 I   ALTER TABLE public.clientes ALTER COLUMN id_listafavoritos DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    41422    compras id_compra    DEFAULT     v   ALTER TABLE ONLY public.compras ALTER COLUMN id_compra SET DEFAULT nextval('public.compras_id_compra_seq'::regclass);
 @   ALTER TABLE public.compras ALTER COLUMN id_compra DROP DEFAULT;
       public          postgres    false    226    229    229            �           2604    41423    compras id_producto    DEFAULT     z   ALTER TABLE ONLY public.compras ALTER COLUMN id_producto SET DEFAULT nextval('public.compras_id_producto_seq'::regclass);
 B   ALTER TABLE public.compras ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    229    227    229            �           2604    41424    compras id_proveedor    DEFAULT     |   ALTER TABLE ONLY public.compras ALTER COLUMN id_proveedor SET DEFAULT nextval('public.compras_id_proveedor_seq'::regclass);
 C   ALTER TABLE public.compras ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    41431     listafavoritos id_listafavoritos    DEFAULT     �   ALTER TABLE ONLY public.listafavoritos ALTER COLUMN id_listafavoritos SET DEFAULT nextval('public.listafavoritos_id_listafavoritos_seq'::regclass);
 O   ALTER TABLE public.listafavoritos ALTER COLUMN id_listafavoritos DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    41438    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    41382    proveedores id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);
 G   ALTER TABLE public.proveedores ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    41391    stock id_productos    DEFAULT     x   ALTER TABLE ONLY public.stock ALTER COLUMN id_productos SET DEFAULT nextval('public.stock_id_productos_seq'::regclass);
 A   ALTER TABLE public.stock ALTER COLUMN id_productos DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    41400    ventas id_venta    DEFAULT     r   ALTER TABLE ONLY public.ventas ALTER COLUMN id_venta SET DEFAULT nextval('public.ventas_id_venta_seq'::regclass);
 >   ALTER TABLE public.ventas ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    221    218    221            �           2604    41401    ventas id_producto    DEFAULT     x   ALTER TABLE ONLY public.ventas ALTER COLUMN id_producto SET DEFAULT nextval('public.ventas_id_producto_seq'::regclass);
 A   ALTER TABLE public.ventas ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    219    221    221            �           2604    41402    ventas id_cliente    DEFAULT     v   ALTER TABLE ONLY public.ventas ALTER COLUMN id_cliente SET DEFAULT nextval('public.ventas_id_cliente_seq'::regclass);
 @   ALTER TABLE public.ventas ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    220    221    221            M          0    41408    carrito 
   TABLE DATA           M   COPY public.carrito (id_carrito, fecha, id_usuario, id_producto) FROM stdin;
    public          postgres    false    225   �o       X          0    41445    clientes 
   TABLE DATA           �   COPY public.clientes (id_usuario, nombre, apellido, correo_electronico, direccion, "hash_contraseña", numero_telefono, documento_identidad, edad, id_listafavoritos) FROM stdin;
    public          postgres    false    236   �o       Q          0    41419    compras 
   TABLE DATA           c   COPY public.compras (id_compra, id_producto, id_proveedor, costo_t, cantidad, fecha_c) FROM stdin;
    public          postgres    false    229   �o       S          0    41428    listafavoritos 
   TABLE DATA           ;   COPY public.listafavoritos (id_listafavoritos) FROM stdin;
    public          postgres    false    231   �o       U          0    41435 	   productos 
   TABLE DATA           �   COPY public.productos (id_producto, nombre_producto, descripcion, precio, stock, categoria, tipo, marca, color, img_producto) FROM stdin;
    public          postgres    false    233   p       C          0    41379    proveedores 
   TABLE DATA           G   COPY public.proveedores (id_proveedor, nombre_p, correo_p) FROM stdin;
    public          postgres    false    215   3p       E          0    41388    stock 
   TABLE DATA           q   COPY public.stock (id_productos, fecha_c_i, cantidad_i, cantidad_v, fecha_u_v, cantidad_c, fecha_uc) FROM stdin;
    public          postgres    false    217   Pp       I          0    41397    ventas 
   TABLE DATA           g   COPY public.ventas (id_venta, id_producto, id_cliente, estado_v, fecha_v, cantidad, costo) FROM stdin;
    public          postgres    false    221   mp       n           0    0    carrito_id_carrito_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrito_id_carrito_seq', 1, false);
          public          postgres    false    222            o           0    0    carrito_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.carrito_id_producto_seq', 1, false);
          public          postgres    false    224            p           0    0    carrito_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrito_id_usuario_seq', 1, false);
          public          postgres    false    223            q           0    0    clientes_id_listafavoritos_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.clientes_id_listafavoritos_seq', 1, false);
          public          postgres    false    235            r           0    0    clientes_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_id_usuario_seq', 1, false);
          public          postgres    false    234            s           0    0    compras_id_compra_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.compras_id_compra_seq', 1, false);
          public          postgres    false    226            t           0    0    compras_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.compras_id_producto_seq', 1, false);
          public          postgres    false    227            u           0    0    compras_id_proveedor_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.compras_id_proveedor_seq', 1, false);
          public          postgres    false    228            v           0    0 $   listafavoritos_id_listafavoritos_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.listafavoritos_id_listafavoritos_seq', 1, false);
          public          postgres    false    230            w           0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 1, false);
          public          postgres    false    232            x           0    0    proveedores_id_proveedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 1, false);
          public          postgres    false    214            y           0    0    stock_id_productos_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.stock_id_productos_seq', 1, false);
          public          postgres    false    216            z           0    0    ventas_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ventas_id_cliente_seq', 1, false);
          public          postgres    false    220            {           0    0    ventas_id_producto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ventas_id_producto_seq', 1, false);
          public          postgres    false    219            |           0    0    ventas_id_venta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ventas_id_venta_seq', 1, false);
          public          postgres    false    218            �           2606    41415    carrito carrito_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_pkey PRIMARY KEY (id_carrito);
 >   ALTER TABLE ONLY public.carrito DROP CONSTRAINT carrito_pkey;
       public            postgres    false    225            �           2606    41453    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    236            �           2606    41426    compras compras_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id_compra);
 >   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_pkey;
       public            postgres    false    229            �           2606    41433 "   listafavoritos listafavoritos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.listafavoritos
    ADD CONSTRAINT listafavoritos_pkey PRIMARY KEY (id_listafavoritos);
 L   ALTER TABLE ONLY public.listafavoritos DROP CONSTRAINT listafavoritos_pkey;
       public            postgres    false    231            �           2606    41442    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    233            �           2606    41386    proveedores proveedores_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public            postgres    false    215            �           2606    41393    stock stock_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id_productos);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    217            �           2606    41404    ventas ventas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_venta);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    221            �           2606    41464    carrito fk_carrito_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT fk_carrito_producto FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 E   ALTER TABLE ONLY public.carrito DROP CONSTRAINT fk_carrito_producto;
       public          postgres    false    233    225    3243            �           2606    41479 #   clientes fk_clientes_listafavoritos    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT fk_clientes_listafavoritos FOREIGN KEY (id_listafavoritos) REFERENCES public.listafavoritos(id_listafavoritos);
 M   ALTER TABLE ONLY public.clientes DROP CONSTRAINT fk_clientes_listafavoritos;
       public          postgres    false    236    3241    231            �           2606    41469    compras fk_compras_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT fk_compras_producto FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 E   ALTER TABLE ONLY public.compras DROP CONSTRAINT fk_compras_producto;
       public          postgres    false    229    233    3243            �           2606    41474    compras fk_compras_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT fk_compras_proveedor FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor);
 F   ALTER TABLE ONLY public.compras DROP CONSTRAINT fk_compras_proveedor;
       public          postgres    false    229    3231    215            �           2606    41459    ventas fk_ventas_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_ventas_cliente FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_usuario);
 B   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_ventas_cliente;
       public          postgres    false    3245    221    236            �           2606    41454    ventas fk_ventas_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_ventas_producto FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 C   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_ventas_producto;
       public          postgres    false    3243    233    221            M      x������ � �      X      x������ � �      Q      x������ � �      S      x������ � �      U      x������ � �      C      x������ � �      E      x������ � �      I      x������ � �     