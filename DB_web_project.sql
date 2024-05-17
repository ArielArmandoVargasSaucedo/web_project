PGDMP      '                |           DB_web_project    16.1    16.0 �    i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            k           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            l           1262    49545    DB_web_project    DATABASE     �   CREATE DATABASE "DB_web_project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
     DROP DATABASE "DB_web_project";
                postgres    false            �            1259    49583    car    TABLE     �   CREATE TABLE public.car (
    id_car integer NOT NULL,
    car_number character varying NOT NULL,
    car_brand character varying NOT NULL,
    number_of_seats integer NOT NULL,
    id_cs integer NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    49582    car_id_car_seq    SEQUENCE     �   CREATE SEQUENCE public.car_id_car_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.car_id_car_seq;
       public          postgres    false    220            m           0    0    car_id_car_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.car_id_car_seq OWNED BY public.car.id_car;
          public          postgres    false    219            �            1259    49601    car_situation    TABLE     �   CREATE TABLE public.car_situation (
    id_cs integer NOT NULL,
    return_date_cs date NOT NULL,
    current_date_cs date NOT NULL,
    id_aut_type_cs integer NOT NULL
);
 !   DROP TABLE public.car_situation;
       public         heap    postgres    false            �            1259    49600    car_situation_id_cs_seq    SEQUENCE     �   CREATE SEQUENCE public.car_situation_id_cs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.car_situation_id_cs_seq;
       public          postgres    false    222            n           0    0    car_situation_id_cs_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.car_situation_id_cs_seq OWNED BY public.car_situation.id_cs;
          public          postgres    false    221            �            1259    57808    change_type    TABLE     ~   CREATE TABLE public.change_type (
    id_aut_change_type integer NOT NULL,
    change_type_name character varying NOT NULL
);
    DROP TABLE public.change_type;
       public         heap    postgres    false            �            1259    57807 "   change_type_id_aut_change_type_seq    SEQUENCE     �   CREATE SEQUENCE public.change_type_id_aut_change_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.change_type_id_aut_change_type_seq;
       public          postgres    false    246            o           0    0 "   change_type_id_aut_change_type_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.change_type_id_aut_change_type_seq OWNED BY public.change_type.id_aut_change_type;
          public          postgres    false    245            �            1259    57769    date_d    TABLE     �   CREATE TABLE public.date_d (
    id_aut_date integer NOT NULL,
    id_date date NOT NULL,
    hour_d time without time zone NOT NULL
);
    DROP TABLE public.date_d;
       public         heap    postgres    false            �            1259    57768    date_d_id_aut_date_seq    SEQUENCE     �   CREATE SEQUENCE public.date_d_id_aut_date_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.date_d_id_aut_date_seq;
       public          postgres    false    236            p           0    0    date_d_id_aut_date_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.date_d_id_aut_date_seq OWNED BY public.date_d.id_aut_date;
          public          postgres    false    235            �            1259    49547    driver    TABLE     F  CREATE TABLE public.driver (
    id_driver integer NOT NULL,
    dni_driver character varying NOT NULL,
    driver_name character varying NOT NULL,
    home_address character varying NOT NULL,
    category character varying NOT NULL,
    is_copilot boolean NOT NULL,
    id_ds integer NOT NULL,
    id_car integer NOT NULL
);
    DROP TABLE public.driver;
       public         heap    postgres    false            �            1259    49546    driver_id_driver_seq    SEQUENCE     �   CREATE SEQUENCE public.driver_id_driver_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.driver_id_driver_seq;
       public          postgres    false    216            q           0    0    driver_id_driver_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.driver_id_driver_seq OWNED BY public.driver.id_driver;
          public          postgres    false    215            �            1259    49558    driver_situation    TABLE     �   CREATE TABLE public.driver_situation (
    id_ds integer NOT NULL,
    return_date_ds date NOT NULL,
    current_date_ds date NOT NULL,
    id_aut_type_ds integer NOT NULL
);
 $   DROP TABLE public.driver_situation;
       public         heap    postgres    false            �            1259    49557    driver_situation_id_ds_seq    SEQUENCE     �   CREATE SEQUENCE public.driver_situation_id_ds_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.driver_situation_id_ds_seq;
       public          postgres    false    218            r           0    0    driver_situation_id_ds_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.driver_situation_id_ds_seq OWNED BY public.driver_situation.id_ds;
          public          postgres    false    217            �            1259    57776 
   group_tour    TABLE     �   CREATE TABLE public.group_tour (
    id_group integer NOT NULL,
    group_code integer NOT NULL,
    group_country character varying NOT NULL,
    number_of_tourist integer NOT NULL
);
    DROP TABLE public.group_tour;
       public         heap    postgres    false            �            1259    57775    group_tour_id_group_seq    SEQUENCE     �   CREATE SEQUENCE public.group_tour_id_group_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.group_tour_id_group_seq;
       public          postgres    false    238            s           0    0    group_tour_id_group_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.group_tour_id_group_seq OWNED BY public.group_tour.id_group;
          public          postgres    false    237            �            1259    57801 
   mod_change    TABLE     �   CREATE TABLE public.mod_change (
    id_mod_change integer NOT NULL,
    id_aut_change_type integer NOT NULL,
    id_modification integer NOT NULL
);
    DROP TABLE public.mod_change;
       public         heap    postgres    false            �            1259    57800    mod_change_id_mod_change_seq    SEQUENCE     �   CREATE SEQUENCE public.mod_change_id_mod_change_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.mod_change_id_mod_change_seq;
       public          postgres    false    244            t           0    0    mod_change_id_mod_change_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.mod_change_id_mod_change_seq OWNED BY public.mod_change.id_mod_change;
          public          postgres    false    243            �            1259    57794    modification    TABLE     �   CREATE TABLE public.modification (
    id_modification integer NOT NULL,
    modification_date date NOT NULL,
    id_solicitude integer NOT NULL
);
     DROP TABLE public.modification;
       public         heap    postgres    false            �            1259    57793     modification_id_modification_seq    SEQUENCE     �   CREATE SEQUENCE public.modification_id_modification_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.modification_id_modification_seq;
       public          postgres    false    242            u           0    0     modification_id_modification_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.modification_id_modification_seq OWNED BY public.modification.id_modification;
          public          postgres    false    241            �            1259    57758    programming_type    TABLE        CREATE TABLE public.programming_type (
    id_aut_prog_type integer NOT NULL,
    prog_type_name character varying NOT NULL
);
 $   DROP TABLE public.programming_type;
       public         heap    postgres    false            �            1259    57757 %   programming_type_id_aut_prog_type_seq    SEQUENCE     �   CREATE SEQUENCE public.programming_type_id_aut_prog_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.programming_type_id_aut_prog_type_seq;
       public          postgres    false    234            v           0    0 %   programming_type_id_aut_prog_type_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.programming_type_id_aut_prog_type_seq OWNED BY public.programming_type.id_aut_prog_type;
          public          postgres    false    233            �            1259    57738    role    TABLE     i   CREATE TABLE public.role (
    id_aut_role integer NOT NULL,
    role_type character varying NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    57737    role_id_aut_role_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_aut_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.role_id_aut_role_seq;
       public          postgres    false    230            w           0    0    role_id_aut_role_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.role_id_aut_role_seq OWNED BY public.role.id_aut_role;
          public          postgres    false    229            �            1259    57785    route    TABLE     !  CREATE TABLE public.route (
    id_route integer NOT NULL,
    km_available_star double precision NOT NULL,
    km_available_end double precision NOT NULL,
    pick_up_location character varying NOT NULL,
    end_time time without time zone NOT NULL,
    id_solicitude integer NOT NULL
);
    DROP TABLE public.route;
       public         heap    postgres    false            �            1259    57784    route_id_route_seq    SEQUENCE     �   CREATE SEQUENCE public.route_id_route_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.route_id_route_seq;
       public          postgres    false    240            x           0    0    route_id_route_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.route_id_route_seq OWNED BY public.route.id_route;
          public          postgres    false    239            �            1259    57749 
   solicitude    TABLE     r  CREATE TABLE public.solicitude (
    id_solicitude integer NOT NULL,
    programming_to_be_done character varying NOT NULL,
    programming_start_time time without time zone NOT NULL,
    duration_time time without time zone NOT NULL,
    id_car integer NOT NULL,
    id_aut_prog_type integer NOT NULL,
    id_group integer NOT NULL,
    id_aut_date integer NOT NULL
);
    DROP TABLE public.solicitude;
       public         heap    postgres    false            �            1259    57748    solicitude_id_solicitude_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitude_id_solicitude_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.solicitude_id_solicitude_seq;
       public          postgres    false    232            y           0    0    solicitude_id_solicitude_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.solicitude_id_solicitude_seq OWNED BY public.solicitude.id_solicitude;
          public          postgres    false    231            �            1259    49619    type_car_situation    TABLE     }   CREATE TABLE public.type_car_situation (
    id_aut_type_cs integer NOT NULL,
    type_cs_name character varying NOT NULL
);
 &   DROP TABLE public.type_car_situation;
       public         heap    postgres    false            �            1259    49618 %   type_car_situation_id_aut_type_cs_seq    SEQUENCE     �   CREATE SEQUENCE public.type_car_situation_id_aut_type_cs_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.type_car_situation_id_aut_type_cs_seq;
       public          postgres    false    226            z           0    0 %   type_car_situation_id_aut_type_cs_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.type_car_situation_id_aut_type_cs_seq OWNED BY public.type_car_situation.id_aut_type_cs;
          public          postgres    false    225            �            1259    49608    type_driver_situation    TABLE     �   CREATE TABLE public.type_driver_situation (
    id_aut_type_ds integer NOT NULL,
    type_ds_name character varying NOT NULL
);
 )   DROP TABLE public.type_driver_situation;
       public         heap    postgres    false            �            1259    49607 (   type_driver_situation_id_aut_type_ds_seq    SEQUENCE     �   CREATE SEQUENCE public.type_driver_situation_id_aut_type_ds_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.type_driver_situation_id_aut_type_ds_seq;
       public          postgres    false    224            {           0    0 (   type_driver_situation_id_aut_type_ds_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.type_driver_situation_id_aut_type_ds_seq OWNED BY public.type_driver_situation.id_aut_type_ds;
          public          postgres    false    223            �            1259    49666    user    TABLE     �   CREATE TABLE public."user" (
    id_aut_user integer NOT NULL,
    user_name character varying NOT NULL,
    password_user character varying NOT NULL,
    id_aut_role integer NOT NULL,
    id_driver integer NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    49665    user_id_aut_user_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_aut_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.user_id_aut_user_seq;
       public          postgres    false    228            |           0    0    user_id_aut_user_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.user_id_aut_user_seq OWNED BY public."user".id_aut_user;
          public          postgres    false    227            g           2604    49586 
   car id_car    DEFAULT     h   ALTER TABLE ONLY public.car ALTER COLUMN id_car SET DEFAULT nextval('public.car_id_car_seq'::regclass);
 9   ALTER TABLE public.car ALTER COLUMN id_car DROP DEFAULT;
       public          postgres    false    219    220    220            h           2604    49604    car_situation id_cs    DEFAULT     z   ALTER TABLE ONLY public.car_situation ALTER COLUMN id_cs SET DEFAULT nextval('public.car_situation_id_cs_seq'::regclass);
 B   ALTER TABLE public.car_situation ALTER COLUMN id_cs DROP DEFAULT;
       public          postgres    false    221    222    222            t           2604    57811    change_type id_aut_change_type    DEFAULT     �   ALTER TABLE ONLY public.change_type ALTER COLUMN id_aut_change_type SET DEFAULT nextval('public.change_type_id_aut_change_type_seq'::regclass);
 M   ALTER TABLE public.change_type ALTER COLUMN id_aut_change_type DROP DEFAULT;
       public          postgres    false    245    246    246            o           2604    57772    date_d id_aut_date    DEFAULT     x   ALTER TABLE ONLY public.date_d ALTER COLUMN id_aut_date SET DEFAULT nextval('public.date_d_id_aut_date_seq'::regclass);
 A   ALTER TABLE public.date_d ALTER COLUMN id_aut_date DROP DEFAULT;
       public          postgres    false    236    235    236            e           2604    49550    driver id_driver    DEFAULT     t   ALTER TABLE ONLY public.driver ALTER COLUMN id_driver SET DEFAULT nextval('public.driver_id_driver_seq'::regclass);
 ?   ALTER TABLE public.driver ALTER COLUMN id_driver DROP DEFAULT;
       public          postgres    false    216    215    216            f           2604    49561    driver_situation id_ds    DEFAULT     �   ALTER TABLE ONLY public.driver_situation ALTER COLUMN id_ds SET DEFAULT nextval('public.driver_situation_id_ds_seq'::regclass);
 E   ALTER TABLE public.driver_situation ALTER COLUMN id_ds DROP DEFAULT;
       public          postgres    false    217    218    218            p           2604    57779    group_tour id_group    DEFAULT     z   ALTER TABLE ONLY public.group_tour ALTER COLUMN id_group SET DEFAULT nextval('public.group_tour_id_group_seq'::regclass);
 B   ALTER TABLE public.group_tour ALTER COLUMN id_group DROP DEFAULT;
       public          postgres    false    237    238    238            s           2604    57804    mod_change id_mod_change    DEFAULT     �   ALTER TABLE ONLY public.mod_change ALTER COLUMN id_mod_change SET DEFAULT nextval('public.mod_change_id_mod_change_seq'::regclass);
 G   ALTER TABLE public.mod_change ALTER COLUMN id_mod_change DROP DEFAULT;
       public          postgres    false    243    244    244            r           2604    57797    modification id_modification    DEFAULT     �   ALTER TABLE ONLY public.modification ALTER COLUMN id_modification SET DEFAULT nextval('public.modification_id_modification_seq'::regclass);
 K   ALTER TABLE public.modification ALTER COLUMN id_modification DROP DEFAULT;
       public          postgres    false    242    241    242            n           2604    57761 !   programming_type id_aut_prog_type    DEFAULT     �   ALTER TABLE ONLY public.programming_type ALTER COLUMN id_aut_prog_type SET DEFAULT nextval('public.programming_type_id_aut_prog_type_seq'::regclass);
 P   ALTER TABLE public.programming_type ALTER COLUMN id_aut_prog_type DROP DEFAULT;
       public          postgres    false    234    233    234            l           2604    57741    role id_aut_role    DEFAULT     t   ALTER TABLE ONLY public.role ALTER COLUMN id_aut_role SET DEFAULT nextval('public.role_id_aut_role_seq'::regclass);
 ?   ALTER TABLE public.role ALTER COLUMN id_aut_role DROP DEFAULT;
       public          postgres    false    229    230    230            q           2604    57788    route id_route    DEFAULT     p   ALTER TABLE ONLY public.route ALTER COLUMN id_route SET DEFAULT nextval('public.route_id_route_seq'::regclass);
 =   ALTER TABLE public.route ALTER COLUMN id_route DROP DEFAULT;
       public          postgres    false    239    240    240            m           2604    57752    solicitude id_solicitude    DEFAULT     �   ALTER TABLE ONLY public.solicitude ALTER COLUMN id_solicitude SET DEFAULT nextval('public.solicitude_id_solicitude_seq'::regclass);
 G   ALTER TABLE public.solicitude ALTER COLUMN id_solicitude DROP DEFAULT;
       public          postgres    false    232    231    232            j           2604    49622 !   type_car_situation id_aut_type_cs    DEFAULT     �   ALTER TABLE ONLY public.type_car_situation ALTER COLUMN id_aut_type_cs SET DEFAULT nextval('public.type_car_situation_id_aut_type_cs_seq'::regclass);
 P   ALTER TABLE public.type_car_situation ALTER COLUMN id_aut_type_cs DROP DEFAULT;
       public          postgres    false    226    225    226            i           2604    49611 $   type_driver_situation id_aut_type_ds    DEFAULT     �   ALTER TABLE ONLY public.type_driver_situation ALTER COLUMN id_aut_type_ds SET DEFAULT nextval('public.type_driver_situation_id_aut_type_ds_seq'::regclass);
 S   ALTER TABLE public.type_driver_situation ALTER COLUMN id_aut_type_ds DROP DEFAULT;
       public          postgres    false    223    224    224            k           2604    49669    user id_aut_user    DEFAULT     v   ALTER TABLE ONLY public."user" ALTER COLUMN id_aut_user SET DEFAULT nextval('public.user_id_aut_user_seq'::regclass);
 A   ALTER TABLE public."user" ALTER COLUMN id_aut_user DROP DEFAULT;
       public          postgres    false    228    227    228            L          0    49583    car 
   TABLE DATA           T   COPY public.car (id_car, car_number, car_brand, number_of_seats, id_cs) FROM stdin;
    public          postgres    false    220   ��       N          0    49601    car_situation 
   TABLE DATA           _   COPY public.car_situation (id_cs, return_date_cs, current_date_cs, id_aut_type_cs) FROM stdin;
    public          postgres    false    222   ��       f          0    57808    change_type 
   TABLE DATA           K   COPY public.change_type (id_aut_change_type, change_type_name) FROM stdin;
    public          postgres    false    246   ڲ       \          0    57769    date_d 
   TABLE DATA           >   COPY public.date_d (id_aut_date, id_date, hour_d) FROM stdin;
    public          postgres    false    236   ��       H          0    49547    driver 
   TABLE DATA           w   COPY public.driver (id_driver, dni_driver, driver_name, home_address, category, is_copilot, id_ds, id_car) FROM stdin;
    public          postgres    false    216   �       J          0    49558    driver_situation 
   TABLE DATA           b   COPY public.driver_situation (id_ds, return_date_ds, current_date_ds, id_aut_type_ds) FROM stdin;
    public          postgres    false    218   1�       ^          0    57776 
   group_tour 
   TABLE DATA           \   COPY public.group_tour (id_group, group_code, group_country, number_of_tourist) FROM stdin;
    public          postgres    false    238   N�       d          0    57801 
   mod_change 
   TABLE DATA           X   COPY public.mod_change (id_mod_change, id_aut_change_type, id_modification) FROM stdin;
    public          postgres    false    244   k�       b          0    57794    modification 
   TABLE DATA           Y   COPY public.modification (id_modification, modification_date, id_solicitude) FROM stdin;
    public          postgres    false    242   ��       Z          0    57758    programming_type 
   TABLE DATA           L   COPY public.programming_type (id_aut_prog_type, prog_type_name) FROM stdin;
    public          postgres    false    234   ��       V          0    57738    role 
   TABLE DATA           6   COPY public.role (id_aut_role, role_type) FROM stdin;
    public          postgres    false    230   ³       `          0    57785    route 
   TABLE DATA           y   COPY public.route (id_route, km_available_star, km_available_end, pick_up_location, end_time, id_solicitude) FROM stdin;
    public          postgres    false    240   ߳       X          0    57749 
   solicitude 
   TABLE DATA           �   COPY public.solicitude (id_solicitude, programming_to_be_done, programming_start_time, duration_time, id_car, id_aut_prog_type, id_group, id_aut_date) FROM stdin;
    public          postgres    false    232   ��       R          0    49619    type_car_situation 
   TABLE DATA           J   COPY public.type_car_situation (id_aut_type_cs, type_cs_name) FROM stdin;
    public          postgres    false    226   �       P          0    49608    type_driver_situation 
   TABLE DATA           M   COPY public.type_driver_situation (id_aut_type_ds, type_ds_name) FROM stdin;
    public          postgres    false    224   6�       T          0    49666    user 
   TABLE DATA           _   COPY public."user" (id_aut_user, user_name, password_user, id_aut_role, id_driver) FROM stdin;
    public          postgres    false    228   S�       }           0    0    car_id_car_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.car_id_car_seq', 3, true);
          public          postgres    false    219            ~           0    0    car_situation_id_cs_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.car_situation_id_cs_seq', 5, true);
          public          postgres    false    221                       0    0 "   change_type_id_aut_change_type_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.change_type_id_aut_change_type_seq', 2, true);
          public          postgres    false    245            �           0    0    date_d_id_aut_date_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.date_d_id_aut_date_seq', 2, true);
          public          postgres    false    235            �           0    0    driver_id_driver_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.driver_id_driver_seq', 7, true);
          public          postgres    false    215            �           0    0    driver_situation_id_ds_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.driver_situation_id_ds_seq', 2, true);
          public          postgres    false    217            �           0    0    group_tour_id_group_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.group_tour_id_group_seq', 2, true);
          public          postgres    false    237            �           0    0    mod_change_id_mod_change_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.mod_change_id_mod_change_seq', 4, true);
          public          postgres    false    243            �           0    0     modification_id_modification_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.modification_id_modification_seq', 3, true);
          public          postgres    false    241            �           0    0 %   programming_type_id_aut_prog_type_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.programming_type_id_aut_prog_type_seq', 2, true);
          public          postgres    false    233            �           0    0    role_id_aut_role_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.role_id_aut_role_seq', 3, true);
          public          postgres    false    229            �           0    0    route_id_route_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.route_id_route_seq', 2, true);
          public          postgres    false    239            �           0    0    solicitude_id_solicitude_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.solicitude_id_solicitude_seq', 8, true);
          public          postgres    false    231            �           0    0 %   type_car_situation_id_aut_type_cs_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.type_car_situation_id_aut_type_cs_seq', 6, true);
          public          postgres    false    225            �           0    0 (   type_driver_situation_id_aut_type_ds_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.type_driver_situation_id_aut_type_ds_seq', 2, true);
          public          postgres    false    223            �           0    0    user_id_aut_user_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_id_aut_user_seq', 7, true);
          public          postgres    false    227            �           2606    57806 )   mod_change PK_0994da54d1cb5684df54e1e635b 
   CONSTRAINT     t   ALTER TABLE ONLY public.mod_change
    ADD CONSTRAINT "PK_0994da54d1cb5684df54e1e635b" PRIMARY KEY (id_mod_change);
 U   ALTER TABLE ONLY public.mod_change DROP CONSTRAINT "PK_0994da54d1cb5684df54e1e635b";
       public            postgres    false    244            �           2606    49615 4   type_driver_situation PK_0bf9b3f3edf08a8cdcf12a13191 
   CONSTRAINT     �   ALTER TABLE ONLY public.type_driver_situation
    ADD CONSTRAINT "PK_0bf9b3f3edf08a8cdcf12a13191" PRIMARY KEY (id_aut_type_ds);
 `   ALTER TABLE ONLY public.type_driver_situation DROP CONSTRAINT "PK_0bf9b3f3edf08a8cdcf12a13191";
       public            postgres    false    224            �           2606    49626 1   type_car_situation PK_393759b3192752b800f3a914e07 
   CONSTRAINT     }   ALTER TABLE ONLY public.type_car_situation
    ADD CONSTRAINT "PK_393759b3192752b800f3a914e07" PRIMARY KEY (id_aut_type_cs);
 ]   ALTER TABLE ONLY public.type_car_situation DROP CONSTRAINT "PK_393759b3192752b800f3a914e07";
       public            postgres    false    226            �           2606    57756 )   solicitude PK_478518c7ea6ac83aaf3f98865e3 
   CONSTRAINT     t   ALTER TABLE ONLY public.solicitude
    ADD CONSTRAINT "PK_478518c7ea6ac83aaf3f98865e3" PRIMARY KEY (id_solicitude);
 U   ALTER TABLE ONLY public.solicitude DROP CONSTRAINT "PK_478518c7ea6ac83aaf3f98865e3";
       public            postgres    false    232            �           2606    49673 #   user PK_6915eb87d97eab66e3f43ac26cf 
   CONSTRAINT     n   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_6915eb87d97eab66e3f43ac26cf" PRIMARY KEY (id_aut_user);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_6915eb87d97eab66e3f43ac26cf";
       public            postgres    false    228            �           2606    57783 )   group_tour PK_72a6f2a36040e995a7fe92c203c 
   CONSTRAINT     o   ALTER TABLE ONLY public.group_tour
    ADD CONSTRAINT "PK_72a6f2a36040e995a7fe92c203c" PRIMARY KEY (id_group);
 U   ALTER TABLE ONLY public.group_tour DROP CONSTRAINT "PK_72a6f2a36040e995a7fe92c203c";
       public            postgres    false    238            �           2606    57774 %   date_d PK_83d9dea07e3bb4e9a3046c60276 
   CONSTRAINT     n   ALTER TABLE ONLY public.date_d
    ADD CONSTRAINT "PK_83d9dea07e3bb4e9a3046c60276" PRIMARY KEY (id_aut_date);
 Q   ALTER TABLE ONLY public.date_d DROP CONSTRAINT "PK_83d9dea07e3bb4e9a3046c60276";
       public            postgres    false    236            �           2606    49606 ,   car_situation PK_9641c62e062473116bee933190d 
   CONSTRAINT     o   ALTER TABLE ONLY public.car_situation
    ADD CONSTRAINT "PK_9641c62e062473116bee933190d" PRIMARY KEY (id_cs);
 X   ALTER TABLE ONLY public.car_situation DROP CONSTRAINT "PK_9641c62e062473116bee933190d";
       public            postgres    false    222            �           2606    57799 +   modification PK_d174fdacca71339b5d9729a7bea 
   CONSTRAINT     x   ALTER TABLE ONLY public.modification
    ADD CONSTRAINT "PK_d174fdacca71339b5d9729a7bea" PRIMARY KEY (id_modification);
 W   ALTER TABLE ONLY public.modification DROP CONSTRAINT "PK_d174fdacca71339b5d9729a7bea";
       public            postgres    false    242            �           2606    57745 #   role PK_dd8d00a1b205385f47b2c5c68f9 
   CONSTRAINT     l   ALTER TABLE ONLY public.role
    ADD CONSTRAINT "PK_dd8d00a1b205385f47b2c5c68f9" PRIMARY KEY (id_aut_role);
 O   ALTER TABLE ONLY public.role DROP CONSTRAINT "PK_dd8d00a1b205385f47b2c5c68f9";
       public            postgres    false    230            v           2606    49554 %   driver PK_e0244a284b77a809c3d0b0a2412 
   CONSTRAINT     l   ALTER TABLE ONLY public.driver
    ADD CONSTRAINT "PK_e0244a284b77a809c3d0b0a2412" PRIMARY KEY (id_driver);
 Q   ALTER TABLE ONLY public.driver DROP CONSTRAINT "PK_e0244a284b77a809c3d0b0a2412";
       public            postgres    false    216            �           2606    57792 $   route PK_e72be282a3f2543915725c9ed52 
   CONSTRAINT     j   ALTER TABLE ONLY public.route
    ADD CONSTRAINT "PK_e72be282a3f2543915725c9ed52" PRIMARY KEY (id_route);
 P   ALTER TABLE ONLY public.route DROP CONSTRAINT "PK_e72be282a3f2543915725c9ed52";
       public            postgres    false    240            z           2606    49563 /   driver_situation PK_e931e69d6aebe2e408196418a4a 
   CONSTRAINT     r   ALTER TABLE ONLY public.driver_situation
    ADD CONSTRAINT "PK_e931e69d6aebe2e408196418a4a" PRIMARY KEY (id_ds);
 [   ALTER TABLE ONLY public.driver_situation DROP CONSTRAINT "PK_e931e69d6aebe2e408196418a4a";
       public            postgres    false    218            |           2606    49590 "   car PK_ede50d24e10da9e8e3e762555fd 
   CONSTRAINT     f   ALTER TABLE ONLY public.car
    ADD CONSTRAINT "PK_ede50d24e10da9e8e3e762555fd" PRIMARY KEY (id_car);
 N   ALTER TABLE ONLY public.car DROP CONSTRAINT "PK_ede50d24e10da9e8e3e762555fd";
       public            postgres    false    220            �           2606    57815 *   change_type PK_ee8515d2db7f07ce39e8d2d898e 
   CONSTRAINT     z   ALTER TABLE ONLY public.change_type
    ADD CONSTRAINT "PK_ee8515d2db7f07ce39e8d2d898e" PRIMARY KEY (id_aut_change_type);
 V   ALTER TABLE ONLY public.change_type DROP CONSTRAINT "PK_ee8515d2db7f07ce39e8d2d898e";
       public            postgres    false    246            �           2606    57765 /   programming_type PK_f9e70cb0314085ce281ec6af016 
   CONSTRAINT     }   ALTER TABLE ONLY public.programming_type
    ADD CONSTRAINT "PK_f9e70cb0314085ce281ec6af016" PRIMARY KEY (id_aut_prog_type);
 [   ALTER TABLE ONLY public.programming_type DROP CONSTRAINT "PK_f9e70cb0314085ce281ec6af016";
       public            postgres    false    234            �           2606    49664 1   type_car_situation UQ_2c6c47e4b419d8750e22cce4363 
   CONSTRAINT     v   ALTER TABLE ONLY public.type_car_situation
    ADD CONSTRAINT "UQ_2c6c47e4b419d8750e22cce4363" UNIQUE (type_cs_name);
 ]   ALTER TABLE ONLY public.type_car_situation DROP CONSTRAINT "UQ_2c6c47e4b419d8750e22cce4363";
       public            postgres    false    226            �           2606    57817 *   change_type UQ_443d3fbc7dbaa3bc2d38c2ab9f8 
   CONSTRAINT     s   ALTER TABLE ONLY public.change_type
    ADD CONSTRAINT "UQ_443d3fbc7dbaa3bc2d38c2ab9f8" UNIQUE (change_type_name);
 V   ALTER TABLE ONLY public.change_type DROP CONSTRAINT "UQ_443d3fbc7dbaa3bc2d38c2ab9f8";
       public            postgres    false    246            �           2606    57767 /   programming_type UQ_57d269fba4fec6d54652e339191 
   CONSTRAINT     v   ALTER TABLE ONLY public.programming_type
    ADD CONSTRAINT "UQ_57d269fba4fec6d54652e339191" UNIQUE (prog_type_name);
 [   ALTER TABLE ONLY public.programming_type DROP CONSTRAINT "UQ_57d269fba4fec6d54652e339191";
       public            postgres    false    234            ~           2606    49592 "   car UQ_5a4923ed240697a30e8017cd2c3 
   CONSTRAINT     e   ALTER TABLE ONLY public.car
    ADD CONSTRAINT "UQ_5a4923ed240697a30e8017cd2c3" UNIQUE (car_number);
 N   ALTER TABLE ONLY public.car DROP CONSTRAINT "UQ_5a4923ed240697a30e8017cd2c3";
       public            postgres    false    220            x           2606    49556 %   driver UQ_a315800daf79762572c3b2d2490 
   CONSTRAINT     h   ALTER TABLE ONLY public.driver
    ADD CONSTRAINT "UQ_a315800daf79762572c3b2d2490" UNIQUE (dni_driver);
 Q   ALTER TABLE ONLY public.driver DROP CONSTRAINT "UQ_a315800daf79762572c3b2d2490";
       public            postgres    false    216            �           2606    57829 #   user UQ_c3a71cf1400768819eedbc1dd47 
   CONSTRAINT     g   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_c3a71cf1400768819eedbc1dd47" UNIQUE (id_driver);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "UQ_c3a71cf1400768819eedbc1dd47";
       public            postgres    false    228            �           2606    65987 $   route UQ_cbc183a82a28ec0ffa75bdd73e6 
   CONSTRAINT     j   ALTER TABLE ONLY public.route
    ADD CONSTRAINT "UQ_cbc183a82a28ec0ffa75bdd73e6" UNIQUE (id_solicitude);
 P   ALTER TABLE ONLY public.route DROP CONSTRAINT "UQ_cbc183a82a28ec0ffa75bdd73e6";
       public            postgres    false    240            �           2606    49675 #   user UQ_d34106f8ec1ebaf66f4f8609dd6 
   CONSTRAINT     g   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "UQ_d34106f8ec1ebaf66f4f8609dd6" UNIQUE (user_name);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "UQ_d34106f8ec1ebaf66f4f8609dd6";
       public            postgres    false    228            �           2606    57747 #   role UQ_dbbbe40c7e5b1b3562102dfef59 
   CONSTRAINT     e   ALTER TABLE ONLY public.role
    ADD CONSTRAINT "UQ_dbbbe40c7e5b1b3562102dfef59" UNIQUE (role_type);
 O   ALTER TABLE ONLY public.role DROP CONSTRAINT "UQ_dbbbe40c7e5b1b3562102dfef59";
       public            postgres    false    230            �           2606    49617 4   type_driver_situation UQ_ff82061c762afa9a8e561bc0abf 
   CONSTRAINT     y   ALTER TABLE ONLY public.type_driver_situation
    ADD CONSTRAINT "UQ_ff82061c762afa9a8e561bc0abf" UNIQUE (type_ds_name);
 `   ALTER TABLE ONLY public.type_driver_situation DROP CONSTRAINT "UQ_ff82061c762afa9a8e561bc0abf";
       public            postgres    false    224            �           2606    66023 +   modification FK_088abdc33019077e364846eaa06    FK CONSTRAINT     �   ALTER TABLE ONLY public.modification
    ADD CONSTRAINT "FK_088abdc33019077e364846eaa06" FOREIGN KEY (id_solicitude) REFERENCES public.solicitude(id_solicitude);
 W   ALTER TABLE ONLY public.modification DROP CONSTRAINT "FK_088abdc33019077e364846eaa06";
       public          postgres    false    4756    242    232            �           2606    65981 )   solicitude FK_1bdaa418b5587107fee7dde862f    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitude
    ADD CONSTRAINT "FK_1bdaa418b5587107fee7dde862f" FOREIGN KEY (id_aut_prog_type) REFERENCES public.programming_type(id_aut_prog_type);
 U   ALTER TABLE ONLY public.solicitude DROP CONSTRAINT "FK_1bdaa418b5587107fee7dde862f";
       public          postgres    false    234    4758    232            �           2606    65976 )   solicitude FK_310e12ae383df7127f5d15d19f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitude
    ADD CONSTRAINT "FK_310e12ae383df7127f5d15d19f6" FOREIGN KEY (id_car) REFERENCES public.car(id_car);
 U   ALTER TABLE ONLY public.solicitude DROP CONSTRAINT "FK_310e12ae383df7127f5d15d19f6";
       public          postgres    false    232    4732    220            �           2606    65946 %   driver FK_36d0ace6b9b8c5f68f07ca9a8af    FK CONSTRAINT     �   ALTER TABLE ONLY public.driver
    ADD CONSTRAINT "FK_36d0ace6b9b8c5f68f07ca9a8af" FOREIGN KEY (id_ds) REFERENCES public.driver_situation(id_ds);
 Q   ALTER TABLE ONLY public.driver DROP CONSTRAINT "FK_36d0ace6b9b8c5f68f07ca9a8af";
       public          postgres    false    218    4730    216            �           2606    65966 ,   car_situation FK_39826f2d601ac23f5448d04eb41    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_situation
    ADD CONSTRAINT "FK_39826f2d601ac23f5448d04eb41" FOREIGN KEY (id_aut_type_cs) REFERENCES public.type_car_situation(id_aut_type_cs);
 X   ALTER TABLE ONLY public.car_situation DROP CONSTRAINT "FK_39826f2d601ac23f5448d04eb41";
       public          postgres    false    222    4742    226            �           2606    66003 )   mod_change FK_3cf98b0808dd2fddbc1c76b9ee0    FK CONSTRAINT     �   ALTER TABLE ONLY public.mod_change
    ADD CONSTRAINT "FK_3cf98b0808dd2fddbc1c76b9ee0" FOREIGN KEY (id_aut_change_type) REFERENCES public.change_type(id_aut_change_type);
 U   ALTER TABLE ONLY public.mod_change DROP CONSTRAINT "FK_3cf98b0808dd2fddbc1c76b9ee0";
       public          postgres    false    4774    246    244            �           2606    57823 #   user FK_4a6f52fda7ebebc0a21c59b454a    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "FK_4a6f52fda7ebebc0a21c59b454a" FOREIGN KEY (id_aut_role) REFERENCES public.role(id_aut_role);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "FK_4a6f52fda7ebebc0a21c59b454a";
       public          postgres    false    4752    230    228            �           2606    65951 %   driver FK_58f27181ff776c8bb4392a18cf5    FK CONSTRAINT     �   ALTER TABLE ONLY public.driver
    ADD CONSTRAINT "FK_58f27181ff776c8bb4392a18cf5" FOREIGN KEY (id_car) REFERENCES public.car(id_car);
 Q   ALTER TABLE ONLY public.driver DROP CONSTRAINT "FK_58f27181ff776c8bb4392a18cf5";
       public          postgres    false    216    220    4732            �           2606    65956 "   car FK_7b8dd6d98828b2c5c22a8fd17fb    FK CONSTRAINT     �   ALTER TABLE ONLY public.car
    ADD CONSTRAINT "FK_7b8dd6d98828b2c5c22a8fd17fb" FOREIGN KEY (id_cs) REFERENCES public.car_situation(id_cs);
 N   ALTER TABLE ONLY public.car DROP CONSTRAINT "FK_7b8dd6d98828b2c5c22a8fd17fb";
       public          postgres    false    220    4736    222            �           2606    66013 )   mod_change FK_97f8cedce27b31024e82eaa8714    FK CONSTRAINT     �   ALTER TABLE ONLY public.mod_change
    ADD CONSTRAINT "FK_97f8cedce27b31024e82eaa8714" FOREIGN KEY (id_modification) REFERENCES public.modification(id_modification);
 U   ALTER TABLE ONLY public.mod_change DROP CONSTRAINT "FK_97f8cedce27b31024e82eaa8714";
       public          postgres    false    4770    242    244            �           2606    57832 #   user FK_c3a71cf1400768819eedbc1dd47    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "FK_c3a71cf1400768819eedbc1dd47" FOREIGN KEY (id_driver) REFERENCES public.driver(id_driver);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "FK_c3a71cf1400768819eedbc1dd47";
       public          postgres    false    4726    228    216            �           2606    65988 $   route FK_cbc183a82a28ec0ffa75bdd73e6    FK CONSTRAINT     �   ALTER TABLE ONLY public.route
    ADD CONSTRAINT "FK_cbc183a82a28ec0ffa75bdd73e6" FOREIGN KEY (id_solicitude) REFERENCES public.solicitude(id_solicitude);
 P   ALTER TABLE ONLY public.route DROP CONSTRAINT "FK_cbc183a82a28ec0ffa75bdd73e6";
       public          postgres    false    232    240    4756            �           2606    65993 )   solicitude FK_def7abf47f45ae7fd99e7b2707a    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitude
    ADD CONSTRAINT "FK_def7abf47f45ae7fd99e7b2707a" FOREIGN KEY (id_group) REFERENCES public.group_tour(id_group);
 U   ALTER TABLE ONLY public.solicitude DROP CONSTRAINT "FK_def7abf47f45ae7fd99e7b2707a";
       public          postgres    false    238    232    4764            �           2606    65941 /   driver_situation FK_e20c1cf663d8ea6a41b9427dab2    FK CONSTRAINT     �   ALTER TABLE ONLY public.driver_situation
    ADD CONSTRAINT "FK_e20c1cf663d8ea6a41b9427dab2" FOREIGN KEY (id_aut_type_ds) REFERENCES public.type_driver_situation(id_aut_type_ds);
 [   ALTER TABLE ONLY public.driver_situation DROP CONSTRAINT "FK_e20c1cf663d8ea6a41b9427dab2";
       public          postgres    false    224    218    4738            �           2606    65998 )   solicitude FK_fdd6e069aeac21ec01b61b7d884    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitude
    ADD CONSTRAINT "FK_fdd6e069aeac21ec01b61b7d884" FOREIGN KEY (id_aut_date) REFERENCES public.date_d(id_aut_date);
 U   ALTER TABLE ONLY public.solicitude DROP CONSTRAINT "FK_fdd6e069aeac21ec01b61b7d884";
       public          postgres    false    4762    236    232            L      x������ � �      N      x������ � �      f      x������ � �      \      x������ � �      H      x������ � �      J      x������ � �      ^      x������ � �      d      x������ � �      b      x������ � �      Z      x������ � �      V      x������ � �      `      x������ � �      X      x������ � �      R      x������ � �      P      x������ � �      T      x������ � �     