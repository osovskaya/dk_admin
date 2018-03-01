--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.11
-- Dumped by pg_dump version 9.5.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO levko;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO levko;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO levko;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO levko;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO levko;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO levko;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO levko;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO levko;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO levko;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO levko;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO levko;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO levko;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: backoffice_contacts; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE backoffice_contacts (
    id integer NOT NULL,
    full_name character varying(255) NOT NULL,
    short_name character varying(255) NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    facebook_link character varying(255) NOT NULL,
    vkontakte_link character varying(255) NOT NULL,
    date_add timestamp with time zone NOT NULL,
    date_upd timestamp with time zone NOT NULL,
    history text NOT NULL
);


ALTER TABLE backoffice_contacts OWNER TO levko;

--
-- Name: backoffice_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE backoffice_contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE backoffice_contacts_id_seq OWNER TO levko;

--
-- Name: backoffice_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE backoffice_contacts_id_seq OWNED BY backoffice_contacts.id;


--
-- Name: backoffice_event; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE backoffice_event (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    event_date date NOT NULL,
    date_add timestamp with time zone NOT NULL,
    date_upd timestamp with time zone NOT NULL
);


ALTER TABLE backoffice_event OWNER TO levko;

--
-- Name: backoffice_event_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE backoffice_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE backoffice_event_id_seq OWNER TO levko;

--
-- Name: backoffice_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE backoffice_event_id_seq OWNED BY backoffice_event.id;


--
-- Name: backoffice_event_photo; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE backoffice_event_photo (
    id integer NOT NULL,
    event_id integer NOT NULL,
    photo_id integer NOT NULL
);


ALTER TABLE backoffice_event_photo OWNER TO levko;

--
-- Name: backoffice_event_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE backoffice_event_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE backoffice_event_photo_id_seq OWNER TO levko;

--
-- Name: backoffice_event_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE backoffice_event_photo_id_seq OWNED BY backoffice_event_photo.id;


--
-- Name: backoffice_person; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE backoffice_person (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "position" character varying(255) NOT NULL,
    information text NOT NULL,
    avatar_id integer
);


ALTER TABLE backoffice_person OWNER TO levko;

--
-- Name: backoffice_person_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE backoffice_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE backoffice_person_id_seq OWNER TO levko;

--
-- Name: backoffice_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE backoffice_person_id_seq OWNED BY backoffice_person.id;


--
-- Name: backoffice_slider; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE backoffice_slider (
    id integer NOT NULL,
    header character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    image_id integer
);


ALTER TABLE backoffice_slider OWNER TO levko;

--
-- Name: backoffice_slider_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE backoffice_slider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE backoffice_slider_id_seq OWNER TO levko;

--
-- Name: backoffice_slider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE backoffice_slider_id_seq OWNED BY backoffice_slider.id;


--
-- Name: backoffice_video; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE backoffice_video (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    youtube_link character varying(255) NOT NULL,
    date_add timestamp with time zone NOT NULL,
    date_upd timestamp with time zone NOT NULL
);


ALTER TABLE backoffice_video OWNER TO levko;

--
-- Name: backoffice_video_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE backoffice_video_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE backoffice_video_id_seq OWNER TO levko;

--
-- Name: backoffice_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE backoffice_video_id_seq OWNED BY backoffice_video.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO levko;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO levko;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO levko;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO levko;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO levko;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO levko;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO levko;

--
-- Name: media_app_photo; Type: TABLE; Schema: public; Owner: levko
--

CREATE TABLE media_app_photo (
    id integer NOT NULL,
    filepath character varying(100) NOT NULL,
    date_add timestamp with time zone NOT NULL,
    date_upd timestamp with time zone NOT NULL
);


ALTER TABLE media_app_photo OWNER TO levko;

--
-- Name: media_app_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: levko
--

CREATE SEQUENCE media_app_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE media_app_photo_id_seq OWNER TO levko;

--
-- Name: media_app_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: levko
--

