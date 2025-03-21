PGDMP  $                    }            pruebadb    17.0    17.0 u    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            Z           1262    40993    pruebadb    DATABASE     }   CREATE DATABASE pruebadb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE pruebadb;
                     postgres    false            �            1259    41526 	   attention    TABLE     �   CREATE TABLE public.attention (
    attentionid integer NOT NULL,
    turn_turnid integer NOT NULL,
    client_clientid integer NOT NULL,
    attentiontype_attentiontypeid integer NOT NULL,
    attentionstatus_statusid integer NOT NULL
);
    DROP TABLE public.attention;
       public         heap r       postgres    false            �            1259    41525    attention_attentionid_seq    SEQUENCE     �   CREATE SEQUENCE public.attention_attentionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.attention_attentionid_seq;
       public               postgres    false    243            [           0    0    attention_attentionid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.attention_attentionid_seq OWNED BY public.attention.attentionid;
          public               postgres    false    242            �            1259    41459    attentionstatus    TABLE     x   CREATE TABLE public.attentionstatus (
    statusid integer NOT NULL,
    description character varying(255) NOT NULL
);
 #   DROP TABLE public.attentionstatus;
       public         heap r       postgres    false            �            1259    41458    attentionstatus_statusid_seq    SEQUENCE     �   CREATE SEQUENCE public.attentionstatus_statusid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.attentionstatus_statusid_seq;
       public               postgres    false    237            \           0    0    attentionstatus_statusid_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.attentionstatus_statusid_seq OWNED BY public.attentionstatus.statusid;
          public               postgres    false    236            �            1259    41468    attentiontype    TABLE     }   CREATE TABLE public.attentiontype (
    attentiontypeid integer NOT NULL,
    description character varying(255) NOT NULL
);
 !   DROP TABLE public.attentiontype;
       public         heap r       postgres    false            �            1259    41467 !   attentiontype_attentiontypeid_seq    SEQUENCE     �   CREATE SEQUENCE public.attentiontype_attentiontypeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.attentiontype_attentiontypeid_seq;
       public               postgres    false    239            ]           0    0 !   attentiontype_attentiontypeid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.attentiontype_attentiontypeid_seq OWNED BY public.attentiontype.attentiontypeid;
          public               postgres    false    238            �            1259    41366    cash    TABLE     �   CREATE TABLE public.cash (
    cashid integer NOT NULL,
    cashdescription character varying(255) NOT NULL,
    active character varying(50) NOT NULL
);
    DROP TABLE public.cash;
       public         heap r       postgres    false            �            1259    41365    cash_cashid_seq    SEQUENCE     �   CREATE SEQUENCE public.cash_cashid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cash_cashid_seq;
       public               postgres    false    223            ^           0    0    cash_cashid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cash_cashid_seq OWNED BY public.cash.cashid;
          public               postgres    false    222            �            1259    41388    client    TABLE     �  CREATE TABLE public.client (
    clientid integer NOT NULL,
    name character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    identification character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    phonenumber character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    referenceaddress character varying(255) NOT NULL
);
    DROP TABLE public.client;
       public         heap r       postgres    false            �            1259    41387    client_clientid_seq    SEQUENCE     �   CREATE SEQUENCE public.client_clientid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.client_clientid_seq;
       public               postgres    false    226            _           0    0    client_clientid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.client_clientid_seq OWNED BY public.client.clientid;
          public               postgres    false    225            �            1259    41420    contract    TABLE        CREATE TABLE public.contract (
    contractid integer NOT NULL,
    service_serviceid integer NOT NULL,
    statuscontract_statusid character varying(50) NOT NULL,
    client_clientid integer NOT NULL,
    methodpayment_methodpaymentid integer NOT NULL
);
    DROP TABLE public.contract;
       public         heap r       postgres    false            �            1259    41419    contract_contractid_seq    SEQUENCE     �   CREATE SEQUENCE public.contract_contractid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.contract_contractid_seq;
       public               postgres    false    233            `           0    0    contract_contractid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.contract_contractid_seq OWNED BY public.contract.contractid;
          public               postgres    false    232            �            1259    41447    device    TABLE     �   CREATE TABLE public.device (
    deviceid integer NOT NULL,
    devicename character varying(255) NOT NULL,
    service_serviceid integer NOT NULL
);
    DROP TABLE public.device;
       public         heap r       postgres    false            �            1259    41446    device_deviceid_seq    SEQUENCE     �   CREATE SEQUENCE public.device_deviceid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.device_deviceid_seq;
       public               postgres    false    235            a           0    0    device_deviceid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.device_deviceid_seq OWNED BY public.device.deviceid;
          public               postgres    false    234            �            1259    41406    methodpayment    TABLE     }   CREATE TABLE public.methodpayment (
    methodpaymentid integer NOT NULL,
    description character varying(255) NOT NULL
);
 !   DROP TABLE public.methodpayment;
       public         heap r       postgres    false            �            1259    41405 !   methodpayment_methodpaymentid_seq    SEQUENCE     �   CREATE SEQUENCE public.methodpayment_methodpaymentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.methodpayment_methodpaymentid_seq;
       public               postgres    false    229            b           0    0 !   methodpayment_methodpaymentid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.methodpayment_methodpaymentid_seq OWNED BY public.methodpayment.methodpaymentid;
          public               postgres    false    228            �            1259    41340    rol    TABLE     e   CREATE TABLE public.rol (
    rolid integer NOT NULL,
    rolename character varying(50) NOT NULL
);
    DROP TABLE public.rol;
       public         heap r       postgres    false            �            1259    41339    rol_rolid_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_rolid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_rolid_seq;
       public               postgres    false    219            c           0    0    rol_rolid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_rolid_seq OWNED BY public.rol.rolid;
          public               postgres    false    218            �            1259    41413    services    TABLE     r   CREATE TABLE public.services (
    serviceid integer NOT NULL,
    description character varying(255) NOT NULL
);
    DROP TABLE public.services;
       public         heap r       postgres    false            �            1259    41412    services_serviceid_seq    SEQUENCE     �   CREATE SEQUENCE public.services_serviceid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.services_serviceid_seq;
       public               postgres    false    231            d           0    0    services_serviceid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.services_serviceid_seq OWNED BY public.services.serviceid;
          public               postgres    false    230            �            1259    41400    statuscontract    TABLE     �   CREATE TABLE public.statuscontract (
    statusid character varying(50) NOT NULL,
    description character varying(255) NOT NULL
);
 "   DROP TABLE public.statuscontract;
       public         heap r       postgres    false            �            1259    41477    turn    TABLE     k   CREATE TABLE public.turn (
    turnid integer NOT NULL,
    description character varying(255) NOT NULL
);
    DROP TABLE public.turn;
       public         heap r       postgres    false            �            1259    41476    turn_turnid_seq    SEQUENCE     �   CREATE SEQUENCE public.turn_turnid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.turn_turnid_seq;
       public               postgres    false    241            e           0    0    turn_turnid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.turn_turnid_seq OWNED BY public.turn.turnid;
          public               postgres    false    240            �            1259    41347    user    TABLE     W  CREATE TABLE public."user" (
    userid integer NOT NULL,
    username character varying(20) NOT NULL,
    password character varying(30) NOT NULL,
    rol_rolid integer NOT NULL,
    usercreate integer NOT NULL,
    userapproval integer,
    dateapproval timestamp without time zone,
    userstatus_statudid character varying(50) NOT NULL
);
    DROP TABLE public."user";
       public         heap r       postgres    false            �            1259    41346    user_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.user_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.user_userid_seq;
       public               postgres    false    221            f           0    0    user_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_userid_seq OWNED BY public."user".userid;
          public               postgres    false    220            �            1259    41372    usercash    TABLE     [   CREATE TABLE public.usercash (
    userid integer NOT NULL,
    cashid integer NOT NULL
);
    DROP TABLE public.usercash;
       public         heap r       postgres    false            �            1259    41334 
   userstatus    TABLE     �   CREATE TABLE public.userstatus (
    statusid character varying(50) NOT NULL,
    description character varying(50) NOT NULL
);
    DROP TABLE public.userstatus;
       public         heap r       postgres    false            o           2604    41529    attention attentionid    DEFAULT     ~   ALTER TABLE ONLY public.attention ALTER COLUMN attentionid SET DEFAULT nextval('public.attention_attentionid_seq'::regclass);
 D   ALTER TABLE public.attention ALTER COLUMN attentionid DROP DEFAULT;
       public               postgres    false    242    243    243            l           2604    41462    attentionstatus statusid    DEFAULT     �   ALTER TABLE ONLY public.attentionstatus ALTER COLUMN statusid SET DEFAULT nextval('public.attentionstatus_statusid_seq'::regclass);
 G   ALTER TABLE public.attentionstatus ALTER COLUMN statusid DROP DEFAULT;
       public               postgres    false    236    237    237            m           2604    41471    attentiontype attentiontypeid    DEFAULT     �   ALTER TABLE ONLY public.attentiontype ALTER COLUMN attentiontypeid SET DEFAULT nextval('public.attentiontype_attentiontypeid_seq'::regclass);
 L   ALTER TABLE public.attentiontype ALTER COLUMN attentiontypeid DROP DEFAULT;
       public               postgres    false    239    238    239            f           2604    41369    cash cashid    DEFAULT     j   ALTER TABLE ONLY public.cash ALTER COLUMN cashid SET DEFAULT nextval('public.cash_cashid_seq'::regclass);
 :   ALTER TABLE public.cash ALTER COLUMN cashid DROP DEFAULT;
       public               postgres    false    223    222    223            g           2604    41391    client clientid    DEFAULT     r   ALTER TABLE ONLY public.client ALTER COLUMN clientid SET DEFAULT nextval('public.client_clientid_seq'::regclass);
 >   ALTER TABLE public.client ALTER COLUMN clientid DROP DEFAULT;
       public               postgres    false    225    226    226            j           2604    41423    contract contractid    DEFAULT     z   ALTER TABLE ONLY public.contract ALTER COLUMN contractid SET DEFAULT nextval('public.contract_contractid_seq'::regclass);
 B   ALTER TABLE public.contract ALTER COLUMN contractid DROP DEFAULT;
       public               postgres    false    233    232    233            k           2604    41450    device deviceid    DEFAULT     r   ALTER TABLE ONLY public.device ALTER COLUMN deviceid SET DEFAULT nextval('public.device_deviceid_seq'::regclass);
 >   ALTER TABLE public.device ALTER COLUMN deviceid DROP DEFAULT;
       public               postgres    false    234    235    235            h           2604    41409    methodpayment methodpaymentid    DEFAULT     �   ALTER TABLE ONLY public.methodpayment ALTER COLUMN methodpaymentid SET DEFAULT nextval('public.methodpayment_methodpaymentid_seq'::regclass);
 L   ALTER TABLE public.methodpayment ALTER COLUMN methodpaymentid DROP DEFAULT;
       public               postgres    false    229    228    229            d           2604    41343 	   rol rolid    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN rolid SET DEFAULT nextval('public.rol_rolid_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN rolid DROP DEFAULT;
       public               postgres    false    219    218    219            i           2604    41416    services serviceid    DEFAULT     x   ALTER TABLE ONLY public.services ALTER COLUMN serviceid SET DEFAULT nextval('public.services_serviceid_seq'::regclass);
 A   ALTER TABLE public.services ALTER COLUMN serviceid DROP DEFAULT;
       public               postgres    false    230    231    231            n           2604    41480    turn turnid    DEFAULT     j   ALTER TABLE ONLY public.turn ALTER COLUMN turnid SET DEFAULT nextval('public.turn_turnid_seq'::regclass);
 :   ALTER TABLE public.turn ALTER COLUMN turnid DROP DEFAULT;
       public               postgres    false    240    241    241            e           2604    41350    user userid    DEFAULT     l   ALTER TABLE ONLY public."user" ALTER COLUMN userid SET DEFAULT nextval('public.user_userid_seq'::regclass);
 <   ALTER TABLE public."user" ALTER COLUMN userid DROP DEFAULT;
       public               postgres    false    221    220    221            T          0    41526 	   attention 
   TABLE DATA           �   COPY public.attention (attentionid, turn_turnid, client_clientid, attentiontype_attentiontypeid, attentionstatus_statusid) FROM stdin;
    public               postgres    false    243   ��       N          0    41459    attentionstatus 
   TABLE DATA           @   COPY public.attentionstatus (statusid, description) FROM stdin;
    public               postgres    false    237   ��       P          0    41468    attentiontype 
   TABLE DATA           E   COPY public.attentiontype (attentiontypeid, description) FROM stdin;
    public               postgres    false    239   ˍ       @          0    41366    cash 
   TABLE DATA           ?   COPY public.cash (cashid, cashdescription, active) FROM stdin;
    public               postgres    false    223   �       C          0    41388    client 
   TABLE DATA           y   COPY public.client (clientid, name, lastname, identification, email, phonenumber, address, referenceaddress) FROM stdin;
    public               postgres    false    226   �       J          0    41420    contract 
   TABLE DATA           �   COPY public.contract (contractid, service_serviceid, statuscontract_statusid, client_clientid, methodpayment_methodpaymentid) FROM stdin;
    public               postgres    false    233   "�       L          0    41447    device 
   TABLE DATA           I   COPY public.device (deviceid, devicename, service_serviceid) FROM stdin;
    public               postgres    false    235   ?�       F          0    41406    methodpayment 
   TABLE DATA           E   COPY public.methodpayment (methodpaymentid, description) FROM stdin;
    public               postgres    false    229   \�       <          0    41340    rol 
   TABLE DATA           .   COPY public.rol (rolid, rolename) FROM stdin;
    public               postgres    false    219   y�       H          0    41413    services 
   TABLE DATA           :   COPY public.services (serviceid, description) FROM stdin;
    public               postgres    false    231   Î       D          0    41400    statuscontract 
   TABLE DATA           ?   COPY public.statuscontract (statusid, description) FROM stdin;
    public               postgres    false    227   ��       R          0    41477    turn 
   TABLE DATA           3   COPY public.turn (turnid, description) FROM stdin;
    public               postgres    false    241   ��       >          0    41347    user 
   TABLE DATA           �   COPY public."user" (userid, username, password, rol_rolid, usercreate, userapproval, dateapproval, userstatus_statudid) FROM stdin;
    public               postgres    false    221   �       A          0    41372    usercash 
   TABLE DATA           2   COPY public.usercash (userid, cashid) FROM stdin;
    public               postgres    false    224   ]�       :          0    41334 
   userstatus 
   TABLE DATA           ;   COPY public.userstatus (statusid, description) FROM stdin;
    public               postgres    false    217   z�       g           0    0    attention_attentionid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.attention_attentionid_seq', 1, false);
          public               postgres    false    242            h           0    0    attentionstatus_statusid_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.attentionstatus_statusid_seq', 1, false);
          public               postgres    false    236            i           0    0 !   attentiontype_attentiontypeid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.attentiontype_attentiontypeid_seq', 1, false);
          public               postgres    false    238            j           0    0    cash_cashid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cash_cashid_seq', 1, false);
          public               postgres    false    222            k           0    0    client_clientid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.client_clientid_seq', 1, false);
          public               postgres    false    225            l           0    0    contract_contractid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.contract_contractid_seq', 1, false);
          public               postgres    false    232            m           0    0    device_deviceid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.device_deviceid_seq', 1, false);
          public               postgres    false    234            n           0    0 !   methodpayment_methodpaymentid_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.methodpayment_methodpaymentid_seq', 1, false);
          public               postgres    false    228            o           0    0    rol_rolid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_rolid_seq', 4, true);
          public               postgres    false    218            p           0    0    services_serviceid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.services_serviceid_seq', 1, false);
          public               postgres    false    230            q           0    0    turn_turnid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.turn_turnid_seq', 1, false);
          public               postgres    false    240            r           0    0    user_userid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.user_userid_seq', 5, true);
          public               postgres    false    220            �           2606    41535 0   attention attention_attentionstatus_statusid_key 
   CONSTRAINT        ALTER TABLE ONLY public.attention
    ADD CONSTRAINT attention_attentionstatus_statusid_key UNIQUE (attentionstatus_statusid);
 Z   ALTER TABLE ONLY public.attention DROP CONSTRAINT attention_attentionstatus_statusid_key;
       public                 postgres    false    243            �           2606    41531    attention attention_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.attention
    ADD CONSTRAINT attention_pkey PRIMARY KEY (attentionid);
 B   ALTER TABLE ONLY public.attention DROP CONSTRAINT attention_pkey;
       public                 postgres    false    243            �           2606    41533 #   attention attention_turn_turnid_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.attention
    ADD CONSTRAINT attention_turn_turnid_key UNIQUE (turn_turnid);
 M   ALTER TABLE ONLY public.attention DROP CONSTRAINT attention_turn_turnid_key;
       public                 postgres    false    243            �           2606    41466 /   attentionstatus attentionstatus_description_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.attentionstatus
    ADD CONSTRAINT attentionstatus_description_key UNIQUE (description);
 Y   ALTER TABLE ONLY public.attentionstatus DROP CONSTRAINT attentionstatus_description_key;
       public                 postgres    false    237            �           2606    41464 $   attentionstatus attentionstatus_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.attentionstatus
    ADD CONSTRAINT attentionstatus_pkey PRIMARY KEY (statusid);
 N   ALTER TABLE ONLY public.attentionstatus DROP CONSTRAINT attentionstatus_pkey;
       public                 postgres    false    237            �           2606    41475 +   attentiontype attentiontype_description_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.attentiontype
    ADD CONSTRAINT attentiontype_description_key UNIQUE (description);
 U   ALTER TABLE ONLY public.attentiontype DROP CONSTRAINT attentiontype_description_key;
       public                 postgres    false    239            �           2606    41473     attentiontype attentiontype_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.attentiontype
    ADD CONSTRAINT attentiontype_pkey PRIMARY KEY (attentiontypeid);
 J   ALTER TABLE ONLY public.attentiontype DROP CONSTRAINT attentiontype_pkey;
       public                 postgres    false    239            y           2606    41371    cash cash_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cash
    ADD CONSTRAINT cash_pkey PRIMARY KEY (cashid);
 8   ALTER TABLE ONLY public.cash DROP CONSTRAINT cash_pkey;
       public                 postgres    false    223            }           2606    41399    client client_email_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_email_key UNIQUE (email);
 A   ALTER TABLE ONLY public.client DROP CONSTRAINT client_email_key;
       public                 postgres    false    226                       2606    41397    client client_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.client DROP CONSTRAINT client_name_key;
       public                 postgres    false    226            �           2606    41395    client client_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (clientid);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public                 postgres    false    226            �           2606    41425    contract contract_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_pkey PRIMARY KEY (contractid);
 @   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_pkey;
       public                 postgres    false    233            �           2606    41452    device device_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_pkey PRIMARY KEY (deviceid);
 <   ALTER TABLE ONLY public.device DROP CONSTRAINT device_pkey;
       public                 postgres    false    235            �           2606    41411     methodpayment methodpayment_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.methodpayment
    ADD CONSTRAINT methodpayment_pkey PRIMARY KEY (methodpaymentid);
 J   ALTER TABLE ONLY public.methodpayment DROP CONSTRAINT methodpayment_pkey;
       public                 postgres    false    229            s           2606    41345    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rolid);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public                 postgres    false    219            �           2606    41418    services services_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (serviceid);
 @   ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
       public                 postgres    false    231            �           2606    41404 "   statuscontract statuscontract_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.statuscontract
    ADD CONSTRAINT statuscontract_pkey PRIMARY KEY (statusid);
 L   ALTER TABLE ONLY public.statuscontract DROP CONSTRAINT statuscontract_pkey;
       public                 postgres    false    227            �           2606    41482    turn turn_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.turn
    ADD CONSTRAINT turn_pkey PRIMARY KEY (turnid);
 8   ALTER TABLE ONLY public.turn DROP CONSTRAINT turn_pkey;
       public                 postgres    false    241            u           2606    41352    user user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public                 postgres    false    221            w           2606    41354    user user_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_username_key;
       public                 postgres    false    221            {           2606    41376    usercash usercash_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.usercash
    ADD CONSTRAINT usercash_pkey PRIMARY KEY (userid, cashid);
 @   ALTER TABLE ONLY public.usercash DROP CONSTRAINT usercash_pkey;
       public                 postgres    false    224    224            q           2606    41338    userstatus userstatus_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.userstatus
    ADD CONSTRAINT userstatus_pkey PRIMARY KEY (statusid);
 D   ALTER TABLE ONLY public.userstatus DROP CONSTRAINT userstatus_pkey;
       public                 postgres    false    217            �           2606    41551 1   attention attention_attentionstatus_statusid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attention
    ADD CONSTRAINT attention_attentionstatus_statusid_fkey FOREIGN KEY (attentionstatus_statusid) REFERENCES public.attentionstatus(statusid);
 [   ALTER TABLE ONLY public.attention DROP CONSTRAINT attention_attentionstatus_statusid_fkey;
       public               postgres    false    237    243    4751            �           2606    41546 6   attention attention_attentiontype_attentiontypeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attention
    ADD CONSTRAINT attention_attentiontype_attentiontypeid_fkey FOREIGN KEY (attentiontype_attentiontypeid) REFERENCES public.attentiontype(attentiontypeid);
 `   ALTER TABLE ONLY public.attention DROP CONSTRAINT attention_attentiontype_attentiontypeid_fkey;
       public               postgres    false    243    4755    239            �           2606    41541 (   attention attention_client_clientid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attention
    ADD CONSTRAINT attention_client_clientid_fkey FOREIGN KEY (client_clientid) REFERENCES public.client(clientid);
 R   ALTER TABLE ONLY public.attention DROP CONSTRAINT attention_client_clientid_fkey;
       public               postgres    false    4737    226    243            �           2606    41536 $   attention attention_turn_turnid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.attention
    ADD CONSTRAINT attention_turn_turnid_fkey FOREIGN KEY (turn_turnid) REFERENCES public.turn(turnid);
 N   ALTER TABLE ONLY public.attention DROP CONSTRAINT attention_turn_turnid_fkey;
       public               postgres    false    243    4757    241            �           2606    41436 &   contract contract_client_clientid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_client_clientid_fkey FOREIGN KEY (client_clientid) REFERENCES public.client(clientid);
 P   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_client_clientid_fkey;
       public               postgres    false    226    4737    233            �           2606    41441 4   contract contract_methodpayment_methodpaymentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_methodpayment_methodpaymentid_fkey FOREIGN KEY (methodpayment_methodpaymentid) REFERENCES public.methodpayment(methodpaymentid);
 ^   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_methodpayment_methodpaymentid_fkey;
       public               postgres    false    233    229    4741            �           2606    41426 (   contract contract_service_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_service_serviceid_fkey FOREIGN KEY (service_serviceid) REFERENCES public.services(serviceid);
 R   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_service_serviceid_fkey;
       public               postgres    false    233    4743    231            �           2606    41431 .   contract contract_statuscontract_statusid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_statuscontract_statusid_fkey FOREIGN KEY (statuscontract_statusid) REFERENCES public.statuscontract(statusid);
 X   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_statuscontract_statusid_fkey;
       public               postgres    false    227    4739    233            �           2606    41453 $   device device_service_serviceid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.device
    ADD CONSTRAINT device_service_serviceid_fkey FOREIGN KEY (service_serviceid) REFERENCES public.services(serviceid);
 N   ALTER TABLE ONLY public.device DROP CONSTRAINT device_service_serviceid_fkey;
       public               postgres    false    231    4743    235            �           2606    41355    user user_rol_rolid_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_rol_rolid_fkey FOREIGN KEY (rol_rolid) REFERENCES public.rol(rolid);
 D   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_rol_rolid_fkey;
       public               postgres    false    221    219    4723            �           2606    41360 "   user user_userstatus_statudid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_userstatus_statudid_fkey FOREIGN KEY (userstatus_statudid) REFERENCES public.userstatus(statusid);
 N   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_userstatus_statudid_fkey;
       public               postgres    false    4721    217    221            �           2606    41382    usercash usercash_cashid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.usercash
    ADD CONSTRAINT usercash_cashid_fkey FOREIGN KEY (cashid) REFERENCES public.cash(cashid);
 G   ALTER TABLE ONLY public.usercash DROP CONSTRAINT usercash_cashid_fkey;
       public               postgres    false    224    4729    223            �           2606    41377    usercash usercash_userid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usercash
    ADD CONSTRAINT usercash_userid_fkey FOREIGN KEY (userid) REFERENCES public."user"(userid);
 G   ALTER TABLE ONLY public.usercash DROP CONSTRAINT usercash_userid_fkey;
       public               postgres    false    221    224    4725            T      x������ � �      N      x������ � �      P      x������ � �      @      x������ � �      C      x������ � �      J      x������ � �      L      x������ � �      F      x������ � �      <   :   x�3�LL����,.)JL�/J-�2�LO-.3�9��R��L8�s2S�J��1z\\\ ��      H      x������ � �      D      x������ � �      R      x������ � �      >   3   x�3�L�M�I��KL��,H,..�/J142�4�?rt�s����� ]��      A      x������ � �      :   #   x�st�s�-.M,��WHL.�,������ x�     