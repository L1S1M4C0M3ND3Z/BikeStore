PGDMP     "    .                {         	   Bikestore    15.3    15.3 ]    Z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            [           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            \           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ]           1262    24597 	   Bikestore    DATABASE     �   CREATE DATABASE "Bikestore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Bikestore";
                postgres    false            �            1259    41597    carrito    TABLE     �   CREATE TABLE public.carrito (
    id_carrito integer NOT NULL,
    fecha date NOT NULL,
    id_usuario integer NOT NULL,
    id_producto integer NOT NULL
);
    DROP TABLE public.carrito;
       public         heap    postgres    false            �            1259    41594    carrito_id_carrito_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_id_carrito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrito_id_carrito_seq;
       public          postgres    false    236            ^           0    0    carrito_id_carrito_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carrito_id_carrito_seq OWNED BY public.carrito.id_carrito;
          public          postgres    false    233            �            1259    41596    carrito_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.carrito_id_producto_seq;
       public          postgres    false    236            _           0    0    carrito_id_producto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.carrito_id_producto_seq OWNED BY public.carrito.id_producto;
          public          postgres    false    235            �            1259    41595    carrito_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.carrito_id_usuario_seq;
       public          postgres    false    236            `           0    0    carrito_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.carrito_id_usuario_seq OWNED BY public.carrito.id_usuario;
          public          postgres    false    234            �            1259    41530    clientes    TABLE     n  CREATE TABLE public.clientes (
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
       public         heap    postgres    false            �            1259    41529    clientes_id_listafavoritos_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_listafavoritos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.clientes_id_listafavoritos_seq;
       public          postgres    false    216            a           0    0    clientes_id_listafavoritos_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.clientes_id_listafavoritos_seq OWNED BY public.clientes.id_listafavoritos;
          public          postgres    false    215            �            1259    41528    clientes_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_usuario_seq;
       public          postgres    false    216            b           0    0    clientes_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_usuario_seq OWNED BY public.clientes.id_usuario;
          public          postgres    false    214            �            1259    41542    compras    TABLE     �   CREATE TABLE public.compras (
    id_compra integer NOT NULL,
    id_producto integer NOT NULL,
    id_proveedor integer NOT NULL,
    costo_t money NOT NULL,
    cantidad bigint NOT NULL,
    fecha_c date NOT NULL
);
    DROP TABLE public.compras;
       public         heap    postgres    false            �            1259    41539    compras_id_compra_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.compras_id_compra_seq;
       public          postgres    false    220            c           0    0    compras_id_compra_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.compras_id_compra_seq OWNED BY public.compras.id_compra;
          public          postgres    false    217            �            1259    41540    compras_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.compras_id_producto_seq;
       public          postgres    false    220            d           0    0    compras_id_producto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.compras_id_producto_seq OWNED BY public.compras.id_producto;
          public          postgres    false    218            �            1259    41541    compras_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.compras_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.compras_id_proveedor_seq;
       public          postgres    false    220            e           0    0    compras_id_proveedor_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.compras_id_proveedor_seq OWNED BY public.compras.id_proveedor;
          public          postgres    false    219            �            1259    41551    listafavoritos    TABLE     O   CREATE TABLE public.listafavoritos (
    id_listafavoritos integer NOT NULL
);
 "   DROP TABLE public.listafavoritos;
       public         heap    postgres    false            �            1259    41550 $   listafavoritos_id_listafavoritos_seq    SEQUENCE     �   CREATE SEQUENCE public.listafavoritos_id_listafavoritos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.listafavoritos_id_listafavoritos_seq;
       public          postgres    false    222            f           0    0 $   listafavoritos_id_listafavoritos_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.listafavoritos_id_listafavoritos_seq OWNED BY public.listafavoritos.id_listafavoritos;
          public          postgres    false    221            �            1259    41558 	   productos    TABLE     �  CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(100) NOT NULL,
    descripcion character varying(900) NOT NULL,
    precio money NOT NULL,
    stock integer NOT NULL,
    categoria character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    marca character varying(255) NOT NULL,
    color character varying(255) NOT NULL,
    img_producto character varying(255)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    41557    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public          postgres    false    224            g           0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public          postgres    false    223            �            1259    41567    proveedores    TABLE     �   CREATE TABLE public.proveedores (
    id_proveedor integer NOT NULL,
    nombre_p character varying(255) NOT NULL,
    correo_p character varying(255) NOT NULL
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false            �            1259    41566    proveedores_id_proveedor_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.proveedores_id_proveedor_seq;
       public          postgres    false    226            h           0    0    proveedores_id_proveedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.proveedores.id_proveedor;
          public          postgres    false    225            �            1259    41576    stock    TABLE     �   CREATE TABLE public.stock (
    id_productos integer NOT NULL,
    fecha_c_i date NOT NULL,
    cantidad_i bigint NOT NULL,
    cantidad_v bigint NOT NULL,
    fecha_u_v date NOT NULL,
    cantidad_c bigint NOT NULL,
    fecha_uc date NOT NULL
);
    DROP TABLE public.stock;
       public         heap    postgres    false            �            1259    41575    stock_id_productos_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_id_productos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.stock_id_productos_seq;
       public          postgres    false    228            i           0    0    stock_id_productos_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.stock_id_productos_seq OWNED BY public.stock.id_productos;
          public          postgres    false    227            �            1259    41585    ventas    TABLE       CREATE TABLE public.ventas (
    id_venta integer NOT NULL,
    id_producto integer NOT NULL,
    id_cliente integer NOT NULL,
    estado_v character varying(255) NOT NULL,
    fecha_v date NOT NULL,
    cantidad bigint NOT NULL,
    costo money NOT NULL
);
    DROP TABLE public.ventas;
       public         heap    postgres    false            �            1259    41584    ventas_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ventas_id_cliente_seq;
       public          postgres    false    232            j           0    0    ventas_id_cliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ventas_id_cliente_seq OWNED BY public.ventas.id_cliente;
          public          postgres    false    231            �            1259    41583    ventas_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ventas_id_producto_seq;
       public          postgres    false    232            k           0    0    ventas_id_producto_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ventas_id_producto_seq OWNED BY public.ventas.id_producto;
          public          postgres    false    230            �            1259    41582    ventas_id_venta_seq    SEQUENCE     �   CREATE SEQUENCE public.ventas_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ventas_id_venta_seq;
       public          postgres    false    232            l           0    0    ventas_id_venta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ventas_id_venta_seq OWNED BY public.ventas.id_venta;
          public          postgres    false    229            �           2604    41605    carrito id_carrito    DEFAULT     x   ALTER TABLE ONLY public.carrito ALTER COLUMN id_carrito SET DEFAULT nextval('public.carrito_id_carrito_seq'::regclass);
 A   ALTER TABLE public.carrito ALTER COLUMN id_carrito DROP DEFAULT;
       public          postgres    false    233    236    236            �           2604    41606    carrito id_usuario    DEFAULT     x   ALTER TABLE ONLY public.carrito ALTER COLUMN id_usuario SET DEFAULT nextval('public.carrito_id_usuario_seq'::regclass);
 A   ALTER TABLE public.carrito ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    236    234    236            �           2604    41607    carrito id_producto    DEFAULT     z   ALTER TABLE ONLY public.carrito ALTER COLUMN id_producto SET DEFAULT nextval('public.carrito_id_producto_seq'::regclass);
 B   ALTER TABLE public.carrito ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    41608    clientes id_usuario    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_usuario SET DEFAULT nextval('public.clientes_id_usuario_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    216    214    216            �           2604    41609    clientes id_listafavoritos    DEFAULT     �   ALTER TABLE ONLY public.clientes ALTER COLUMN id_listafavoritos SET DEFAULT nextval('public.clientes_id_listafavoritos_seq'::regclass);
 I   ALTER TABLE public.clientes ALTER COLUMN id_listafavoritos DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    41610    compras id_compra    DEFAULT     v   ALTER TABLE ONLY public.compras ALTER COLUMN id_compra SET DEFAULT nextval('public.compras_id_compra_seq'::regclass);
 @   ALTER TABLE public.compras ALTER COLUMN id_compra DROP DEFAULT;
       public          postgres    false    217    220    220            �           2604    41611    compras id_producto    DEFAULT     z   ALTER TABLE ONLY public.compras ALTER COLUMN id_producto SET DEFAULT nextval('public.compras_id_producto_seq'::regclass);
 B   ALTER TABLE public.compras ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    218    220    220            �           2604    41612    compras id_proveedor    DEFAULT     |   ALTER TABLE ONLY public.compras ALTER COLUMN id_proveedor SET DEFAULT nextval('public.compras_id_proveedor_seq'::regclass);
 C   ALTER TABLE public.compras ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    41613     listafavoritos id_listafavoritos    DEFAULT     �   ALTER TABLE ONLY public.listafavoritos ALTER COLUMN id_listafavoritos SET DEFAULT nextval('public.listafavoritos_id_listafavoritos_seq'::regclass);
 O   ALTER TABLE public.listafavoritos ALTER COLUMN id_listafavoritos DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    41614    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    41615    proveedores id_proveedor    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);
 G   ALTER TABLE public.proveedores ALTER COLUMN id_proveedor DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    41616    stock id_productos    DEFAULT     x   ALTER TABLE ONLY public.stock ALTER COLUMN id_productos SET DEFAULT nextval('public.stock_id_productos_seq'::regclass);
 A   ALTER TABLE public.stock ALTER COLUMN id_productos DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    41617    ventas id_venta    DEFAULT     r   ALTER TABLE ONLY public.ventas ALTER COLUMN id_venta SET DEFAULT nextval('public.ventas_id_venta_seq'::regclass);
 >   ALTER TABLE public.ventas ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    232    229    232            �           2604    41618    ventas id_producto    DEFAULT     x   ALTER TABLE ONLY public.ventas ALTER COLUMN id_producto SET DEFAULT nextval('public.ventas_id_producto_seq'::regclass);
 A   ALTER TABLE public.ventas ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    230    232    232            �           2604    41619    ventas id_cliente    DEFAULT     v   ALTER TABLE ONLY public.ventas ALTER COLUMN id_cliente SET DEFAULT nextval('public.ventas_id_cliente_seq'::regclass);
 @   ALTER TABLE public.ventas ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    231    232    232            W          0    41597    carrito 
   TABLE DATA           M   COPY public.carrito (id_carrito, fecha, id_usuario, id_producto) FROM stdin;
    public          postgres    false    236   �m       C          0    41530    clientes 
   TABLE DATA           �   COPY public.clientes (id_usuario, nombre, apellido, correo_electronico, direccion, "hash_contraseña", numero_telefono, documento_identidad, edad, id_listafavoritos) FROM stdin;
    public          postgres    false    216   n       G          0    41542    compras 
   TABLE DATA           c   COPY public.compras (id_compra, id_producto, id_proveedor, costo_t, cantidad, fecha_c) FROM stdin;
    public          postgres    false    220   �n       I          0    41551    listafavoritos 
   TABLE DATA           ;   COPY public.listafavoritos (id_listafavoritos) FROM stdin;
    public          postgres    false    222   �n       K          0    41558 	   productos 
   TABLE DATA           �   COPY public.productos (id_producto, nombre_producto, descripcion, precio, stock, categoria, tipo, marca, color, img_producto) FROM stdin;
    public          postgres    false    224   �n       M          0    41567    proveedores 
   TABLE DATA           G   COPY public.proveedores (id_proveedor, nombre_p, correo_p) FROM stdin;
    public          postgres    false    226   �w       O          0    41576    stock 
   TABLE DATA           q   COPY public.stock (id_productos, fecha_c_i, cantidad_i, cantidad_v, fecha_u_v, cantidad_c, fecha_uc) FROM stdin;
    public          postgres    false    228   �w       S          0    41585    ventas 
   TABLE DATA           g   COPY public.ventas (id_venta, id_producto, id_cliente, estado_v, fecha_v, cantidad, costo) FROM stdin;
    public          postgres    false    232   x       m           0    0    carrito_id_carrito_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrito_id_carrito_seq', 1, false);
          public          postgres    false    233            n           0    0    carrito_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.carrito_id_producto_seq', 1, false);
          public          postgres    false    235            o           0    0    carrito_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.carrito_id_usuario_seq', 1, false);
          public          postgres    false    234            p           0    0    clientes_id_listafavoritos_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.clientes_id_listafavoritos_seq', 4, true);
          public          postgres    false    215            q           0    0    clientes_id_usuario_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clientes_id_usuario_seq', 9, true);
          public          postgres    false    214            r           0    0    compras_id_compra_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.compras_id_compra_seq', 1, false);
          public          postgres    false    217            s           0    0    compras_id_producto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.compras_id_producto_seq', 1, false);
          public          postgres    false    218            t           0    0    compras_id_proveedor_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.compras_id_proveedor_seq', 1, false);
          public          postgres    false    219            u           0    0 $   listafavoritos_id_listafavoritos_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.listafavoritos_id_listafavoritos_seq', 1, false);
          public          postgres    false    221            v           0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 16, true);
          public          postgres    false    223            w           0    0    proveedores_id_proveedor_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 1, false);
          public          postgres    false    225            x           0    0    stock_id_productos_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.stock_id_productos_seq', 1, false);
          public          postgres    false    227            y           0    0    ventas_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ventas_id_cliente_seq', 1, false);
          public          postgres    false    231            z           0    0    ventas_id_producto_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ventas_id_producto_seq', 1, false);
          public          postgres    false    230            {           0    0    ventas_id_venta_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ventas_id_venta_seq', 1, false);
          public          postgres    false    229            �           2606    41604    carrito carrito_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_pkey PRIMARY KEY (id_carrito);
 >   ALTER TABLE ONLY public.carrito DROP CONSTRAINT carrito_pkey;
       public            postgres    false    236            �           2606    41538    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    216            �           2606    41549    compras compras_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (id_compra);
 >   ALTER TABLE ONLY public.compras DROP CONSTRAINT compras_pkey;
       public            postgres    false    220            �           2606    41556 "   listafavoritos listafavoritos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.listafavoritos
    ADD CONSTRAINT listafavoritos_pkey PRIMARY KEY (id_listafavoritos);
 L   ALTER TABLE ONLY public.listafavoritos DROP CONSTRAINT listafavoritos_pkey;
       public            postgres    false    222            �           2606    41565    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    224            �           2606    41574    proveedores proveedores_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_proveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public            postgres    false    226            �           2606    41581    stock stock_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id_productos);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    228            �           2606    41592    ventas ventas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id_venta);
 <   ALTER TABLE ONLY public.ventas DROP CONSTRAINT ventas_pkey;
       public            postgres    false    232            �           2606    41620    carrito fk_carrito_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT fk_carrito_producto FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 E   ALTER TABLE ONLY public.carrito DROP CONSTRAINT fk_carrito_producto;
       public          postgres    false    224    3237    236            �           2606    41630    compras fk_compras_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT fk_compras_producto FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 E   ALTER TABLE ONLY public.compras DROP CONSTRAINT fk_compras_producto;
       public          postgres    false    224    3237    220            �           2606    41635    compras fk_compras_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.compras
    ADD CONSTRAINT fk_compras_proveedor FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_proveedor);
 F   ALTER TABLE ONLY public.compras DROP CONSTRAINT fk_compras_proveedor;
       public          postgres    false    3239    220    226            �           2606    41640    ventas fk_ventas_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_ventas_cliente FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_usuario);
 B   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_ventas_cliente;
       public          postgres    false    232    216    3231            �           2606    41645    ventas fk_ventas_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventas
    ADD CONSTRAINT fk_ventas_producto FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);
 C   ALTER TABLE ONLY public.ventas DROP CONSTRAINT fk_ventas_producto;
       public          postgres    false    232    3237    224            W      x������ � �      C   [   x�Ȼ� ��2��H� �`��`@�G���S����6(?�.�Ť̵����Z����\�렍u>\��hC�.B+׿#���B|֑�      G      x������ � �      I      x������ � �      K   	  x��XMoG=S���#�����%�%n,�,yI:_z��d���t�0����9���� ��WݤD��"�E.0��GիWկ:�^eTN��,�$o
S�Jt�oķ�b����Ӻ,1H��5��Nj)�y��F�>9rBU� WKe��sS��k��k��J*06�5�[�y��މ�` &Y��`��[��&��+e�?4$\#W	�0�'�7�l+X��97d�J�>�n��-�a���Q�-Ygv�K��f�m-���~�;�(U/�w��1�6�
��&k��\G�ކ��~�0~�++)*���� ]9v�m��#sL���)���R�(
g�MNq���ԕ�L��4��e�(���<�6[)�D	C	��N�J�~�6�c��7ԅMr�5����QSȕ)���*��8�;q�㸕$-��b�d�Q/�M^I�^�q�Lz�X'Q_�T$�$����(����Ώ�m������W��D��o13��C�����7�܇��µ�>*�AȖ�jo�)W�H��'��V���� )i3�,�~���¬� ���.�RI�5�Ơ�O�\W���f
�-5�$�{��ߝ��ԬeG���f0�9&�#�ŲaVz�aF�ؗ�E�SH��S�xx���o;���K�{�l��*k����ig{�k?<��y�=�WTT{���c֤��D�H�iA�+�Q�T�(���h��>�|*�z����m��W�ʱ/��/���F$�a2ʍtl/�h(F� +��ff�M�q�H��vG�[�}�g������A�<�ZY�P{e�Y�{�E�d8��cE���x�e�L-���v6��l�e�.�������b�����W�~�l�]�?������~�7׋�|>y������B��}�4<�b��o+�kq�l���+)C�)9���<��ɠ�[�� J~_�:g�8�%�JⱔIO�
:�J��Da�w\#�z@ғ��&���"�Ō�L"]���>5�ث�"l��g�k(�B2��(E�X��^��0`%���R�TP���i�v�dM6d2İ�w�
��
�#*��#����ߐ�!��^!��F�Иw(ܒ4HL�+���J}�����EUH������]M�Aj��X�4W�bFA�7�H��y~�׆�i��QbZ��]ɉ�f~�l�\���M0�v�t��=���ǹ��ez}�vv�/�+��H/�J���%����R��F2�9�8K���}N�������S�������_��
��F��,��0�UG���lw�$߈k_��
1���Sa��z	g��8�&ZU���3��<�[]�}��磊�j_+�r�����p�I�����k���܃⿥����0�>� �#Z��?�a��j�#:/�2p�s�yL�}��s�J�{2DO~c[v?[��h������`�Z��'��t1�M
�TN"-�Ɉb�Eq�騿Lt�v#�O��xU<
�N�_"�E�����=m޾��v3[ E������~���#7�	�/HG�b/��Ѩ8���?z�>\ChV\i��ܻ���\.]aB�:T&L���X�|=�}e��8�����^Bq��Ei<��XJ�JMgӈhٗ��xP�]9}O�}�x)�)c���P寋��;��������o�v�����2�J�/�������p�vfr��	�<Î�{�V?pgĖ�fcÇ��w��	��r�v������aQ��ZT4,%}�p0�V��V�{͕f�QU2ˉu�?<�Y�:=	l���#$�� {��@�[>�d$�ф���7�jT(w��ϲ�вN��>�Y7n�������X1T�t��e��2��CQ���SZRJ�d��MQ28����5"˛|��AA+B����b��\u� aq~��z/ڐ:d�,�Z�[����|�7+��{O�E\<%�4Y��eK���2�3���(\��tj�e�<e�
��3`�Y&s�n�ցE.��{�6�8�2�^֬ӏm�)<�4C�~�+�y�~AR�'�0�I�-�ӻ�e/�H�q�Ҩ�t���2"�q�M�4�}��G���?����Q�'��@��/�+����&U�57T��,�p�����q7����O��I���K�|r�����N��Z����S��\u��wPi~yD�d��0���w��M��� �����{}#&W���Xr��G_!_��P^-�+����F��b:��{�|��O��o��&�O�nc��~Kɍ���<�kmK�e�S�k��z[/�����ށ!�q7���A�өʒ�E}9H�4�Hvei<��a�Ȼ���ٿ�m��      M      x������ � �      O      x������ � �      S      x������ � �     