ALTER SEQUENCE media_app_photo_id_seq OWNED BY media_app_photo.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_contacts ALTER COLUMN id SET DEFAULT nextval('backoffice_contacts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_event ALTER COLUMN id SET DEFAULT nextval('backoffice_event_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_event_photo ALTER COLUMN id SET DEFAULT nextval('backoffice_event_photo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_person ALTER COLUMN id SET DEFAULT nextval('backoffice_person_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_slider ALTER COLUMN id SET DEFAULT nextval('backoffice_slider_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_video ALTER COLUMN id SET DEFAULT nextval('backoffice_video_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: levko
--

ALTER TABLE ONLY media_app_photo ALTER COLUMN id SET DEFAULT nextval('media_app_photo_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add contacts	7	add_contacts
20	Can change contacts	7	change_contacts
21	Can delete contacts	7	delete_contacts
22	Can add Event	8	add_event
23	Can change Event	8	change_event
24	Can delete Event	8	delete_event
25	Can add Photo	9	add_photo
26	Can change Photo	9	change_photo
27	Can delete Photo	9	delete_photo
28	Can add Video	10	add_video
29	Can change Video	10	change_video
30	Can delete Video	10	delete_video
31	Can add Slider	11	add_slider
32	Can change Slider	11	change_slider
33	Can delete Slider	11	delete_slider
34	Can add Person	12	add_person
35	Can change Person	12	change_person
36	Can delete Person	12	delete_person
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$QHS62Re9Lg6r$IFWWQupx0DkxMIRNNOrv58/j9iTRBEz7NbFkpWHFMH8=	2018-02-28 18:08:54.868295+02	t	admin				t	t	2018-02-25 17:31:26.239234+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: backoffice_contacts; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY backoffice_contacts (id, full_name, short_name, phone, email, city, street, facebook_link, vkontakte_link, date_add, date_upd, history) FROM stdin;
1	Комунальна установа "Бiлгород-Днiстровський Центр культури та дозвілля"	КУ "ЦКтаД"	(04849)3-37-33	mega-kultura-misto@ukr.net	м.Бiлгород-Днiстровський	вул.Жовтнева, 16	https://www.facebook.com/%D0%9A%D0%BE%D0%BC%D1%83%D0%BD%D0%B0%D0%BB%D1%8C%D0%BD%D0%B0-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%B0-%D0%91%D1%96%D0%BB%D0%B3%D0%BE%D1%80%D0%BE%D0%B4-%D0%94%D0%BD%D1%96%D1%81%D1%82%D1%80%D0%BE%D0%B2%D1%81%D1%8C%D0%BA%D0%B		2018-02-28 18:25:43.270766+02	2018-03-01 11:58:49.703791+02	ЦКиД исполнилось 70 лет\r\n\r\nС помпой отметил ЦКиД свое 70-летие, состоящее из семи десятков лет культурной деятельности, тысяч творческих побед и сотен человеческих судеб. Масса народа спешило 16 октября в Центр Культуры, перед главным входом которого маленький паж театрального искусства заманчивым голосом обещал публике множество сюрпризов. В холле здания поклонников прекрасного встречали элегантные юноши во фраках и загадочные незнакомки в масках с шампанским и фруктами, а на многочисленных стендах можно было проследить этапы становления нашего Дворца Культуры: афиши, фотографии, документы, награды…\r\n\r\nПочетных гостей, коллег, многочисленных участников самодеятельности и их родителей, преданных поклонников Мельпомены приветствовали директор ЦКиД Нина Швачка и режиссер Анатолий Красовский. В этот вечер, словно по мановению волшебной палочки, ведущие программы вернули аудиторию зала в далекие, но незабываемые годы…В 1902г. эпицентром культуры юга Бессарабии стал театр «Новый Аккерман», основанный благодаря поддержке классика украинской драматургии М.Кропивницкого. В 1944 г. в освобожденном от оккупантов Белгород-Днестровском состоялось открытие первого городского Дома культуры. В 1964 г. было возведено новое здание, украшенное ренессансною колонной, с ярким названием «Городской дворец культуры им.Т.Г.Шевченко». В 1996г. ДК был переименован в Центр Культуры и Досуга, в 2014 стал коммунальным учреждением. Менялись названия, но не менялась суть, заключенная в сосредоточии культурной жизни города.\r\n\r\nЭкскурс в прошлое был украшен инсталляцией и кинохроникой, песнями и танцами, мини-фильмами и красочными сценками, исполненные замечательными самодеятельными артистами. За 70 лет во Дворце работала студия бальных танцев, цирковая студия, хоровая капелла, симфонический оркестр, агитбригада. Названия и содержание коллективов менялись в угоду времени, но на корифеев ЦКиД веяния лет не влияли. Ансамбль украинской музыки «Веселка», ансамбль танца «Днестр», ансамбль народной песни «Родные напевы» показали себя этим вечером в необычном амплуа, вплоть до «канкана»!\r\n\r\nОтдельного внимания заслуживают: ансамбль современного танца «Модерн Данс», фольк-группа «Русичи», театр «Прометей», киностудия «Луч», детская арт-студия «Джерельце». Кроме получивших звание «народных», в ЦКиД действуют детский ансамбль танца «Днестряночка», студия эстрадной песни «Вокал Тайм», студия танца хип-хоп «2/8», театр постановочного боя «Доблесть», театральная студия «Огни рампы», студия танца «Trinite», творческая студия «Молодежь Фест».\r\n\r\nВ праздничный юбилейный концерт вошли хореографические композиции «Силуэта» и «Модерн Данс», выступление ансамбля скрипачей «Виола», вокал оперной дивы из Киева Натальи Красовской, наших «золотых голосов» - Виолетты Молодецкой и Леры Кудрявец. Отдельный блок программы был посвящен «душе дворца» - Нине Швачке – балетмейстеру и солистке «Днестра», художественному руководителю и, почти 20 лет, бессменному руководителю Центра. Слова благодарности от и.о. мэра В.Мензелинцева были подкреплены передачей от города микшерного пульта. Не оставили руководителя и коллектив без внимания представители политических сил города, многочисленные поклонники и друзья театра. А потом пошел «снег», послуживший очередным сюрпризом вечера, но никто не замерз, потому что атмосфера праздника просто зашкаливала от горячего настроения зала.
\.


--
-- Name: backoffice_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('backoffice_contacts_id_seq', 1, true);


--
-- Data for Name: backoffice_event; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY backoffice_event (id, name, type, event_date, date_add, date_upd) FROM stdin;
6	ЦКтаД виповнилось 70 років.	EVENT	2018-03-01	2018-03-01 11:19:17.152643+02	2018-03-01 11:19:17.152673+02
5	Галерея фотографiй з мюзиклу «Пiтер Пен»	EVENT	2018-03-01	2018-03-01 11:17:19.776936+02	2018-03-01 11:20:16.303757+02
7	Виставки майстра художньої кераміки Валентина Перчуна «Діалог з глиною-надихає Аккерман»	EXHIBITION	2018-03-01	2018-03-01 11:21:21.473754+02	2018-03-01 11:21:21.473783+02
8	Галерея фотографій з різних виставок	EXHIBITION	2018-03-01	2018-03-01 11:21:46.878653+02	2018-03-01 11:21:46.87868+02
\.


--
-- Name: backoffice_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('backoffice_event_id_seq', 8, true);


--
-- Data for Name: backoffice_event_photo; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY backoffice_event_photo (id, event_id, photo_id) FROM stdin;
1	5	8
2	5	9
3	5	10
4	5	11
5	6	12
6	6	13
7	6	14
8	6	15
9	5	16
10	5	17
11	5	18
12	5	19
15	7	6
16	7	7
17	8	12
18	8	13
19	8	14
20	8	15
\.


--
-- Name: backoffice_event_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('backoffice_event_photo_id_seq', 20, true);


--
-- Data for Name: backoffice_person; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY backoffice_person (id, name, "position", information, avatar_id) FROM stdin;
1	Швачка Ніна Вікторовна	Директор	Lorem ipsum dolor sit amet, consectetur adipisicing elit. A ab ad architecto beatae commodi dolores ex hic itaque, iure libero nihil praesentium quidem quod sint soluta ullam veniam vitae voluptates! Architecto autem consequuntur culpa cupiditate enim exc	26
2	Анатолiй Кросовський	Режисер	Lorem ipsum dolor sit amet, consectetur adipisicing elit. A adipisci alias aliquid architecto asperiores assumenda commodi dicta dignissimos dolor dolore doloribus error expedita explicabo facere hic impedit ipsam ipsum maiores nemo nisi nobis non nostrum	27
3	Віктор Данилов	Звукооператор	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto cum dolorem eligendi, enim eos, error et harum illum impedit in incidunt neque nisi obcaecati optio praesentium quod, repellendus saepe similique? Aperiam asperiores aspernatur ea eaque	28
4	Ігор Тимофєєв	Оператор зі світла	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto cum dolorem eligendi, enim eos, error et harum illum impedit in incidunt neque nisi obcaecati optio praesentium quod, repellendus saepe similique? Aperiam asperiores aspernatur ea eaque	29
5	Евгеній Скороход	Робітник сцени	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto cum dolorem eligendi, enim eos, error et harum illum impedit in incidunt neque nisi obcaecati optio praesentium quod, repellendus saepe similique? Aperiam asperiores aspernatur ea eaque	30
\.


--
-- Name: backoffice_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('backoffice_person_id_seq', 5, true);


--
-- Data for Name: backoffice_slider; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY backoffice_slider (id, header, description, image_id) FROM stdin;
2	Центр культури та дозвілля	Ця будiвля завжди була сердцем культури маленького мiста	22
1	Маски	Завжди маски символізували театральне мистецтво і гру акторів на сцені.	23
3	Маски	Завжди маски символізували театральне мистецтво і гру акторів на сцені.	24
4	Маски	Завжди маски символізували театральне мистецтво і гру акторів на сцені.	25
\.


--
-- Name: backoffice_slider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('backoffice_slider_id_seq', 4, true);


--
-- Data for Name: backoffice_video; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY backoffice_video (id, name, youtube_link, date_add, date_upd) FROM stdin;
1	У глибини мистецтва	<iframe width="560" height="315" src="https://www.youtube.com/embed/zR_4f71KhB8" frameborder="0" allowfullscreen></iframe>	2018-03-01 11:42:01.377384+02	2018-03-01 11:42:01.377418+02
2	«Перерваний політ» в Аккермані	<iframe width="560" height="315" src="https://www.youtube.com/embed/YAoB6f1leSc" frameborder="0" allowfullscreen></iframe>	2018-03-01 11:42:31.154242+02	2018-03-01 11:42:31.154288+02
3	Кастинг відбувся	<iframe width="560" height="315" src="https://www.youtube.com/embed/RDscNM4VKu4?rel=0" frameborder="0" allowfullscreen></iframe>	2018-03-01 11:43:30.63841+02	2018-03-01 11:43:30.638452+02
4	Виставка «Колір Оксамиту» у фортеці	<iframe width="560" height="315" src="https://www.youtube.com/embed/gudCJAAqWHg?rel=0" frameborder="0" allowfullscreen></iframe>	2018-03-01 11:43:46.34392+02	2018-03-01 11:43:46.343948+02
5	«Голос Молоді» в Аккермані	<iframe width="560" height="315" src="https://www.youtube.com/embed/NcQL6SEKyoc?rel=0" frameborder="0" allowfullscreen></iframe>	2018-03-01 11:44:13.915045+02	2018-03-01 11:44:13.915089+02
\.


--
-- Name: backoffice_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('backoffice_video_id_seq', 5, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-02-28 18:25:43.921991+02	1	КУ "ЦКтаД"	1	[{"added": {}}]	7	1
2	2018-02-28 18:27:22.510039+02	1	КУ "ЦКтаД"	2	[{"changed": {"fields": ["city"]}}]	7	1
3	2018-02-28 18:27:36.927293+02	1	КУ "ЦКтаД"	2	[]	7	1
4	2018-02-28 19:33:55.013474+02	1	Галерея фотографiй з мюзиклу «Пiтер Пен»	1	[{"added": {}}]	8	1
5	2018-02-28 19:34:24.295183+02	2	ЦКтаД виповнилось 70 років	1	[{"added": {}}]	8	1
6	2018-02-28 19:34:50.818161+02	3	Галерея фотографій з різних виставок	1	[{"added": {}}]	8	1
7	2018-02-28 19:36:09.604331+02	4	Виставки майстра художньої кераміки Валентина Перчуна «Діалог з глиною-надихає Аккерман»	1	[{"added": {}}]	8	1
8	2018-03-01 09:32:01.996274+02	4	Виставки майстра художньої кераміки Валентина Перчуна «Діалог з глиною-надихає Аккерман»	3		8	1
9	2018-03-01 09:32:02.323524+02	3	Галерея фотографій з різних виставок	3		8	1
10	2018-03-01 09:32:02.337086+02	2	ЦКтаД виповнилось 70 років	3		8	1
11	2018-03-01 09:32:02.345396+02	1	Галерея фотографiй з мюзиклу «Пiтер Пен»	3		8	1
12	2018-03-01 11:09:46.864652+02	2	1	1	[{"added": {}}]	9	1
13	2018-03-01 11:09:53.80404+02	3	2	1	[{"added": {}}]	9	1
14	2018-03-01 11:14:07.641302+02	3	exib1.jpg	3		9	1
15	2018-03-01 11:14:07.662694+02	2	exib_saf6Vmf.jpg	3		9	1
16	2018-03-01 11:14:41.621795+02	4	exib_ogYmVsl.jpg	1	[{"added": {}}]	9	1
17	2018-03-01 11:14:47.200197+02	5	exib1_fPwoeEp.jpg	1	[{"added": {}}]	9	1
18	2018-03-01 11:14:50.51925+02	6	exib2.jpg	1	[{"added": {}}]	9	1
19	2018-03-01 11:14:54.072611+02	7	exib3.jpg	1	[{"added": {}}]	9	1
20	2018-03-01 11:15:05.669563+02	8	piter-pen.jpg	1	[{"added": {}}]	9	1
21	2018-03-01 11:15:10.691167+02	9	piter-pen1.jpg	1	[{"added": {}}]	9	1
22	2018-03-01 11:15:15.598581+02	10	piter-pen2.jpg	1	[{"added": {}}]	9	1
23	2018-03-01 11:15:20.680881+02	11	piter-pen4.jpg	1	[{"added": {}}]	9	1
24	2018-03-01 11:17:19.915906+02	5	Галерея фотографiй з мюзиклу «Пiтер Пен»	1	[{"added": {}}]	8	1
25	2018-03-01 11:17:51.970386+02	5	Галерея фотографiй з мюзиклу «Пiтер Пен»	2	[]	8	1
26	2018-03-01 11:18:45.377768+02	12	img-dk.jpg	1	[{"added": {}}]	9	1
27	2018-03-01 11:18:57.744588+02	13	img-dk1.jpg	1	[{"added": {}}]	9	1
28	2018-03-01 11:19:07.672082+02	14	img-dk2.jpg	1	[{"added": {}}]	9	1
29	2018-03-01 11:19:14.367668+02	15	img-dk3.jpg	1	[{"added": {}}]	9	1
30	2018-03-01 11:19:17.163279+02	6	ЦКтаД виповнилось 70 років.	1	[{"added": {}}]	8	1
31	2018-03-01 11:19:41.23202+02	16	piter-pen5.jpg	1	[{"added": {}}]	9	1
32	2018-03-01 11:19:49.115998+02	17	piter-pen6.jpg	1	[{"added": {}}]	9	1
33	2018-03-01 11:19:55.99489+02	18	piter-pen7.jpg	1	[{"added": {}}]	9	1
34	2018-03-01 11:20:09.358021+02	19	piter-pen3.jpg	1	[{"added": {}}]	9	1
35	2018-03-01 11:20:16.31441+02	5	Галерея фотографiй з мюзиклу «Пiтер Пен»	2	[{"changed": {"fields": ["photo"]}}]	8	1
36	2018-03-01 11:21:03.58304+02	20	exib_YvlcSeV.jpg	1	[{"added": {}}]	9	1
37	2018-03-01 11:21:10.603662+02	21	exib1_MqW0fhf.jpg	1	[{"added": {}}]	9	1
38	2018-03-01 11:21:21.485979+02	7	Виставки майстра художньої кераміки Валентина Перчуна «Діалог з глиною-надихає Аккерман»	1	[{"added": {}}]	8	1
39	2018-03-01 11:21:46.889858+02	8	Галерея фотографій з різних виставок	1	[{"added": {}}]	8	1
40	2018-03-01 11:22:03.260025+02	21	exib1_MqW0fhf.jpg	3		9	1
41	2018-03-01 11:22:03.278878+02	20	exib_YvlcSeV.jpg	3		9	1
42	2018-03-01 11:42:01.382882+02	1	У глибини мистецтва	1	[{"added": {}}]	10	1
43	2018-03-01 11:42:31.162321+02	2	«Перерваний політ» в Аккермані	1	[{"added": {}}]	10	1
44	2018-03-01 11:43:30.64144+02	3	Кастинг відбувся	1	[{"added": {}}]	10	1
45	2018-03-01 11:43:46.345436+02	4	Виставка «Колір Оксамиту» у фортеці	1	[{"added": {}}]	10	1
46	2018-03-01 11:44:13.916917+02	5	«Голос Молоді» в Аккермані	1	[{"added": {}}]	10	1
47	2018-03-01 11:58:41.401442+02	1	КУ "ЦКтаД"	2	[{"changed": {"fields": ["history"]}}]	7	1
48	2018-03-01 11:58:49.707616+02	1	КУ "ЦКтаД"	2	[]	7	1
49	2018-03-01 12:00:16.005968+02	22	masky.jpg	1	[{"added": {}}]	9	1
50	2018-03-01 12:00:20.909553+02	1	Маски	1	[{"added": {}}]	11	1
51	2018-03-01 12:01:09.228739+02	2	Центр культури та дозвілля	1	[{"added": {}}]	11	1
52	2018-03-01 12:01:25.848863+02	23	masky1.jpg	1	[{"added": {}}]	9	1
53	2018-03-01 12:01:28.300054+02	1	Маски	2	[{"changed": {"fields": ["image"]}}]	11	1
54	2018-03-01 12:01:43.511665+02	1	Маски	2	[]	11	1
55	2018-03-01 12:02:07.231951+02	24	masky2.jpg	1	[{"added": {}}]	9	1
56	2018-03-01 12:02:08.463718+02	3	Маски	1	[{"added": {}}]	11	1
57	2018-03-01 12:02:25.701309+02	25	masky3.1.jpg	1	[{"added": {}}]	9	1
58	2018-03-01 12:02:26.646495+02	4	Маски	1	[{"added": {}}]	11	1
59	2018-03-01 12:13:45.123898+02	26	dk.jpg	1	[{"added": {}}]	9	1
60	2018-03-01 12:13:47.675488+02	1	Швачка Ніна Вікторовна	1	[{"added": {}}]	12	1
61	2018-03-01 12:14:58.565162+02	27	personal1.jpg	1	[{"added": {}}]	9	1
62	2018-03-01 12:15:00.755554+02	2	Анатолiй Кросовський	1	[{"added": {}}]	12	1
63	2018-03-01 12:15:25.498149+02	28	personal2.jpg	1	[{"added": {}}]	9	1
64	2018-03-01 12:15:26.376629+02	3	Віктор Данилов	1	[{"added": {}}]	12	1
65	2018-03-01 12:15:51.707586+02	29	personal3.jpg	1	[{"added": {}}]	9	1
66	2018-03-01 12:15:52.77438+02	4	Ігор Тимофєєв	1	[{"added": {}}]	12	1
67	2018-03-01 12:16:21.302434+02	30	personal4.jpg	1	[{"added": {}}]	9	1
68	2018-03-01 12:16:22.666778+02	5	Евгеній Скороход	1	[{"added": {}}]	12	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 68, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	backoffice	contacts
8	backoffice	event
9	media_app	photo
10	backoffice	video
11	backoffice	slider
12	backoffice	person
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-02-25 17:23:16.886337+02
2	auth	0001_initial	2018-02-25 17:23:18.627427+02
3	admin	0001_initial	2018-02-25 17:23:18.935297+02
4	admin	0002_logentry_remove_auto_add	2018-02-25 17:23:18.963862+02
5	contenttypes	0002_remove_content_type_name	2018-02-25 17:23:19.068387+02
6	auth	0002_alter_permission_name_max_length	2018-02-25 17:23:19.091313+02
7	auth	0003_alter_user_email_max_length	2018-02-25 17:23:19.125261+02
8	auth	0004_alter_user_username_opts	2018-02-25 17:23:19.152952+02
9	auth	0005_alter_user_last_login_null	2018-02-25 17:23:19.175818+02
10	auth	0006_require_contenttypes_0002	2018-02-25 17:23:19.185831+02
11	auth	0007_alter_validators_add_error_messages	2018-02-25 17:23:19.208875+02
12	auth	0008_alter_user_username_max_length	2018-02-25 17:23:19.409275+02
13	auth	0009_alter_user_last_name_max_length	2018-02-25 17:23:19.459503+02
14	sessions	0001_initial	2018-02-25 17:23:19.643932+02
15	backoffice	0001_initial	2018-02-25 17:27:21.08094+02
16	backoffice	0002_auto_20180228_1626	2018-02-28 18:27:17.61137+02
17	backoffice	0003_event	2018-02-28 19:29:03.860276+02
18	media_app	0001_initial	2018-03-01 09:34:11.239521+02
19	backoffice	0004_auto_20180301_0854	2018-03-01 10:55:56.961633+02
20	media_app	0002_photo_name	2018-03-01 11:09:24.689138+02
21	media_app	0003_remove_photo_name	2018-03-01 11:14:22.557861+02
22	backoffice	0005_auto_20180301_0939	2018-03-01 11:39:48.021596+02
23	backoffice	0006_auto_20180301_0958	2018-03-01 11:58:09.118831+02
24	backoffice	0007_person	2018-03-01 12:12:24.882115+02
25	backoffice	0008_auto_20180301_1019	2018-03-01 12:19:40.117035+02
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('django_migrations_id_seq', 25, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
oyjgpzoyk0fzw1qonfm2tcce235j88su	NWJkMjQyNDAwN2E2YmYxZDIxZTBjNTBlNzhhOWJjMzE0NDgyNWI1ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTgzODcyNDBjMDgxMDBhZmU5NWM5MjgxMGE1OTAyOWRmMTlkNWZlIn0=	2018-03-11 17:31:36.640995+02
p5x0sq58149tgvh48xbzllie6s4bqthz	NWJkMjQyNDAwN2E2YmYxZDIxZTBjNTBlNzhhOWJjMzE0NDgyNWI1ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTgzODcyNDBjMDgxMDBhZmU5NWM5MjgxMGE1OTAyOWRmMTlkNWZlIn0=	2018-03-14 16:32:45.468333+02
mqs1qdt3d20eiad82c1bez5f0wqfu5t8	NWJkMjQyNDAwN2E2YmYxZDIxZTBjNTBlNzhhOWJjMzE0NDgyNWI1ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTgzODcyNDBjMDgxMDBhZmU5NWM5MjgxMGE1OTAyOWRmMTlkNWZlIn0=	2018-03-14 18:08:54.906628+02
\.


--
-- Data for Name: media_app_photo; Type: TABLE DATA; Schema: public; Owner: levko
--

COPY media_app_photo (id, filepath, date_add, date_upd) FROM stdin;
4	photos/2018/03/exib_ogYmVsl.jpg	2018-03-01 11:14:41.619333+02	2018-03-01 11:14:41.619372+02
5	photos/2018/03/exib1_fPwoeEp.jpg	2018-03-01 11:14:47.198455+02	2018-03-01 11:14:47.198492+02
6	photos/2018/03/exib2.jpg	2018-03-01 11:14:50.51745+02	2018-03-01 11:14:50.517491+02
7	photos/2018/03/exib3.jpg	2018-03-01 11:14:54.070531+02	2018-03-01 11:14:54.070566+02
8	photos/2018/03/piter-pen.jpg	2018-03-01 11:15:05.667558+02	2018-03-01 11:15:05.667605+02
9	photos/2018/03/piter-pen1.jpg	2018-03-01 11:15:10.688759+02	2018-03-01 11:15:10.688796+02
10	photos/2018/03/piter-pen2.jpg	2018-03-01 11:15:15.594977+02	2018-03-01 11:15:15.595055+02
11	photos/2018/03/piter-pen4.jpg	2018-03-01 11:15:20.679123+02	2018-03-01 11:15:20.679169+02
12	photos/2018/03/img-dk.jpg	2018-03-01 11:18:45.344525+02	2018-03-01 11:18:45.344622+02
13	photos/2018/03/img-dk1.jpg	2018-03-01 11:18:57.742745+02	2018-03-01 11:18:57.742789+02
14	photos/2018/03/img-dk2.jpg	2018-03-01 11:19:07.669939+02	2018-03-01 11:19:07.670023+02
15	photos/2018/03/img-dk3.jpg	2018-03-01 11:19:14.365587+02	2018-03-01 11:19:14.365631+02
16	photos/2018/03/piter-pen5.jpg	2018-03-01 11:19:41.229947+02	2018-03-01 11:19:41.229987+02
17	photos/2018/03/piter-pen6.jpg	2018-03-01 11:19:49.113628+02	2018-03-01 11:19:49.113721+02
18	photos/2018/03/piter-pen7.jpg	2018-03-01 11:19:55.993131+02	2018-03-01 11:19:55.993169+02
19	photos/2018/03/piter-pen3.jpg	2018-03-01 11:20:09.35578+02	2018-03-01 11:20:09.355833+02
22	photos/2018/03/masky.jpg	2018-03-01 12:00:15.94454+02	2018-03-01 12:00:15.94459+02
23	photos/2018/03/masky1.jpg	2018-03-01 12:01:25.847326+02	2018-03-01 12:01:25.847358+02
24	photos/2018/03/masky2.jpg	2018-03-01 12:02:07.229358+02	2018-03-01 12:02:07.22939+02
25	photos/2018/03/masky3.1.jpg	2018-03-01 12:02:25.699542+02	2018-03-01 12:02:25.69958+02
26	photos/2018/03/dk.jpg	2018-03-01 12:13:45.089881+02	2018-03-01 12:13:45.08998+02
27	photos/2018/03/personal1.jpg	2018-03-01 12:14:58.563295+02	2018-03-01 12:14:58.563334+02
28	photos/2018/03/personal2.jpg	2018-03-01 12:15:25.495722+02	2018-03-01 12:15:25.495761+02
29	photos/2018/03/personal3.jpg	2018-03-01 12:15:51.705674+02	2018-03-01 12:15:51.705751+02
30	photos/2018/03/personal4.jpg	2018-03-01 12:16:21.300343+02	2018-03-01 12:16:21.300377+02
\.


--
-- Name: media_app_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: levko
--

SELECT pg_catalog.setval('media_app_photo_id_seq', 30, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: backoffice_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_contacts
    ADD CONSTRAINT backoffice_contacts_pkey PRIMARY KEY (id);


--
-- Name: backoffice_event_photo_event_id_photo_id_8de8a2b7_uniq; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_event_photo
    ADD CONSTRAINT backoffice_event_photo_event_id_photo_id_8de8a2b7_uniq UNIQUE (event_id, photo_id);


--
-- Name: backoffice_event_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_event_photo
    ADD CONSTRAINT backoffice_event_photo_pkey PRIMARY KEY (id);


--
-- Name: backoffice_event_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_event
    ADD CONSTRAINT backoffice_event_pkey PRIMARY KEY (id);


--
-- Name: backoffice_person_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_person
    ADD CONSTRAINT backoffice_person_pkey PRIMARY KEY (id);


--
-- Name: backoffice_slider_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_slider
    ADD CONSTRAINT backoffice_slider_pkey PRIMARY KEY (id);


--
-- Name: backoffice_video_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_video
    ADD CONSTRAINT backoffice_video_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: media_app_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY media_app_photo
    ADD CONSTRAINT media_app_photo_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: backoffice_event_photo_event_id_f656cfd1; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX backoffice_event_photo_event_id_f656cfd1 ON backoffice_event_photo USING btree (event_id);


--
-- Name: backoffice_event_photo_photo_id_e07f7b97; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX backoffice_event_photo_photo_id_e07f7b97 ON backoffice_event_photo USING btree (photo_id);


--
-- Name: backoffice_person_avatar_id_6c174103; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX backoffice_person_avatar_id_6c174103 ON backoffice_person USING btree (avatar_id);


--
-- Name: backoffice_slider_image_id_4c6ed807; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX backoffice_slider_image_id_4c6ed807 ON backoffice_slider USING btree (image_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: levko
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backoffice_event_photo_event_id_f656cfd1_fk_backoffice_event_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_event_photo
    ADD CONSTRAINT backoffice_event_photo_event_id_f656cfd1_fk_backoffice_event_id FOREIGN KEY (event_id) REFERENCES backoffice_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backoffice_event_photo_photo_id_e07f7b97_fk_media_app_photo_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_event_photo
    ADD CONSTRAINT backoffice_event_photo_photo_id_e07f7b97_fk_media_app_photo_id FOREIGN KEY (photo_id) REFERENCES media_app_photo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backoffice_person_avatar_id_6c174103_fk_media_app_photo_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_person
    ADD CONSTRAINT backoffice_person_avatar_id_6c174103_fk_media_app_photo_id FOREIGN KEY (avatar_id) REFERENCES media_app_photo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: backoffice_slider_image_id_4c6ed807_fk_media_app_photo_id; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY backoffice_slider
    ADD CONSTRAINT backoffice_slider_image_id_4c6ed807_fk_media_app_photo_id FOREIGN KEY (image_id) REFERENCES media_app_photo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: levko
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

