--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: catalog_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE catalog_category (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    title character varying(30) NOT NULL
);


ALTER TABLE catalog_category OWNER TO postgres;

--
-- Name: catalog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE catalog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_category_id_seq OWNER TO postgres;

--
-- Name: catalog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE catalog_category_id_seq OWNED BY catalog_category.id;


--
-- Name: catalog_docs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE catalog_docs (
    id integer NOT NULL,
    name character varying(125) NOT NULL,
    link character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    subcategory_id integer NOT NULL,
    kind character varying(3) NOT NULL
);


ALTER TABLE catalog_docs OWNER TO postgres;

--
-- Name: catalog_docs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE catalog_docs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_docs_id_seq OWNER TO postgres;

--
-- Name: catalog_docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE catalog_docs_id_seq OWNED BY catalog_docs.id;


--
-- Name: catalog_subcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE catalog_subcategory (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE catalog_subcategory OWNER TO postgres;

--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE catalog_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_subcategory_id_seq OWNER TO postgres;

--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE catalog_subcategory_id_seq OWNED BY catalog_subcategory.id;


--
-- Name: catalog_videos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE catalog_videos (
    id integer NOT NULL,
    name character varying(125) NOT NULL,
    link character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    subcategory_id integer NOT NULL,
    image character varying(200) NOT NULL
);


ALTER TABLE catalog_videos OWNER TO postgres;

--
-- Name: catalog_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE catalog_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_videos_id_seq OWNER TO postgres;

--
-- Name: catalog_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE catalog_videos_id_seq OWNED BY catalog_videos.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: catalog_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_category ALTER COLUMN id SET DEFAULT nextval('catalog_category_id_seq'::regclass);


--
-- Name: catalog_docs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_docs ALTER COLUMN id SET DEFAULT nextval('catalog_docs_id_seq'::regclass);


--
-- Name: catalog_subcategory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_subcategory ALTER COLUMN id SET DEFAULT nextval('catalog_subcategory_id_seq'::regclass);


--
-- Name: catalog_videos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_videos ALTER COLUMN id SET DEFAULT nextval('catalog_videos_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
19	Can add Doc	7	add_docs
20	Can change Doc	7	change_docs
21	Can delete Doc	7	delete_docs
22	Can add Categoría	8	add_category
23	Can change Categoría	8	change_category
24	Can delete Categoría	8	delete_category
25	Can add Video	9	add_videos
26	Can change Video	9	change_videos
27	Can delete Video	9	delete_videos
28	Can add SubCategoría	10	add_subcategory
29	Can change SubCategoría	10	change_subcategory
30	Can delete SubCategoría	10	delete_subcategory
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 30, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$PSA17iLc1WUi$QcYumApj8ku1M0GCz3np0CV5+P6xCn5uXwydSP+Sh8U=	2017-10-17 04:07:24.621817-05	t	Rich			drdr_2@hotmail.com	t	t	2017-08-30 03:21:12.409355-05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: catalog_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY catalog_category (id, name, title) FROM stdin;
1	Bloque_0	Introduccion
2	Bloque_1	Tarot
3	Bloque_2	Metagenealogia
4	Bloque_3	Psicochamanismo
\.


--
-- Name: catalog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('catalog_category_id_seq', 4, true);


--
-- Data for Name: catalog_docs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY catalog_docs (id, name, link, created_at, category_id, subcategory_id, kind) FROM stdin;
3	I Le Bateleur BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/I+Le+Bateleur+BN.jpg	2017-09-18 10:46:52.064951-05	2	1	IMG
4	II La Papesse BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/II+La+Papesse+BN+2.jpg	2017-09-18 10:47:06.717948-05	2	1	IMG
5	III LImperatrice BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/III+LImperatrice+BN+2.jpg	2017-09-18 10:47:19.380446-05	2	1	IMG
6	IIII LEmpereur BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/IIII+LEmpereur+BN.jpg	2017-09-18 10:47:28.567944-05	2	1	IMG
7	Lamoureux BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Lamoureux+BN.jpg	2017-09-18 10:48:03.492439-05	2	1	IMG
8	Le Mat BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Le+Mat+BN.jpg	2017-09-18 10:48:14.331937-05	2	1	IMG
9	V Le Pape BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/V+Le+Pape+BN.jpg	2017-09-18 10:48:39.263432-05	2	1	IMG
10	VII Le Chariot BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VII+Le+Chariot+BN.jpg	2017-09-18 10:48:49.11293-05	2	1	IMG
11	VIII La Justice BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VIII+La+Justice+BN.jpg	2017-09-18 10:49:00.187429-05	2	1	IMG
12	VIIII LHermite BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VIIII+LHermite+BN.jpg	2017-09-18 10:49:14.60493-05	2	1	IMG
13	X La Roue de Fortune BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/X+La+Roue+de+Fortune+BN.jpg	2017-09-18 10:49:24.475425-05	2	1	IMG
14	XI La Force BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XI+La+Force+BN.jpg	2017-09-18 10:49:54.606919-05	2	1	IMG
15	XII Le Pendu BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XII+Le+Pendu+BN.jpg	2017-09-18 10:50:04.287918-05	2	1	IMG
16	XIII Arcano sin nombre BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XIII+Arcano+sin+nombre+BN.jpg	2017-09-18 10:50:13.255916-05	2	1	IMG
17	XIIII Temperance BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XIIII+Temperance+BN+2.jpg	2017-09-18 10:50:24.654915-05	2	1	IMG
18	XV Le Diable BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XV+Le+Diable+BN.jpg	2017-09-18 10:50:36.563411-05	2	1	IMG
19	XVI La Maison Dieu BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVI+La+Maison+Dieu+BN.jpg	2017-09-18 10:50:47.428409-05	2	1	IMG
20	XVII LEtoile BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVII+LEtoile+BN.jpg	2017-09-18 10:50:57.531908-05	2	1	IMG
21	XVIII La Lune BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVIII+La+Lune+BN.jpg	2017-09-18 10:51:11.171406-05	2	1	IMG
22	XVIIII Le Soleil BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVIIII+Le+Soleil+BN.jpg	2017-09-18 10:51:21.443905-05	2	1	IMG
23	XX Le Iugement BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XX+Le+Iugement+BN.jpg	2017-09-18 10:51:29.794402-05	2	1	IMG
24	XXI Le Monde BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XXI+Le+Monde+BN.jpg	2017-09-18 10:51:37.266901-05	2	1	IMG
25	Correspondencias Palos del Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Correspondencias+Palos+del+Tarot.pdf	2017-09-20 00:13:20.218113-05	2	1	PDF
26	Jodorowsky Alejandro - La Via Del Tarot-1	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Jodorowsky+Alejandro+-+La+Via+Del+Tarot-1.pdf	2017-09-20 01:35:04.349649-05	2	1	PDF
27	Jodorowsky Alejandro - La Via Del Tarot-2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Jodorowsky+Alejandro+-+La+Via+Del+Tarot-2.pdf	2017-09-20 01:35:13.48365-05	2	1	PDF
28	La Numerología en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/La+Numerolog%C3%ADa+en+el+Tarot.pdf	2017-09-20 01:35:22.712151-05	2	1	PDF
29	Referencia Rápida- Arcano 0 - Le Mat	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+0+-+Le+Mat.pdf	2017-09-20 01:35:39.727153-05	2	1	PDF
30	Los Colores en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Los+Colores+en+el+Tarot.pdf1	2017-09-20 01:35:48.769654-05	2	1	PDF
31	Referencia Rápida- Arcano I - Le Bateleur	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+I+-+Le+Bateleur.pdf	2017-09-20 01:36:03.285657-05	2	1	PDF
32	Referencia Rápida- Arcano II - La Papesse - La Papisa	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+II+-+La+Papesse+-+La+Papisa.pdf	2017-09-20 01:36:34.908659-05	2	1	PDF
33	Referencia Rápida- Arcano III - Limperatrice - La Emperatriz	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+III+-+Limperatrice+-+La+Emperatriz.pdf	2017-09-20 01:36:54.259661-05	2	1	PDF
34	Referencia Rápida- Arcano IIII - LEmpereur - El Emperador	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+IIII+-+LEmpereur+-+El+Emperador.pdf	2017-09-20 01:37:09.000663-05	2	1	PDF
35	Referencia Rápida- Arcano V - Le Pape - El Papa	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+V+-+Le+Pape+-+El+Papa.pdf	2017-09-20 01:37:19.413165-05	2	1	PDF
36	Referencia Rápida- Arcano VI - LAmoureux - El Enamorado	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VI+-+LAmoureux+-+El+Enamorado.pdf	2017-09-20 01:37:35.440166-05	2	1	PDF
37	Referencia Rápida- Arcano VII - Le Chariot - El Carro	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VII+-+Le+Chariot+-+El+Carro.pdf	2017-09-20 01:37:48.869167-05	2	1	PDF
38	Referencia Rápida- Arcano VIII - La Justice- La Justicia	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VIII+-+La+Justice-+La+Justicia.pdf	2017-09-20 01:38:03.725668-05	2	1	PDF
39	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VIIII+-+LHermite+-+El+Ermita%C3%B1o.pdf	2017-09-20 01:38:40.840173-05	2	1	PDF
40	Referencia Rápida- Arcano X	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+X.pdf	2017-09-20 01:39:03.077676-05	2	1	PDF
41	Referencia Rápida- Arcano XI - La Force - La Fuerza	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XI+-+La+Force+-+La+Fuerza.pdf	2017-09-20 01:39:12.381677-05	2	1	PDF
42	Referencia Rápida- Arcano XII - Le Pendu - El Colgado	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XII+-+Le+Pendu+-+El+Colgado.pdf	2017-09-20 01:39:22.582178-05	2	1	PDF
43	Referencia Rápida- Arcano XIII - Arcano sin Nombre	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIII+-+Arcano+sin+Nombre.pdf	2017-09-20 01:39:39.086179-05	2	1	PDF
44	Referencia Rápida- Arcano XIIII - Le Diable - El Diablo	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIIII+-+Le+Diable+-+El+Diablo.pdf	2017-09-20 01:39:51.289181-05	2	1	PDF
45	Referencia Rápida- Arcano XIIII - Temperance - La Templanza	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIIII+-+Temperance+-+La+Templanza.pdf	2017-09-20 01:40:13.655683-05	2	1	PDF
46	Referencia Rápida- Arcano XVI - La Maison Dieu - La Torre	Referencia+R%C3%A1pida-+Arcano+XVI+-+La+Maison+Dieu+-+La+Torre.pdf \t\t\thttp://ddstbjmdfz6e2.cloudfront.net/law/02/docs/	2017-09-20 01:40:34.773186-05	2	1	PDF
47	Referencia Rápida- Arcano XVII - L Etoille - La Estrella	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVII+-+L+Etoille+-+La+Estrella.pdf	2017-09-20 01:40:45.434687-05	2	1	PDF
48	Referencia Rápida- Arcano XVIII - La Lune - La Luna	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVIII+-+La+Lune+-+La+Luna.pdf	2017-09-20 01:40:56.128187-05	2	1	PDF
49	Referencia Rápida- Arcano XVIIII - Le Soleil - El Sol	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVIIII+-+Le+Soleil+-+El+Sol.pdf	2017-09-20 01:41:17.69819-05	2	1	PDF
50	Referencia Rápida- Arcano XX - Le Iugement - El Juicio	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XX+-+Le+Iugement+-+El+Juicio.pdf	2017-09-20 01:41:39.654193-05	2	1	PDF
51	Referencia Rápida- Arcano XXI - Le Monde - El Mundo	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XXI+-+Le+Monde+-+El+Mundo.pdf	2017-09-20 01:41:50.144694-05	2	1	PDF
52	Tarea- Ejercicios de Tarot – Semana 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+1.docx	2017-09-20 01:43:43.744706-05	2	1	WRD
53	Tarea- Ejercicios de Tarot – Semana 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+2.docx	2017-09-20 01:43:53.370208-05	2	1	WRD
54	Tarea- Ejercicios de Tarot – Semana 3	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+3.docx	2017-09-20 01:44:05.323709-05	2	1	WRD
55	Tarea- Ejercicios de Tarot – Semana 4	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+4.docx	2017-09-20 01:44:14.40471-05	2	1	WRD
56	Tarea- Ejercicios de Tarot – Semana 5	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+5.docx	2017-09-20 01:44:23.493711-05	2	1	WRD
57	El Centro Emocional y Sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Emocional+y+Sus+Nudos.pdf	2017-09-20 01:44:46.731713-05	3	1	PDF
58	El Centro Intelectual y sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Intelectual+y+sus+Nudos.pdf	2017-09-20 01:44:57.069214-05	3	1	PDF
59	El Centro Sexual-Creativo y sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Sexual-Creativo+y+sus+Nudos.pdf	2017-09-20 01:45:06.330216-05	3	1	PDF
60	Referencia Rápida - Tipo de Repetición Genealógica	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+R%C3%A1pida+-+Tipo+de+Repetici%C3%B3n+Geneal%C3%B3gica.pdf	2017-09-20 01:45:28.037217-05	3	1	PDF
61	Referencia Rapida- La Finalidad en el Arbol Genealógico- Trampa y Tesoro	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+Rapida-+La+Finalidad+en+el+Arbol+Geneal%C3%B3gico-+Trampa+y+Tesoro.pdf	2017-09-20 01:45:49.87772-05	3	1	PDF
62	Las Repeticiones en mis Centros	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Las+Repeticiones+en+mis+Centros.docx	2017-09-20 01:46:11.088223-05	3	1	WRD
63	Referencia Rápida- Niveles de Conciencia	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+R%C3%A1pida-+Niveles+de+Conciencia.pdf	2017-09-20 01:46:35.849225-05	3	1	PDF
64	Símbolos para Analizar el Árbol Genealógico	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/S%C3%ADmbolos+para+Analizar+el+%C3%81rbol+Geneal%C3%B3gico.pdf	2017-09-20 01:46:46.868726-05	3	1	PDF
65	Tu Arbol Genealógico	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Tu+Arbol+Geneal%C3%B3gico.docx	2017-09-20 01:47:00.567729-05	2	1	PDF
66	Alejandro-Jodorowsky-Manual-Psicomagia Consejos pa_	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/Alejandro-Jodorowsky-Manual-Psicomagia+Consejos+pa_.pdf	2017-09-20 01:47:26.668731-05	4	1	PDF
67	El Héroe de las Mil Caras	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/El+H%C3%A9roe+de+las+Mil+Caras.pdf	2017-09-20 01:47:36.028231-05	4	1	PDF
68	Jodorowski_Alejandro-_Psicomagia	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/Jodorowski_Alejandro-_Psicomagia.pdf	2017-09-20 01:47:45.067733-05	4	1	PDF
\.


--
-- Name: catalog_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('catalog_docs_id_seq', 68, true);


--
-- Data for Name: catalog_subcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY catalog_subcategory (id, name) FROM stdin;
1	Test
\.


--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('catalog_subcategory_id_seq', 1, true);


--
-- Data for Name: catalog_videos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY catalog_videos (id, name, link, created_at, category_id, subcategory_id, image) FROM stdin;
147	La Barca en la que navegaremos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Barca+en+la+que+Navegaremos.mp4	2017-10-17 05:47:37.856773-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg
150	La Configuración del Yo Testigo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Configuracio%CC%81n+del+Yo+Testigo.mp4	2017-10-17 05:48:10.542266-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Configuraci%C3%B3n+del+Yo+Testigo.jpg
153	Mensaje a Estudiantes 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mensaje+a+Estudiantes+1.mp4	2017-10-17 05:49:44.49875-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mensaje+a+Estudiantes+1.jpg
156	MetaMundo La Escuela	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Metamundo+La+Escuela.mp4	2017-10-17 05:50:33.151742-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Metamundo+La+Escuela.jpg
159	Mi Historia personal con el Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mi+Historia+personal+con+el+Tarot+2.mp4	2017-10-17 05:51:15.871234-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mi+Historia+personal+con+el+Tarot+2.jpg
162	Conclusiones sobre los Estados de Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conclusiones+sobre+los+Estados+de+Conciencia.mp4	2017-10-17 06:02:59.676112-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conclusiones+sobre+los+Estados+de+Conciencia.jpg
165	Conflicto de Fracaso 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+3.mp4	2017-10-17 06:03:25.010107-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+3.jpg
168	Diferentes Tipos de Ego 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Diferentes+Tipos+de+Ego+2.mp4	2017-10-17 06:03:51.307607-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Diferentes+Tipos+de+Ego+2.jpg
171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+3.mp4	2017-10-17 06:04:13.695599-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+3.jpg
174	El Destino que el Yo Genealógico ha establecido en ti.	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Destino+que+el+Yo+Genealo%CC%81gico+ha+establecido+en+ti.mp4	2017-10-17 06:05:09.571589-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Destino+que+el+Yo+Geneal%C3%B3gico+ha+establecido+en+ti.jpg
177	El Impacto de tu nombre 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Impacto+De+Tu+Nombre+3.mp4	2017-10-17 06:05:27.957087-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Impacto+De+Tu+Nombre+3.jpg
180	Encuentro, Concepción, Gestación y Nacimiento 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+1.mp4	2017-10-17 06:05:41.795584-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Encuentro%2C+Concepci%C3%B3n%2C+Gestaci%C3%B3n+y+Nacimiento+1.jpg
183	Estructura de la Metagenealogia 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Estructura+de+la+Metagenealogi%CC%81a+1.mp4	2017-10-17 06:06:10.884079-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Estructura+de+la+Metagenealog%C3%ADa+1.jpg
186	Formas de Repetición en el Árbol 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Formas+de+Repeticion+en+el+Arbol+1.mp4	2017-10-17 06:06:31.495075-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Formas+de+Repeticion+en+el+Arbol+1.jpg
189	Introducción a los Núcleos y Nudos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Introduccio%CC%81n+a+los+Nu%CC%81cleos+y+Nudos.mp4	2017-10-17 06:06:59.37157-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Introducci%C3%B3n+a+los+N%C3%BAcleos+y+Nudos.jpg
192	Nivel de Conciencia Adulto Aprovechador	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Adulto+Aprovechador.mp4	2017-10-17 06:07:23.120566-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Adulto+Aprovechador.jpg
195	Nivel de Conciencia Divino	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Divino.mp4	2017-10-17 06:07:53.902561-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Divino.jpg
198	Nivel de Conciencia Solar	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Solar.mp4	2017-10-17 06:08:19.417056-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Solar.jpg
201	Núcleo y Nudo Incestuoso	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Incestuoso.mp4	2017-10-17 06:08:41.890053-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Incestuoso.jpg
204	Núcleo y Nudo Social	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Social.mp4	2017-10-17 06:09:03.174548-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Social.jpg
207	Actitud y Ética del Tarologo 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+1.mp4	2017-10-17 06:09:46.469541-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg
210	Actitud y Ética del Tarologo 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+4.mp4	2017-10-17 06:10:30.444534-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+4.jpg
213	Actitud y Ética del Tarologo 7	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+7.mp4	2017-10-17 06:11:00.022529-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+7.jpg
216	Antecedentes	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Antecedentes.mp4	2017-10-17 06:11:41.833521-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Antecedentes.jpg
219	Consideraciones sobre como leer el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Consideraciones+sobre+co%CC%81mo+leer+el+Tarot.mp4	2017-10-17 06:12:21.507514-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Consideraciones+sobre+c%C3%B3mo+leer+el+Tarot.jpg
222	Diferentes Visiones en las Lecturas de Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Diferentes+Visiones+en+las+Lecturas+de+Tarot.mp4	2017-10-17 06:12:50.671009-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Diferentes+Visiones+en+las+Lecturas+de+Tarot.jpg
225	Lectura Causas de la Situación Presente	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Causas+de+la+Situacio%CC%81n+Presente.mp4	2017-10-17 06:13:55.796998-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Causas+de+la+Situacio%CC%81n+Presente.mp4
148	La Condición Divina	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Condicio%CC%81n+Divina+1.mp4	2017-10-17 05:47:47.25677-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Condici%C3%B3n+Divina+1.jpg
151	La Dimensión Transpersonal	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Dimensio%CC%81n+Transpersonal.mp4	2017-10-17 05:48:25.165264-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Dimensi%C3%B3n+Transpersonal.jpg
154	Mensaje a Estudiantes 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mensaje+a+Estudiantes+2.mp4	2017-10-17 05:50:09.533746-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mensaje+a+Estudiantes+2.jpg
157	Metamundo y la Expansión de la Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Metamundo+y+la+Expansio%CC%81n+de+la+Conciencia.mp4	2017-10-17 05:50:46.315239-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Metamundo+y+la+Expansi%C3%B3n+de+la+Conciencia.jpg
160	Mi Historia personal con el Tarot 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mi+Historia+personal+con+el+Tarot+3.mp4	2017-10-17 05:51:36.761731-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mi+Historia+personal+con+el+Tarot+3.jpg
163	Conflicto de Fracaso 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+1.mp4	2017-10-17 06:03:14.890109-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+1.jpg
166	Conflicto de Fracaso 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+4.mp4	2017-10-17 06:03:31.243106-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+4.jpg
169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+1.mp4	2017-10-17 06:03:58.698602-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+1.jpg
172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+4.mp4	2017-10-17 06:04:47.561594-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+4.jpg
175	El Impacto de tu nombre 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Impacto+De+Tu+Nombre+1.mp4	2017-10-17 06:05:16.110088-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Impacto+De+Tu+Nombre+1.jpg
178	El Mito en el Árbol	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Mito+en+el+A%CC%81rbol.mp4	2017-10-17 06:05:35.585085-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Mito+en+el+%C3%81rbol.jpg
181	Encuentro, Concepción, Gestación y Nacimiento 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+2.mp4	2017-10-17 06:05:54.155081-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Encuentro%2C+Concepci%C3%B3n%2C+Gestaci%C3%B3n+y+Nacimiento+2.jpg
184	Estructura de la Metagenealogia 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Estructura+de+la+Metagenealogi%CC%81a+2.mp4	2017-10-17 06:06:17.965577-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Estructura+de+la+Metagenealog%C3%ADa+2.jpg
187	Formas de Repetición en el Árbol 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Formas+de+Repeticio%CC%81n+en+el+A%CC%81rbol+2.mp4	2017-10-17 06:06:39.030074-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Formas+de+Repetici%C3%B3n+en+el+%C3%81rbol+2.jpg
190	Nivel de Conciencia Adolescente Romántico	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Adolescente+Roma%CC%81ntico.mp4	2017-10-17 06:06:52.353572-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Adolescente+Rom%C3%A1ntico.jpg
193	Nivel de Conciencia Animal	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Animal.mp4	2017-10-17 06:07:33.445564-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Animal.jpg
196	Nivel de Conciencia Niño Consumidor	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Nin%CC%83o+Consumidor.mp4	2017-10-17 06:08:02.453059-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Ni%C3%B1o+Consumidor.jpg
199	Niveles de Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Niveles+de+Conciencia.mp4	2017-10-17 06:08:29.033054-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Niveles+de+Conciencia.jpg
202	Núcleo y Nudo Narcisista 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Narcisista+1.mp4	2017-10-17 06:08:50.606551-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Narcisista+1.jpg
205	Tipos de Árbol - Árbol Mamífero	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Tipos+de+Arbol+-+A%CC%81rbol+mami%CC%81mero.mp4	2017-10-17 06:09:09.180547-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Tipos+de+Arbol+-+%C3%81rbol+mam%C3%ADmero.jpg
208	Actitud y Ética del Tarologo 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+2.mp4	2017-10-17 06:10:03.455038-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+2.jpg
211	Actitud y Ética del Tarologo 5	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+5.mp4	2017-10-17 06:10:39.502032-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+5.jpg
214	Analizando los Elementos Simbólicos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Analizando+los+Elementos+Simbo%CC%81licos.mp4	2017-10-17 06:11:11.807526-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Analizando+los+Elementos+Simb%C3%B3licos.jpg
217	Así es una ceremonia del te japonesa	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Asi%CC%81+es+una+ceremonia+del+te%CC%81+japonesa.mp4	2017-10-17 06:11:51.01902-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/As%C3%AD+es+una+ceremonia+del+t%C3%A9+japonesa.jpg
220	Consideraciones sobre la Lectura del Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Consideraciones+sobre+la+Lectura+del+Tarot+1.mp4	2017-10-17 06:12:30.758013-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Consideraciones+sobre+la+Lectura+del+Tarot+1.jpg
223	Las Neuronas Espejo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Las+Neuronas+Espejo.mp4	2017-10-17 06:13:03.176506-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Las+Neuronas+Espejo.jpg
226	Lectura Comienzo - Desarrollo - Resultado	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Comienzo+-+Desarrollo+-+Resultado.mp4	2017-10-17 06:14:05.452497-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Comienzo+-+Desarrollo+-+Resultado.jpg
149	La Condición Divina 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Condicio%CC%81n+Divina+2.mp4	2017-10-17 05:48:00.434268-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Condici%C3%B3n+Divina+2.jpg
152	Las Resistencias del Cerebro Reptil	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Las+Resistencias+del+Cerebro+Reptil.mp4	2017-10-17 05:49:18.443254-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Las+Resistencias+del+Cerebro+Reptil.jpg
155	Mensaje a Estudiantes 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mensaje+a+Estudiantes+3.mp4	2017-10-17 05:50:22.591243-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mensaje+a+Estudiantes+3.jpg
158	Mi Historia personal con el Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mi+Historia+personal+con+el+Tarot+1.mp4	2017-10-17 05:50:58.514737-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mi+Historia+personal+con+el+Tarot+1.jpg
161	Viviéndonos como Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Vivie%CC%81ndonos+como+Conciencia.mp4	2017-10-17 05:51:51.731728-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Vivi%C3%A9ndonos+como+Conciencia.jpg
164	Conflicto de Fracaso 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+2.mp4	2017-10-17 06:03:20.100109-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+2.jpg
167	Diferentes Tipos de Ego 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Diferentes+Tipos+de+Ego+1.mp4	2017-10-17 06:03:36.578105-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Diferentes+Tipos+de+Ego+1.jpg
170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+2.mp4	2017-10-17 06:04:04.8166-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+2.jpg
173	El Abuso en los Cuatro Centros	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Abuso+en+los+Cuatro+Centros.mp4	2017-10-17 06:04:59.412091-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Abuso+en+los+Cuatro+Centros.jpg
176	El Impacto de tu nombre 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Impacto+De+Tu+Nombre+2.mp4	2017-10-17 06:05:21.611087-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Impacto+De+Tu+Nombre+2.jpg
179	El Proceso de Transformación	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Proceso+de+Transformacio%CC%81n.mp4	2017-10-17 06:05:47.903088-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Proceso+de+Transformaci%C3%B3n.jpg
182	Encuentro, Concepción, Gestación y Nacimiento 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+3.mp4	2017-10-17 06:06:01.54908-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Encuentro%2C+Concepci%C3%B3n%2C+Gestaci%C3%B3n+y+Nacimiento+3.jpg
185	Estructura de la Metagenealogia 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Estructura+de+la+Metagenealogi%CC%81a+3.mp4	2017-10-17 06:06:25.124076-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Estructura+de+la+Metagenealog%C3%ADa+3.jpg
188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Identificando+Mitos+y+Arquetipos+en+tu+A%CC%81rbol+Genealo%CC%81gico.mp4	2017-10-17 06:06:45.986073-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Identificando+Mitos+y+Arquetipos+en+tu+%C3%81rbol+Geneal%C3%B3gico.jpg
191	Nivel de Conciencia Adulto Altruista	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Adulto+Altruista.mp4	2017-10-17 06:07:08.109569-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Adulto+Altruista.jpg
194	Nivel de Conciencia Cósmico	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Co%CC%81smico.mp4	2017-10-17 06:07:40.477563-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+C%C3%B3smico.jpg
197	Nivel de Conciencia Planetario	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Planetario.mp4	2017-10-17 06:08:12.696058-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Planetario.jpg
200	Núcleo y Nudo Bisexual	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Bisexual.mp4	2017-10-17 06:08:35.435054-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Bisexual.jpg
203	Núcleo y Nudo Narcisista 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Narcisista+2.mp4	2017-10-17 06:08:56.38705-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Narcisista+2.jpg
206	Tipos de Árbol - Emocional	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Tipos+de+Arbol+-+emocional.mp4	2017-10-17 06:09:16.793546-05	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Tipos+de+Arbol+-+emocional.jpg
209	Actitud y Ética del Tarologo 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+3.mp4	2017-10-17 06:10:18.249036-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+3.jpg
212	Actitud y Ética del Tarologo 6	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+6.mp4	2017-10-17 06:10:51.73653-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+6.jpg
215	Analogías, Símbolos, Metáforas y Mitos en el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Analogi%CC%81as%2C+Si%CC%81mbolos%2C+Meta%CC%81foras+y+Mitos+en+el+Tarot.mp4	2017-10-17 06:11:21.671525-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Analog%C3%ADas%2C+S%C3%ADmbolos%2C+Met%C3%A1foras+y+Mitos+en+el+Tarot.jpg
218	Auto-Lectura con los Arcanos Mayores	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Auto-Lectura+con+los+Arcanos+Mayores.mp4	2017-10-17 06:12:00.120518-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Auto-Lectura+con+los+Arcanos+Mayores.jpg
221	Consideraciones sobre la Lectura del Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Consideraciones+sobre+la+Lectura+del+Tarot+2.mp4	2017-10-17 06:12:40.634511-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Consideraciones+sobre+la+Lectura+del+Tarot+2.jpg
224	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+4+Pasos+para+Encauzar+mi+Proceso+Transformativo.mp4	2017-10-17 06:13:13.616505-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+4+Pasos+para+Encauzar+mi+Proceso+Transformativo.jpg
146	El Tarot Como guía	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/El+Tarot+como+Gui%CC%81a.mp4	2017-10-17 05:47:25.223274-05	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/El+Tarot+como+Gu%C3%ADa.jpg
227	Lectura Conflicto - Solución	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Conflicto+-+Solucio%CC%81n.mp4	2017-10-17 06:14:21.866493-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Conflicto+-+Soluci%C3%B3n.jpg
228	Lectura Conflicto entre 2 Personas y su Solución	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Conflicto+entre+2+Personas+y+su+Solucio%CC%81n.mp4	2017-10-17 06:14:44.493489-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Conflicto+entre+2+Personas+y+su+Soluci%C3%B3n.jpg
229	Lectura el Tarot hace las Preguntas	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+El+Tarot+hace+las+Preguntas.mp4	2017-10-17 06:14:53.627988-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+El+Tarot+hace+las+Preguntas.jpg
230	Lectura el Trio Familiar	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+El+Tri%CC%81o+Familiar.mp4	2017-10-17 06:15:02.713986-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+El+Tr%C3%ADo+Familiar.jpg
231	Lectura Narcisista	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Narcisista.mp4	2017-10-17 06:15:13.045985-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Narcisista.jpg
232	Lectura con 3 cartas Sumando los Arcanos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+con+3+cartas+Sumando+los+Arcanos.mp4	2017-10-17 06:15:21.818483-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+con+3+cartas+Sumando+los+Arcanos.jpg
233	Lectura con Interpretación de la Carta de Abajo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+con+Interpretacio%CC%81n+de+la+Carta+de+Abajo.mp4	2017-10-17 06:15:33.843981-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+con+Interpretaci%C3%B3n+de+la+Carta+de+Abajo.jpg
234	Lectura de 3 Cartas con Pregunta	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+de+3+Cartas+con+Pregunta.mp4	2017-10-17 06:15:46.629979-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+de+3+Cartas+con+Pregunta.jpg
235	Lectura del Héroes o la Heroína	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+del+He%CC%81roe+o+la+Heroi%CC%81na.mp4	2017-10-17 06:16:01.469477-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+del+H%C3%A9roe+o+la+Hero%C3%ADna.jpg
236	Lectura del Tarot en una Frase	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+del+Tarot+en+una+Frase.mp4	2017-10-17 06:16:10.955475-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+del+Tarot+en+una+Frase.jpg
237	Lectura sin Pregunta	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+sin+Pregunta.mp4	2017-10-17 06:16:21.230973-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+sin+Pregunta.jpg
238	Lecturas con 3 Cartas	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+3+cartas.mp4	2017-10-17 06:16:28.784471-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+3+cartas.jpg
239	Lecturas con Arcanos Menores 0	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+Arcanos+Menores+0.mp4	2017-10-17 06:16:36.209969-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+Arcanos+Menores+0.jpg
240	Lecturas con Arcanos Menores 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+Arcanos+Menores+1.mp4	2017-10-17 06:16:45.037469-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+Arcanos+Menores+1.jpg
241	Lecturas con Arcanos Menores 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+Arcanos+Menores+2.mp4	2017-10-17 06:16:56.856967-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+Arcanos+Menores+2.jpg
242	Lecturas de Tarot - Ejemplos y Practicas	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+de+Tarot+-+Ejemplos+y+Pra%CC%81cticas.mp4	2017-10-17 06:17:29.29396-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+de+Tarot+-+Ejemplos+y+Pr%C3%A1cticas.jpg
243	Lenguaje Gestual	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lenguaje+Gestual.mp4	2017-10-17 06:17:36.551959-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lenguaje+Gestual.jpg
244	Lenguaje Visual del Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lenguaje+Visual+del+Tarot.mp4	2017-10-17 06:17:44.041959-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lenguaje+Visual+del+Tarot.jpg
245	Los Arquetipos en el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Los+Arquetipos+en+el+Tarot.mp4	2017-10-17 06:17:53.849957-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Los+Arquetipos+en+el+Tarot.jpg
246	Los Palos en el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Los+Palos+en+el+Tarot.mp4	2017-10-17 06:18:02.015955-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Los+Palos+en+el+Tarot.jpg
247	Mi Historia Personal con el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Mi+Historia+Personal+con+el+Tarot.mp4	2017-10-17 06:18:09.724954-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Mi+Historia+Personal+con+el+Tarot.jpg
248	Observando Analogías	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Observando+Analogi%CC%81as.mp4	2017-10-17 06:18:18.437453-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Observando+Analog%C3%ADas.jpg
249	Observando el Mándala del Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Ordenando+el+Mandala+del+Tarot.mp4	2017-10-17 06:18:27.292451-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Ordenando+el+Mandala+del+Tarot.jpg
250	Preparación para la Lectura del Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+1.mp4	2017-10-17 06:18:41.500448-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Preparaci%C3%B3n+para+la+Lectura+de+Tarot+1.jpg
251	Preparación para la Lectura del Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+2.mp4	2017-10-17 06:18:53.262446-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Preparaci%C3%B3n+para+la+Lectura+de+Tarot+2.jpg
252	Preparación para la Lectura del Tarot 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+3.mp4	2017-10-17 06:19:01.187444-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Preparaci%C3%B3n+para+la+Lectura+de+Tarot+3.jpg
253	Recibiendo al Consultante 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Recibiendo+al+Consultante+1.mp4	2017-10-17 06:19:09.532943-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Recibiendo+al+Consultante+1.jpg
254	Recibiendo al Consultante 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Recibiendo+al+Consultante+2.mp4	2017-10-17 06:19:17.853942-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Recibiendo+al+Consultante+2.jpg
255	Teoría y Estructura del Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Teori%CC%81a+y+Estructura+del+Tarot.mp4	2017-10-17 06:19:31.61344-05	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Teor%C3%ADa+y+Estructura+del+Tarot.jpg
256	Bases y Fundamentos de la Psicomagia 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+1.mp4	2017-10-17 06:19:50.834936-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+1.jpg
257	Bases y Fundamentos de la Psicomagia 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+2.mp4	2017-10-17 06:20:11.254932-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+2.jpg
258	Bases y Fundamentos de la Psicomagia 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+3.mp4	2017-10-17 06:20:23.489931-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+3.jpg
259	Bases y Fundamentos de la Psicomagia 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+4.mp4	2017-10-17 06:20:32.869429-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+4.jpg
260	Bases y Fundamentos de la Psicomagia 5	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+Psicomagia+5.mp4	2017-10-17 06:20:48.029927-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+Psicomagia+5.jpg
261	Bases y Fundamentos de la Psicomagia 6	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+fundamentos+psicomagia+6.mp4	2017-10-17 06:21:07.969423-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+fundamentos+psicomagia+6.jpg
262	Introducción a la Psicomagia 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Introduccio%CC%81n+a+la+psicomagia+3.mp4	2017-10-17 06:21:16.337421-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Introducci%C3%B3n+a+la+psicomagia+3.jpg
263	Introducción a la Psicomagia 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Introduccio%CC%81n+a+la+psicomagia+4.mp4	2017-10-17 06:21:24.37092-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Introducci%C3%B3n+a+la+psicomagia+4.jpg
264	Introducción a la Psicomagia 5	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Introduccio%CC%81n+a+la+psicomagia+5.mp4	2017-10-17 06:21:32.333919-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Introducci%C3%B3n+a+la+psicomagia+5.jpg
265	Percepción y Realidad	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Percepcio%CC%81n+y+realidad.mp4	2017-10-17 06:21:45.115916-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Percepci%C3%B3n+y+realidad.jpg
266	Símbolos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Simbolos+4.mp4	2017-10-17 06:22:03.192913-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Simbolos+4.jpg
267	Sincronicidad 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Sincronicidad+1.mp4	2017-10-17 06:22:16.122411-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Sincronicidad+1.jpg
268	Sincronicidad 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Sincronicidad+2.mp4	2017-10-17 06:22:29.586909-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Sincronicidad+2.jpg
269	Símbolos, Números y Colores 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+1.mp4	2017-10-17 06:22:39.995406-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+1.jpg
270	Símbolos, Números y Colores 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+2.mp4	2017-10-17 06:22:52.088405-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+2.jpg
271	Símbolos, Números y Colores 3A	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+3-A.mp4	2017-10-17 06:23:05.597403-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+3-A.jpg
272	Símbolos, Números y Colores 3B	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+3b.mp4	2017-10-17 06:23:16.1304-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+3b.jpg
273	¿Que es la Psicomagia? 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/%C2%BFQue%CC%81+es+la+psicomagia+1.mp4	2017-10-17 06:23:24.378399-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/%C2%BFQu%C3%A9+es+la+psicomagia+1.jpg
274	¿Que es la Psicomagia? 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/%C2%BFQue%CC%81+es+la+psicomagia+2.mp4	2017-10-17 06:23:36.362398-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/%C2%BFQu%C3%A9+es+la+psicomagia+2.jpg
275	¿Que es la Psicomagia? 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/%C2%BFQue%CC%81+es+la+psicomagia+3.mp4	2017-10-17 06:23:48.778895-05	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/%C2%BFQu%C3%A9+es+la+psicomagia+3.jpg
\.


--
-- Name: catalog_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('catalog_videos_id_seq', 275, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-08-30 04:02:57.89663-05	1	Bloque_1	1	[{"added": {}}]	8	1
2	2017-08-30 04:03:01.82913-05	2	Bloque_2	1	[{"added": {}}]	8	1
3	2017-08-30 04:03:05.42313-05	3	Bloque_3	1	[{"added": {}}]	8	1
4	2017-08-30 04:03:10.188631-05	4	Bloque_4	1	[{"added": {}}]	8	1
5	2017-09-01 04:51:08.478432-05	1	Test	1	[{"added": {}}]	10	1
6	2017-09-01 04:51:15.412434-05	1	El Tarot como Guía	1	[{"added": {}}]	9	1
7	2017-09-01 05:00:43.414995-05	1	El Tarot como Guía	2	[{"changed": {"fields": ["link"]}}]	9	1
8	2017-09-01 05:09:49.911555-05	2	La Barca en la que Navegaremos	1	[{"added": {}}]	9	1
9	2017-09-01 05:10:03.456557-05	3	La Condicion Divina	1	[{"added": {}}]	9	1
10	2017-09-04 02:11:09.734809-05	4	La Condicion Divina 2	1	[{"added": {}}]	9	1
11	2017-09-04 02:11:17.05381-05	1	El Tarot como Guía	2	[{"changed": {"fields": ["link"]}}]	9	1
12	2017-09-04 02:14:29.150831-05	1	El Tarot como Guía	2	[]	9	1
13	2017-09-04 02:14:35.842831-05	2	La Barca en la que Navegaremos	2	[{"changed": {"fields": ["link"]}}]	9	1
14	2017-09-04 02:16:02.110341-05	3	La Condicion Divina	2	[{"changed": {"fields": ["link"]}}]	9	1
15	2017-09-04 02:16:33.007845-05	4	La Condicion Divina 2	2	[{"changed": {"fields": ["link"]}}]	9	1
16	2017-09-04 02:21:18.724376-05	5	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	9	1
17	2017-09-04 02:22:08.977882-05	6	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	9	1
18	2017-09-04 02:22:30.199883-05	7	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	9	1
19	2017-09-04 02:22:51.211387-05	8	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	9	1
20	2017-09-04 02:23:04.888388-05	6	Actitud y Ética del Tarologo 2	2	[{"changed": {"fields": ["category"]}}]	9	1
21	2017-09-04 02:23:09.028888-05	7	Actitud y Ética del Tarologo 3	2	[{"changed": {"fields": ["category"]}}]	9	1
22	2017-09-04 02:23:13.397888-05	8	Actitud y Ética del Tarologo 4	2	[{"changed": {"fields": ["category"]}}]	9	1
23	2017-09-04 02:25:30.439903-05	9	Conflicto de Fracaso 1	1	[{"added": {}}]	9	1
24	2017-09-04 02:25:51.049906-05	10	Conflicto de Fracaso 2	1	[{"added": {}}]	9	1
25	2017-09-04 02:26:07.709907-05	11	Conflicto de Fracaso 3	1	[{"added": {}}]	9	1
26	2017-09-04 02:26:20.279408-05	12	Conflicto de Fracaso 4	1	[{"added": {}}]	9	1
27	2017-09-04 02:28:48.107925-05	13	Bases y Fundamentos de la Psicomagia 1	1	[{"added": {}}]	9	1
28	2017-09-04 02:28:53.333425-05	13	Bases y Fundamentos de la Psicomagia 1	2	[]	9	1
29	2017-09-04 02:29:11.047428-05	14	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	9	1
30	2017-09-04 02:29:18.051929-05	15	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	9	1
31	2017-09-04 02:29:30.43993-05	16	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	9	1
32	2017-09-04 02:29:40.751931-05	15	Bases y Fundamentos de la Psicomagia 3	2	[{"changed": {"fields": ["category"]}}]	9	1
33	2017-09-04 02:34:04.26696-05	2	La Barca en la que Navegaremos	2	[]	9	1
34	2017-09-04 03:53:16.82648-05	1	I Le Bateleur BN	1	[{"added": {}}]	7	1
35	2017-09-05 01:56:10.982527-05	1	Bloque_0	2	[{"changed": {"fields": ["name"]}}]	8	1
36	2017-09-05 01:56:15.677527-05	2	Bloque_1	2	[{"changed": {"fields": ["name"]}}]	8	1
37	2017-09-05 01:56:20.734528-05	3	Bloque_2	2	[{"changed": {"fields": ["name"]}}]	8	1
38	2017-09-05 01:56:25.024028-05	4	Bloque_3	2	[{"changed": {"fields": ["name"]}}]	8	1
39	2017-09-08 04:27:37.566052-05	2	I Le Bateleur BN 2	1	[{"added": {}}]	7	1
40	2017-09-08 04:28:54.569561-05	2	I Le Bateleur BN 2	2	[{"changed": {"fields": ["link"]}}]	7	1
41	2017-09-13 23:37:00.771109-05	1	Bloque_0	2	[{"changed": {"fields": ["title"]}}]	8	1
42	2017-09-13 23:37:06.278108-05	2	Bloque_1	2	[{"changed": {"fields": ["title"]}}]	8	1
43	2017-09-13 23:37:12.543106-05	3	Bloque_2	2	[{"changed": {"fields": ["title"]}}]	8	1
44	2017-09-13 23:37:27.933605-05	4	Bloque_3	2	[{"changed": {"fields": ["title"]}}]	8	1
45	2017-09-15 20:36:11.796459-05	5	Actitud y Ética del Tarologo 1	3		9	1
46	2017-09-15 20:36:11.835959-05	6	Actitud y Ética del Tarologo 2	3		9	1
47	2017-09-15 20:36:11.837459-05	7	Actitud y Ética del Tarologo 3	3		9	1
48	2017-09-15 20:36:11.83846-05	8	Actitud y Ética del Tarologo 4	3		9	1
49	2017-09-15 20:36:11.839459-05	13	Bases y Fundamentos de la Psicomagia 1	3		9	1
50	2017-09-15 20:36:11.840958-05	14	Bases y Fundamentos de la Psicomagia 2	3		9	1
51	2017-09-15 20:36:11.841959-05	15	Bases y Fundamentos de la Psicomagia 3	3		9	1
52	2017-09-15 20:36:11.84296-05	16	Bases y Fundamentos de la Psicomagia 4	3		9	1
53	2017-09-15 20:36:11.84446-05	9	Conflicto de Fracaso 1	3		9	1
54	2017-09-15 20:36:11.84546-05	10	Conflicto de Fracaso 2	3		9	1
55	2017-09-15 20:36:11.845959-05	11	Conflicto de Fracaso 3	3		9	1
56	2017-09-15 20:36:11.84696-05	12	Conflicto de Fracaso 4	3		9	1
57	2017-09-15 20:36:11.847959-05	1	El Tarot como Guía	3		9	1
58	2017-09-15 20:36:11.848959-05	2	La Barca en la que Navegaremos	3		9	1
59	2017-09-15 20:36:11.849459-05	3	La Condicion Divina	3		9	1
60	2017-09-15 20:36:11.85046-05	4	La Condicion Divina 2	3		9	1
61	2017-09-15 20:37:18.647947-05	17	La Barca en la que Navegaremos	1	[{"added": {}}]	9	1
62	2017-09-15 20:39:15.696926-05	18	El Tarot como Guía	1	[{"added": {}}]	9	1
63	2017-09-15 20:39:35.876925-05	19	La Condicion Divina 1	1	[{"added": {}}]	9	1
64	2017-09-15 20:39:46.644421-05	20	La Condicion Divina 2	1	[{"added": {}}]	9	1
65	2017-09-15 20:40:12.748418-05	21	La Configuración del Yo Testigo	1	[{"added": {}}]	9	1
66	2017-09-15 20:40:24.969415-05	22	La Dimension Transpersonal	1	[{"added": {}}]	9	1
67	2017-09-15 20:40:48.904912-05	23	Las Resistencias del Cerebro Reptil	1	[{"added": {}}]	9	1
68	2017-09-15 20:42:00.467398-05	24	Mensaje a Estudiantes 1	1	[{"added": {}}]	9	1
69	2017-09-15 20:42:11.404403-05	25	Mensaje a Estudiantes 2	1	[{"added": {}}]	9	1
70	2017-09-15 20:42:23.315899-05	26	Mensaje a Estudiantes 3	1	[{"added": {}}]	9	1
71	2017-09-15 20:42:39.434891-05	27	Metamundo La Escuela	1	[{"added": {}}]	9	1
72	2017-09-15 20:43:02.634888-05	28	Metamundo y la Expansion de la Conciencia	1	[{"added": {}}]	9	1
73	2017-09-15 20:43:19.802884-05	29	Mi Historia personal con el Tarot 1	1	[{"added": {}}]	9	1
74	2017-09-15 20:43:32.673882-05	30	Mi Historia personal con el Tarot 2	1	[{"added": {}}]	9	1
75	2017-09-15 20:43:42.37988-05	31	Mi Historia personal con el Tarot 3	1	[{"added": {}}]	9	1
76	2017-09-15 20:44:45.60087-05	32	Viviéndonos como Conciencia	1	[{"added": {}}]	9	1
77	2017-09-15 20:45:06.442866-05	33	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	9	1
78	2017-09-15 20:45:25.605863-05	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["category"]}}]	9	1
79	2017-09-15 20:45:37.73586-05	34	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	9	1
80	2017-09-15 20:45:48.660359-05	35	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	9	1
81	2017-09-15 20:46:05.912355-05	36	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	9	1
82	2017-09-15 20:46:19.451854-05	37	Actitud y Ética del Tarologo 5	1	[{"added": {}}]	9	1
83	2017-09-15 20:46:39.17735-05	38	Actitud y Ética del Tarologo 6	1	[{"added": {}}]	9	1
84	2017-09-15 20:46:48.498355-05	39	Actitud y Ética del Tarologo 7	1	[{"added": {}}]	9	1
85	2017-09-15 20:47:05.390346-05	40	Analizando los elementos simbolicos	1	[{"added": {}}]	9	1
86	2017-09-15 20:47:23.438347-05	41	Analogías, Símbolos, Metáforas y Mitos en el Tarot	1	[{"added": {}}]	9	1
87	2017-09-15 20:47:31.623341-05	42	Antecedentes	1	[{"added": {}}]	9	1
88	2017-09-15 20:47:47.184339-05	43	Así es una ceremonia del té japonesa	1	[{"added": {}}]	9	1
89	2017-09-15 20:48:12.047334-05	44	Auto-Lectura con los Arcanos Mayores	1	[{"added": {}}]	9	1
90	2017-09-15 20:49:50.374816-05	45	Consideraciones sobre cómo leer el Tarot	1	[{"added": {}}]	9	1
91	2017-09-15 20:50:33.34981-05	46	Consideraciones sobre la Lectura del Tarot 1	1	[{"added": {}}]	9	1
92	2017-09-15 20:50:53.125805-05	47	Consideraciones sobre la Lectura del Tarot 2	1	[{"added": {}}]	9	1
93	2017-09-15 20:51:01.114804-05	48	Diferentes Visiones en las Lecturas de Tarot	1	[{"added": {}}]	9	1
94	2017-09-15 20:51:55.057295-05	49	Las Neuronas Espejos	1	[{"added": {}}]	9	1
95	2017-09-15 20:52:25.07079-05	50	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	1	[{"added": {}}]	9	1
96	2017-09-15 20:52:36.228787-05	51	Lectura Causas de la Situación Presente	1	[{"added": {}}]	9	1
97	2017-09-15 20:52:47.622286-05	52	Lectura Comienzo - Desarrollo - Resultado	1	[{"added": {}}]	9	1
98	2017-09-15 20:52:59.883284-05	53	Lectura Conflicto - Solución	1	[{"added": {}}]	9	1
99	2017-09-15 20:53:37.473777-05	54	Lectura Conflicto entre 2 Personas y su Solución	1	[{"added": {}}]	9	1
100	2017-09-15 20:53:52.973774-05	55	Lectura El Tarot hace las Preguntas	1	[{"added": {}}]	9	1
101	2017-09-15 20:54:05.559273-05	56	Lectura El Trío Familiar	1	[{"added": {}}]	9	1
102	2017-09-15 20:54:18.256769-05	57	Lectura Narcisista	1	[{"added": {}}]	9	1
103	2017-09-15 20:54:51.941764-05	58	Lectura con 3 cartas Sumando los Arcanos	1	[{"added": {}}]	9	1
104	2017-09-15 20:55:10.395761-05	59	Lectura con Interpretación de la Carta de Abajo	1	[{"added": {}}]	9	1
105	2017-09-15 20:55:25.379259-05	60	Lectura de 3 Cartas con Pregunta	1	[{"added": {}}]	9	1
106	2017-09-15 20:55:43.711255-05	61	Lectura del Héroe o la Heroína	1	[{"added": {}}]	9	1
107	2017-09-15 20:55:53.043254-05	62	Lectura del Tarot en una Frase	1	[{"added": {}}]	9	1
108	2017-09-15 20:56:19.36325-05	63	Lectura sin Pregunta	1	[{"added": {}}]	9	1
109	2017-09-15 20:56:31.398747-05	64	Lecturas con 3 cartas	1	[{"added": {}}]	9	1
110	2017-09-15 20:56:50.492744-05	65	Lecturas con Arcanos Menores 0	1	[{"added": {}}]	9	1
111	2017-09-15 20:57:04.083741-05	66	Lecturas con Arcanos Menores 1	1	[{"added": {}}]	9	1
112	2017-09-15 20:57:13.114739-05	67	Lecturas con Arcanos Menores 2	1	[{"added": {}}]	9	1
113	2017-09-15 20:57:31.023736-05	68	Lecturas de Tarot - Ejemplos y Prácticas	1	[{"added": {}}]	9	1
114	2017-09-15 20:58:15.90273-05	69	Lectura Gestual	1	[{"added": {}}]	9	1
115	2017-09-15 20:58:24.502729-05	70	Lenguaje Visual del Tarot	1	[{"added": {}}]	9	1
116	2017-09-15 20:58:35.351725-05	71	Los Arquetipos en el Tarot	1	[{"added": {}}]	9	1
117	2017-09-15 20:58:44.04723-05	72	Los Palos en el Tarot	1	[{"added": {}}]	9	1
118	2017-09-15 20:58:53.290722-05	73	Mi Historia Personal con el Tarot	1	[{"added": {}}]	9	1
119	2017-09-15 20:59:03.282721-05	74	Observando Analogías	1	[{"added": {}}]	9	1
120	2017-09-15 20:59:10.66372-05	75	Ordenando el Mandala del Tarot	1	[{"added": {}}]	9	1
121	2017-09-15 20:59:32.992216-05	76	Preparación para la Lectura de Tarot 1	1	[{"added": {}}]	9	1
122	2017-09-15 20:59:43.901713-05	77	Preparación para la Lectura de Tarot 2	1	[{"added": {}}]	9	1
123	2017-09-15 20:59:51.750212-05	78	Preparación para la Lectura de Tarot 3	1	[{"added": {}}]	9	1
124	2017-09-15 20:59:58.973218-05	79	Recibiendo al Consultante 1	1	[{"added": {}}]	9	1
125	2017-09-15 21:00:09.270708-05	80	Recibiendo al Consultante 2	1	[{"added": {}}]	9	1
126	2017-09-15 21:00:16.67421-05	81	Teoría y Estructura del Tarot	1	[{"added": {}}]	9	1
127	2017-09-15 21:01:29.934195-05	82	Conclusiones sobre los Estados de Conciencia	1	[{"added": {}}]	9	1
128	2017-09-15 21:01:38.904194-05	83	Conflicto de Fracaso 1	1	[{"added": {}}]	9	1
129	2017-09-15 21:01:45.993196-05	84	Conflicto de Fracaso 2	1	[{"added": {}}]	9	1
130	2017-09-15 21:02:01.56419-05	85	Conflicto de Fracaso 3	1	[{"added": {}}]	9	1
131	2017-09-15 21:02:08.434688-05	86	Conflicto de Fracaso 4	1	[{"added": {}}]	9	1
132	2017-09-15 21:02:14.512687-05	87	Diferentes Tipos de Ego 1	1	[{"added": {}}]	9	1
133	2017-09-15 21:02:23.160687-05	88	Diferentes Tipos de Ego 2	1	[{"added": {}}]	9	1
134	2017-09-15 21:02:29.120189-05	89	Ejemplo de Análisis de las Repeticiones en el Árbol 1	1	[{"added": {}}]	9	1
135	2017-09-15 21:02:35.219683-05	90	Ejemplo de Análisis de las Repeticiones en el Árbol 2	1	[{"added": {}}]	9	1
136	2017-09-15 21:02:41.847689-05	91	Ejemplo de Análisis de las Repeticiones en el Árbol 3	1	[{"added": {}}]	9	1
137	2017-09-15 21:02:48.518182-05	92	Ejemplo de Análisis de las Repeticiones en el Árbol 4	1	[{"added": {}}]	9	1
138	2017-09-15 21:02:57.45268-05	93	El Abuso en los Cuatro Centros	1	[{"added": {}}]	9	1
139	2017-09-15 21:03:10.710677-05	94	El Destino que el Yo Genealógico ha establecido en ti	1	[{"added": {}}]	9	1
140	2017-09-15 21:03:40.801672-05	95	El Impacto De Tu Nombre 1	1	[{"added": {}}]	9	1
141	2017-09-15 21:05:06.296157-05	96	El Impacto De Tu Nombre 2	1	[{"added": {}}]	9	1
142	2017-09-15 21:05:13.102157-05	97	El Impacto De Tu Nombre 3	1	[{"added": {}}]	9	1
143	2017-09-15 21:05:21.330155-05	98	El Mito en el Árbol	1	[{"added": {}}]	9	1
144	2017-09-15 21:05:29.956661-05	99	El Proceso de Transformación	1	[{"added": {}}]	9	1
145	2017-09-15 21:06:38.592141-05	100	Encuentro, Concepción, Gestación y Nacimiento 1	1	[{"added": {}}]	9	1
146	2017-09-15 21:06:47.29814-05	101	Encuentro, Concepción, Gestación y Nacimiento 2	1	[{"added": {}}]	9	1
147	2017-09-15 21:06:57.640138-05	102	Encuentro, Concepción, Gestación y Nacimiento 3	1	[{"added": {}}]	9	1
148	2017-09-15 21:07:12.530635-05	103	Estructura de la Metagenealogía 1	1	[{"added": {}}]	9	1
149	2017-09-15 21:07:21.124133-05	104	Estructura de la Metagenealogía 2	1	[{"added": {}}]	9	1
150	2017-09-15 21:07:28.460134-05	105	Estructura de la Metagenealogía 3	1	[{"added": {}}]	9	1
151	2017-09-15 21:07:36.254132-05	106	Formas de Repeticion en el Arbol 1	1	[{"added": {}}]	9	1
152	2017-09-15 21:07:45.953129-05	107	Formas de Repetición en el Árbol 2	1	[{"added": {}}]	9	1
153	2017-09-15 21:08:10.541125-05	108	Identificando Mitos y Arquetipos en tu Árbol Genealógico	1	[{"added": {}}]	9	1
154	2017-09-15 21:08:20.233123-05	109	Introducción a los Núcleos y Nudos	1	[{"added": {}}]	9	1
155	2017-09-15 21:08:33.928626-05	110	Nivel de Conciencia Adolescente Romántico	1	[{"added": {}}]	9	1
156	2017-09-15 21:08:49.173619-05	111	Nivel de Conciencia Adulto Altruista	1	[{"added": {}}]	9	1
157	2017-09-15 21:08:54.167119-05	112	Nivel de Conciencia Adulto Aprovechador	1	[{"added": {}}]	9	1
158	2017-09-15 21:09:01.859617-05	113	Nivel de Conciencia Animal	1	[{"added": {}}]	9	1
159	2017-09-15 21:09:13.410115-05	114	Nivel de Conciencia Cósmico	1	[{"added": {}}]	9	1
160	2017-09-15 21:09:21.459114-05	115	Nivel de Conciencia Divino	1	[{"added": {}}]	9	1
161	2017-09-15 21:09:32.487617-05	116	Nivel de Conciencia Niño Consumidor	1	[{"added": {}}]	9	1
162	2017-09-15 21:09:42.828109-05	117	Nivel de Conciencia Planetario	1	[{"added": {}}]	9	1
163	2017-09-15 21:09:50.457108-05	118	Nivel de Conciencia Solar	1	[{"added": {}}]	9	1
164	2017-09-15 21:10:00.841106-05	119	Niveles de Conciencia	1	[{"added": {}}]	9	1
165	2017-09-15 21:10:17.123103-05	120	Núcleo y Nudo Bisexual	1	[{"added": {}}]	9	1
166	2017-09-15 21:10:25.839602-05	121	Núcleo y Nudo Incestuoso	1	[{"added": {}}]	9	1
167	2017-09-15 21:10:33.404101-05	122	Núcleo y Nudo Narcisista 1	1	[{"added": {}}]	9	1
168	2017-09-15 21:10:45.050598-05	123	Núcleo y Nudo Narcisista 2	1	[{"added": {}}]	9	1
169	2017-09-15 21:10:53.729098-05	124	Núcleo y Nudo Social	1	[{"added": {}}]	9	1
170	2017-09-15 21:11:01.368596-05	125	Tipos de Arbol - Árbol mamímero	1	[{"added": {}}]	9	1
171	2017-09-15 21:11:09.541594-05	126	Tipos de Arbol - emocional	1	[{"added": {}}]	9	1
172	2017-09-15 21:12:52.180576-05	127	Bases y Fundamentos Psicomagia 5	1	[{"added": {}}]	9	1
173	2017-09-15 21:15:11.715552-05	128	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	9	1
174	2017-09-15 21:15:20.246554-05	129	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	9	1
175	2017-09-15 21:15:32.238049-05	130	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	9	1
176	2017-09-15 21:15:54.657544-05	131	Bases y fundamentos psicomagia 6	1	[{"added": {}}]	9	1
177	2017-09-15 21:17:21.14253-05	132	Introducción a la psicomagia 3	1	[{"added": {}}]	9	1
178	2017-09-15 21:17:31.386029-05	133	Introducción a la psicomagia 4	1	[{"added": {}}]	9	1
179	2017-09-15 21:17:41.507526-05	134	Introducción a la psicomagia 5	1	[{"added": {}}]	9	1
180	2017-09-15 21:17:51.595024-05	135	Percepción y realidad	1	[{"added": {}}]	9	1
181	2017-09-15 21:18:00.918023-05	136	Simbolos 4	1	[{"added": {}}]	9	1
182	2017-09-15 21:18:12.420021-05	137	Sincronicidad 1	1	[{"added": {}}]	9	1
183	2017-09-15 21:18:19.912519-05	138	Sincronicidad 2	1	[{"added": {}}]	9	1
184	2017-09-15 21:18:35.644017-05	139	Símbolos Números y Colores 1	1	[{"added": {}}]	9	1
185	2017-09-15 21:18:44.749515-05	140	Símbolos Números y Colores 2	1	[{"added": {}}]	9	1
186	2017-09-15 21:18:53.866513-05	141	Símbolos Números y Colores 3-A	1	[{"added": {}}]	9	1
187	2017-09-15 21:19:05.010011-05	142	Símbolos Números y Colores 3b	1	[{"added": {}}]	9	1
188	2017-09-15 21:19:24.116008-05	143	¿Qué es la psicomagia 1	1	[{"added": {}}]	9	1
189	2017-09-15 21:19:33.073506-05	144	¿Qué es la psicomagia 2	1	[{"added": {}}]	9	1
190	2017-09-15 21:19:41.100505-05	145	¿Qué es la psicomagia 3	1	[{"added": {}}]	9	1
191	2017-09-18 08:58:11.344584-05	1	I Le Bateleur BN	3		7	1
192	2017-09-18 08:58:16.877084-05	2	I Le Bateleur BN 2	3		7	1
193	2017-09-18 10:46:52.073451-05	3	I Le Bateleur BN	1	[{"added": {}}]	7	1
194	2017-09-18 10:47:06.718952-05	4	II La Papesse BN 2	1	[{"added": {}}]	7	1
195	2017-09-18 10:47:19.381446-05	5	III LImperatrice BN 2	1	[{"added": {}}]	7	1
196	2017-09-18 10:47:28.568944-05	6	IIII LEmpereur BN	1	[{"added": {}}]	7	1
197	2017-09-18 10:48:03.493439-05	7	Lamoureux BN	1	[{"added": {}}]	7	1
198	2017-09-18 10:48:14.332937-05	8	Le Mat BN	1	[{"added": {}}]	7	1
199	2017-09-18 10:48:39.264432-05	9	V Le Pape BN	1	[{"added": {}}]	7	1
200	2017-09-18 10:48:49.11393-05	10	VII Le Chariot BN	1	[{"added": {}}]	7	1
201	2017-09-18 10:49:00.188429-05	11	VIII La Justice BN	1	[{"added": {}}]	7	1
202	2017-09-18 10:49:14.606427-05	12	VIIII LHermite BN	1	[{"added": {}}]	7	1
203	2017-09-18 10:49:24.476424-05	13	X La Roue de Fortune BN	1	[{"added": {}}]	7	1
204	2017-09-18 10:49:54.60792-05	14	XI La Force BN	1	[{"added": {}}]	7	1
205	2017-09-18 10:50:04.289417-05	15	XII Le Pendu BN	1	[{"added": {}}]	7	1
206	2017-09-18 10:50:13.257416-05	16	XIII Arcano sin nombre BN	1	[{"added": {}}]	7	1
207	2017-09-18 10:50:24.655914-05	17	XIIII Temperance BN 2	1	[{"added": {}}]	7	1
208	2017-09-18 10:50:36.564412-05	18	XV Le Diable BN	1	[{"added": {}}]	7	1
209	2017-09-18 10:50:47.42941-05	19	XVI La Maison Dieu BN	1	[{"added": {}}]	7	1
210	2017-09-18 10:50:57.533408-05	20	XVII LEtoile BN	1	[{"added": {}}]	7	1
211	2017-09-18 10:51:11.172414-05	21	XVIII La Lune BN	1	[{"added": {}}]	7	1
212	2017-09-18 10:51:21.444905-05	22	XVIIII Le Soleil BN	1	[{"added": {}}]	7	1
213	2017-09-18 10:51:29.795402-05	23	XX Le Iugement BN	1	[{"added": {}}]	7	1
214	2017-09-18 10:51:37.267901-05	24	XXI Le Monde BN	1	[{"added": {}}]	7	1
215	2017-09-20 00:13:20.249113-05	25	Correspondencias Palos del Tarot	1	[{"added": {}}]	7	1
216	2017-09-20 01:35:04.35915-05	26	Jodorowsky Alejandro - La Via Del Tarot-1	1	[{"added": {}}]	7	1
217	2017-09-20 01:35:13.484651-05	27	Jodorowsky Alejandro - La Via Del Tarot-2	1	[{"added": {}}]	7	1
218	2017-09-20 01:35:22.713652-05	28	La Numerología en el Tarot	1	[{"added": {}}]	7	1
219	2017-09-20 01:35:39.728653-05	29	Referencia Rápida- Arcano 0 - Le Mat	1	[{"added": {}}]	7	1
220	2017-09-20 01:35:48.770655-05	30	Los Colores en el Tarot	1	[{"added": {}}]	7	1
221	2017-09-20 01:36:03.286655-05	31	Referencia Rápida- Arcano I - Le Bateleur	1	[{"added": {}}]	7	1
222	2017-09-20 01:36:34.909659-05	32	Referencia Rápida- Arcano II - La Papesse - La Papisa	1	[{"added": {}}]	7	1
223	2017-09-20 01:36:54.260662-05	33	Referencia Rápida- Arcano III - Limperatrice - La Emperatriz	1	[{"added": {}}]	7	1
224	2017-09-20 01:37:09.001663-05	34	Referencia Rápida- Arcano IIII - LEmpereur - El Emperador	1	[{"added": {}}]	7	1
225	2017-09-20 01:37:19.414664-05	35	Referencia Rápida- Arcano V - Le Pape - El Papa	1	[{"added": {}}]	7	1
226	2017-09-20 01:37:35.442167-05	36	Referencia Rápida- Arcano VI - LAmoureux - El Enamorado	1	[{"added": {}}]	7	1
227	2017-09-20 01:37:48.870168-05	37	Referencia Rápida- Arcano VII - Le Chariot - El Carro	1	[{"added": {}}]	7	1
228	2017-09-20 01:38:03.726669-05	38	Referencia Rápida- Arcano VIII - La Justice- La Justicia	1	[{"added": {}}]	7	1
229	2017-09-20 01:38:13.02617-05	39	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	1	[{"added": {}}]	7	1
230	2017-09-20 01:38:40.842673-05	39	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	2	[]	7	1
231	2017-09-20 01:39:03.078675-05	40	Referencia Rápida- Arcano X	1	[{"added": {}}]	7	1
232	2017-09-20 01:39:12.383676-05	41	Referencia Rápida- Arcano XI - La Force - La Fuerza	1	[{"added": {}}]	7	1
233	2017-09-20 01:39:22.583678-05	42	Referencia Rápida- Arcano XII - Le Pendu - El Colgado	1	[{"added": {}}]	7	1
234	2017-09-20 01:39:39.087681-05	43	Referencia Rápida- Arcano XIII - Arcano sin Nombre	1	[{"added": {}}]	7	1
235	2017-09-20 01:39:51.291681-05	44	Referencia Rápida- Arcano XIIII - Le Diable - El Diablo	1	[{"added": {}}]	7	1
236	2017-09-20 01:40:13.657184-05	45	Referencia Rápida- Arcano XIIII - Temperance - La Templanza	1	[{"added": {}}]	7	1
237	2017-09-20 01:40:34.774686-05	46	Referencia Rápida- Arcano XVI - La Maison Dieu - La Torre	1	[{"added": {}}]	7	1
238	2017-09-20 01:40:45.436187-05	47	Referencia Rápida- Arcano XVII - L Etoille - La Estrella	1	[{"added": {}}]	7	1
239	2017-09-20 01:40:56.129192-05	48	Referencia Rápida- Arcano XVIII - La Lune - La Luna	1	[{"added": {}}]	7	1
240	2017-09-20 01:41:17.69919-05	49	Referencia Rápida- Arcano XVIIII - Le Soleil - El Sol	1	[{"added": {}}]	7	1
241	2017-09-20 01:41:39.655193-05	50	Referencia Rápida- Arcano XX - Le Iugement - El Juicio	1	[{"added": {}}]	7	1
242	2017-09-20 01:41:50.145693-05	51	Referencia Rápida- Arcano XXI - Le Monde - El Mundo	1	[{"added": {}}]	7	1
243	2017-09-20 01:43:43.746706-05	52	Tarea- Ejercicios de Tarot – Semana 1	1	[{"added": {}}]	7	1
244	2017-09-20 01:43:53.371207-05	53	Tarea- Ejercicios de Tarot – Semana 2	1	[{"added": {}}]	7	1
245	2017-09-20 01:44:05.325708-05	54	Tarea- Ejercicios de Tarot – Semana 3	1	[{"added": {}}]	7	1
246	2017-09-20 01:44:14.40571-05	55	Tarea- Ejercicios de Tarot – Semana 4	1	[{"added": {}}]	7	1
247	2017-09-20 01:44:23.49521-05	56	Tarea- Ejercicios de Tarot – Semana 5	1	[{"added": {}}]	7	1
248	2017-09-20 01:44:46.733213-05	57	El Centro Emocional y Sus Nudos	1	[{"added": {}}]	7	1
249	2017-09-20 01:44:57.070715-05	58	El Centro Intelectual y sus Nudos	1	[{"added": {}}]	7	1
250	2017-09-20 01:45:06.331715-05	59	El Centro Sexual-Creativo y sus Nudos	1	[{"added": {}}]	7	1
251	2017-09-20 01:45:28.038218-05	60	Referencia Rápida - Tipo de Repetición Genealógica	1	[{"added": {}}]	7	1
252	2017-09-20 01:45:49.879221-05	61	Referencia Rapida- La Finalidad en el Arbol Genealógico- Trampa y Tesoro	1	[{"added": {}}]	7	1
253	2017-09-20 01:46:11.089722-05	62	Las Repeticiones en mis Centros	1	[{"added": {}}]	7	1
254	2017-09-20 01:46:35.851725-05	63	Referencia Rápida- Niveles de Conciencia	1	[{"added": {}}]	7	1
255	2017-09-20 01:46:46.870226-05	64	Símbolos para Analizar el Árbol Genealógico	1	[{"added": {}}]	7	1
256	2017-09-20 01:47:00.568727-05	65	Tu Arbol Genealógico	1	[{"added": {}}]	7	1
257	2017-09-20 01:47:26.670231-05	66	Alejandro-Jodorowsky-Manual-Psicomagia Consejos pa_	1	[{"added": {}}]	7	1
258	2017-09-20 01:47:36.029232-05	67	El Héroe de las Mil Caras	1	[{"added": {}}]	7	1
259	2017-09-20 01:47:45.068733-05	68	Jodorowski_Alejandro-_Psicomagia	1	[{"added": {}}]	7	1
260	2017-10-17 04:24:38.220138-05	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
261	2017-10-17 04:25:49.542625-05	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
262	2017-10-17 04:27:15.220611-05	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
263	2017-10-17 05:46:49.01428-05	143	¿Qué es la psicomagia 1	3		9	1
264	2017-10-17 05:46:49.025281-05	144	¿Qué es la psicomagia 2	3		9	1
265	2017-10-17 05:46:49.026781-05	145	¿Qué es la psicomagia 3	3		9	1
266	2017-10-17 05:46:49.028281-05	33	Actitud y Ética del Tarologo 1	3		9	1
267	2017-10-17 05:46:49.02978-05	34	Actitud y Ética del Tarologo 2	3		9	1
268	2017-10-17 05:46:49.030781-05	35	Actitud y Ética del Tarologo 3	3		9	1
269	2017-10-17 05:46:49.031781-05	36	Actitud y Ética del Tarologo 4	3		9	1
270	2017-10-17 05:46:49.03328-05	37	Actitud y Ética del Tarologo 5	3		9	1
271	2017-10-17 05:46:49.034281-05	38	Actitud y Ética del Tarologo 6	3		9	1
272	2017-10-17 05:46:49.034781-05	39	Actitud y Ética del Tarologo 7	3		9	1
273	2017-10-17 05:46:49.036281-05	40	Analizando los elementos simbolicos	3		9	1
274	2017-10-17 05:46:49.037281-05	41	Analogías, Símbolos, Metáforas y Mitos en el Tarot	3		9	1
275	2017-10-17 05:46:49.038281-05	42	Antecedentes	3		9	1
276	2017-10-17 05:46:49.039281-05	43	Así es una ceremonia del té japonesa	3		9	1
277	2017-10-17 05:46:49.040781-05	44	Auto-Lectura con los Arcanos Mayores	3		9	1
278	2017-10-17 05:46:49.04178-05	128	Bases y Fundamentos de la Psicomagia 2	3		9	1
279	2017-10-17 05:46:49.04278-05	129	Bases y Fundamentos de la Psicomagia 3	3		9	1
280	2017-10-17 05:46:49.043781-05	130	Bases y Fundamentos de la Psicomagia 4	3		9	1
281	2017-10-17 05:46:49.045281-05	127	Bases y Fundamentos Psicomagia 5	3		9	1
282	2017-10-17 05:46:49.046281-05	131	Bases y fundamentos psicomagia 6	3		9	1
283	2017-10-17 05:46:49.047281-05	82	Conclusiones sobre los Estados de Conciencia	3		9	1
284	2017-10-17 05:46:49.04828-05	83	Conflicto de Fracaso 1	3		9	1
285	2017-10-17 05:46:49.049281-05	84	Conflicto de Fracaso 2	3		9	1
286	2017-10-17 05:46:49.05028-05	85	Conflicto de Fracaso 3	3		9	1
287	2017-10-17 05:46:49.051281-05	86	Conflicto de Fracaso 4	3		9	1
288	2017-10-17 05:46:49.05278-05	45	Consideraciones sobre cómo leer el Tarot	3		9	1
289	2017-10-17 05:46:49.053781-05	46	Consideraciones sobre la Lectura del Tarot 1	3		9	1
290	2017-10-17 05:46:49.055281-05	47	Consideraciones sobre la Lectura del Tarot 2	3		9	1
291	2017-10-17 05:46:49.056281-05	87	Diferentes Tipos de Ego 1	3		9	1
292	2017-10-17 05:46:49.05778-05	88	Diferentes Tipos de Ego 2	3		9	1
293	2017-10-17 05:46:49.058781-05	48	Diferentes Visiones en las Lecturas de Tarot	3		9	1
294	2017-10-17 05:46:49.059781-05	89	Ejemplo de Análisis de las Repeticiones en el Árbol 1	3		9	1
295	2017-10-17 05:46:49.06078-05	90	Ejemplo de Análisis de las Repeticiones en el Árbol 2	3		9	1
296	2017-10-17 05:46:49.06178-05	91	Ejemplo de Análisis de las Repeticiones en el Árbol 3	3		9	1
297	2017-10-17 05:46:49.062781-05	92	Ejemplo de Análisis de las Repeticiones en el Árbol 4	3		9	1
298	2017-10-17 05:46:49.06378-05	93	El Abuso en los Cuatro Centros	3		9	1
299	2017-10-17 05:46:49.06478-05	94	El Destino que el Yo Genealógico ha establecido en ti	3		9	1
300	2017-10-17 05:46:49.066281-05	95	El Impacto De Tu Nombre 1	3		9	1
301	2017-10-17 05:46:49.06728-05	96	El Impacto De Tu Nombre 2	3		9	1
302	2017-10-17 05:46:49.06828-05	97	El Impacto De Tu Nombre 3	3		9	1
303	2017-10-17 05:46:49.069281-05	98	El Mito en el Árbol	3		9	1
304	2017-10-17 05:46:49.07078-05	99	El Proceso de Transformación	3		9	1
305	2017-10-17 05:46:49.072281-05	18	El Tarot como Guía	3		9	1
306	2017-10-17 05:46:49.07328-05	100	Encuentro, Concepción, Gestación y Nacimiento 1	3		9	1
307	2017-10-17 05:46:49.07478-05	101	Encuentro, Concepción, Gestación y Nacimiento 2	3		9	1
308	2017-10-17 05:46:49.07578-05	102	Encuentro, Concepción, Gestación y Nacimiento 3	3		9	1
309	2017-10-17 05:46:49.076781-05	103	Estructura de la Metagenealogía 1	3		9	1
310	2017-10-17 05:46:49.07778-05	104	Estructura de la Metagenealogía 2	3		9	1
311	2017-10-17 05:46:49.078781-05	105	Estructura de la Metagenealogía 3	3		9	1
312	2017-10-17 05:46:49.07978-05	106	Formas de Repeticion en el Arbol 1	3		9	1
313	2017-10-17 05:46:49.081281-05	107	Formas de Repetición en el Árbol 2	3		9	1
314	2017-10-17 05:46:49.082281-05	108	Identificando Mitos y Arquetipos en tu Árbol Genealógico	3		9	1
315	2017-10-17 05:46:49.08378-05	132	Introducción a la psicomagia 3	3		9	1
316	2017-10-17 05:46:49.084781-05	133	Introducción a la psicomagia 4	3		9	1
317	2017-10-17 05:46:49.08628-05	134	Introducción a la psicomagia 5	3		9	1
318	2017-10-17 05:46:49.087781-05	109	Introducción a los Núcleos y Nudos	3		9	1
319	2017-10-17 05:46:49.088781-05	17	La Barca en la que Navegaremos	3		9	1
320	2017-10-17 05:46:49.090281-05	19	La Condicion Divina 1	3		9	1
321	2017-10-17 05:46:49.09128-05	20	La Condicion Divina 2	3		9	1
322	2017-10-17 05:46:49.092781-05	21	La Configuración del Yo Testigo	3		9	1
323	2017-10-17 05:46:49.093781-05	22	La Dimension Transpersonal	3		9	1
324	2017-10-17 05:46:49.094781-05	49	Las Neuronas Espejos	3		9	1
325	2017-10-17 05:46:49.096281-05	23	Las Resistencias del Cerebro Reptil	3		9	1
326	2017-10-17 05:46:49.097281-05	50	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	3		9	1
327	2017-10-17 05:46:49.098281-05	51	Lectura Causas de la Situación Presente	3		9	1
328	2017-10-17 05:46:49.099281-05	52	Lectura Comienzo - Desarrollo - Resultado	3		9	1
329	2017-10-17 05:46:49.100281-05	58	Lectura con 3 cartas Sumando los Arcanos	3		9	1
330	2017-10-17 05:46:49.10178-05	59	Lectura con Interpretación de la Carta de Abajo	3		9	1
331	2017-10-17 05:46:49.10278-05	53	Lectura Conflicto - Solución	3		9	1
332	2017-10-17 05:46:49.103781-05	54	Lectura Conflicto entre 2 Personas y su Solución	3		9	1
333	2017-10-17 05:46:49.105281-05	60	Lectura de 3 Cartas con Pregunta	3		9	1
334	2017-10-17 05:46:49.10628-05	61	Lectura del Héroe o la Heroína	3		9	1
335	2017-10-17 05:46:49.107281-05	62	Lectura del Tarot en una Frase	3		9	1
336	2017-10-17 05:46:49.10878-05	55	Lectura El Tarot hace las Preguntas	3		9	1
337	2017-10-17 05:46:49.109781-05	56	Lectura El Trío Familiar	3		9	1
338	2017-10-17 05:46:49.110781-05	69	Lectura Gestual	3		9	1
339	2017-10-17 05:46:49.11178-05	57	Lectura Narcisista	3		9	1
340	2017-10-17 05:46:49.11328-05	63	Lectura sin Pregunta	3		9	1
341	2017-10-17 05:46:49.114281-05	64	Lecturas con 3 cartas	3		9	1
342	2017-10-17 05:46:49.11528-05	65	Lecturas con Arcanos Menores 0	3		9	1
343	2017-10-17 05:46:49.116281-05	66	Lecturas con Arcanos Menores 1	3		9	1
344	2017-10-17 05:46:49.11728-05	67	Lecturas con Arcanos Menores 2	3		9	1
345	2017-10-17 05:46:49.118781-05	68	Lecturas de Tarot - Ejemplos y Prácticas	3		9	1
346	2017-10-17 05:46:49.120281-05	70	Lenguaje Visual del Tarot	3		9	1
347	2017-10-17 05:46:49.12178-05	71	Los Arquetipos en el Tarot	3		9	1
348	2017-10-17 05:46:49.123282-05	72	Los Palos en el Tarot	3		9	1
349	2017-10-17 05:46:49.124781-05	24	Mensaje a Estudiantes 1	3		9	1
350	2017-10-17 05:46:49.125781-05	25	Mensaje a Estudiantes 2	3		9	1
351	2017-10-17 05:46:49.12728-05	26	Mensaje a Estudiantes 3	3		9	1
352	2017-10-17 05:46:49.128781-05	27	Metamundo La Escuela	3		9	1
353	2017-10-17 05:46:49.129781-05	28	Metamundo y la Expansion de la Conciencia	3		9	1
354	2017-10-17 05:46:49.130781-05	73	Mi Historia Personal con el Tarot	3		9	1
355	2017-10-17 05:46:49.131781-05	29	Mi Historia personal con el Tarot 1	3		9	1
356	2017-10-17 05:46:49.13328-05	30	Mi Historia personal con el Tarot 2	3		9	1
357	2017-10-17 05:46:49.134281-05	31	Mi Historia personal con el Tarot 3	3		9	1
358	2017-10-17 05:46:49.135281-05	110	Nivel de Conciencia Adolescente Romántico	3		9	1
359	2017-10-17 05:46:49.13628-05	111	Nivel de Conciencia Adulto Altruista	3		9	1
360	2017-10-17 05:46:49.13828-05	112	Nivel de Conciencia Adulto Aprovechador	3		9	1
361	2017-10-17 05:46:49.139781-05	113	Nivel de Conciencia Animal	3		9	1
362	2017-10-17 05:46:49.141781-05	114	Nivel de Conciencia Cósmico	3		9	1
363	2017-10-17 05:46:59.79528-05	115	Nivel de Conciencia Divino	3		9	1
364	2017-10-17 05:46:59.811778-05	116	Nivel de Conciencia Niño Consumidor	3		9	1
365	2017-10-17 05:46:59.813278-05	117	Nivel de Conciencia Planetario	3		9	1
366	2017-10-17 05:46:59.814778-05	118	Nivel de Conciencia Solar	3		9	1
367	2017-10-17 05:46:59.816279-05	119	Niveles de Conciencia	3		9	1
368	2017-10-17 05:46:59.817278-05	120	Núcleo y Nudo Bisexual	3		9	1
369	2017-10-17 05:46:59.818779-05	121	Núcleo y Nudo Incestuoso	3		9	1
370	2017-10-17 05:46:59.820279-05	122	Núcleo y Nudo Narcisista 1	3		9	1
371	2017-10-17 05:46:59.821778-05	123	Núcleo y Nudo Narcisista 2	3		9	1
372	2017-10-17 05:46:59.822779-05	124	Núcleo y Nudo Social	3		9	1
373	2017-10-17 05:46:59.824278-05	74	Observando Analogías	3		9	1
374	2017-10-17 05:46:59.825779-05	75	Ordenando el Mandala del Tarot	3		9	1
375	2017-10-17 05:46:59.826778-05	135	Percepción y realidad	3		9	1
376	2017-10-17 05:46:59.82778-05	76	Preparación para la Lectura de Tarot 1	3		9	1
377	2017-10-17 05:46:59.829279-05	77	Preparación para la Lectura de Tarot 2	3		9	1
378	2017-10-17 05:46:59.830278-05	78	Preparación para la Lectura de Tarot 3	3		9	1
379	2017-10-17 05:46:59.831779-05	79	Recibiendo al Consultante 1	3		9	1
380	2017-10-17 05:46:59.832778-05	80	Recibiendo al Consultante 2	3		9	1
381	2017-10-17 05:46:59.83378-05	136	Simbolos 4	3		9	1
382	2017-10-17 05:46:59.835279-05	139	Símbolos Números y Colores 1	3		9	1
383	2017-10-17 05:46:59.836278-05	140	Símbolos Números y Colores 2	3		9	1
384	2017-10-17 05:46:59.837278-05	141	Símbolos Números y Colores 3-A	3		9	1
385	2017-10-17 05:46:59.838279-05	142	Símbolos Números y Colores 3b	3		9	1
386	2017-10-17 05:46:59.839778-05	137	Sincronicidad 1	3		9	1
387	2017-10-17 05:46:59.840779-05	138	Sincronicidad 2	3		9	1
388	2017-10-17 05:46:59.842279-05	81	Teoría y Estructura del Tarot	3		9	1
389	2017-10-17 05:46:59.843279-05	125	Tipos de Arbol - Árbol mamímero	3		9	1
390	2017-10-17 05:46:59.84478-05	126	Tipos de Arbol - emocional	3		9	1
391	2017-10-17 05:46:59.845779-05	32	Viviéndonos como Conciencia	3		9	1
392	2017-10-17 05:47:25.232274-05	146	El Tarot Como guía	1	[{"added": {}}]	9	1
393	2017-10-17 05:47:37.858272-05	147	La Barca en la que navegaremos	1	[{"added": {}}]	9	1
394	2017-10-17 05:47:47.25827-05	148	La Condición Divina	1	[{"added": {}}]	9	1
395	2017-10-17 05:48:00.435768-05	149	La Condición Divina 2	1	[{"added": {}}]	9	1
396	2017-10-17 05:48:10.543767-05	150	La Configuración del Yo Testigo	1	[{"added": {}}]	9	1
397	2017-10-17 05:48:25.166263-05	151	La Dimensión Transpersonal	1	[{"added": {}}]	9	1
398	2017-10-17 05:49:18.444754-05	152	Las Resistencias del Cerebro Reptil	1	[{"added": {}}]	9	1
399	2017-10-17 05:49:44.499751-05	153	Mensaje a Estudiantes 1	1	[{"added": {}}]	9	1
400	2017-10-17 05:50:09.534746-05	154	Mensaje a Estudiantes 2	1	[{"added": {}}]	9	1
401	2017-10-17 05:50:22.592244-05	155	Mensaje a Estudiantes 3	1	[{"added": {}}]	9	1
402	2017-10-17 05:50:33.152741-05	156	MetaMundo La Escuela	1	[{"added": {}}]	9	1
403	2017-10-17 05:50:46.316739-05	157	Metamundo y la Expansión de la Conciencia	1	[{"added": {}}]	9	1
404	2017-10-17 05:50:58.516237-05	158	Mi Historia personal con el Tarot 1	1	[{"added": {}}]	9	1
405	2017-10-17 05:51:15.872734-05	159	Mi Historia personal con el Tarot 2	1	[{"added": {}}]	9	1
406	2017-10-17 05:51:36.76323-05	160	Mi Historia personal con el Tarot 3	1	[{"added": {}}]	9	1
407	2017-10-17 05:51:51.732728-05	161	Viviéndonos como Conciencia	1	[{"added": {}}]	9	1
408	2017-10-17 05:52:06.346225-05	162	Conclusiones sobre los Estados de Conciencia	1	[{"added": {}}]	9	1
409	2017-10-17 05:52:17.918724-05	163	Conflicto de Fracaso 1	1	[{"added": {}}]	9	1
410	2017-10-17 05:52:35.08522-05	164	Conflicto de Fracaso 2	1	[{"added": {}}]	9	1
411	2017-10-17 05:52:54.559218-05	165	Conflicto de Fracaso 3	1	[{"added": {}}]	9	1
412	2017-10-17 05:53:10.892215-05	166	Conflicto de Fracaso 4	1	[{"added": {}}]	9	1
413	2017-10-17 05:53:30.185211-05	167	Diferentes Tipos de Ego 1	1	[{"added": {}}]	9	1
414	2017-10-17 05:53:42.363708-05	168	Diferentes Tipos de Ego 2	1	[{"added": {}}]	9	1
415	2017-10-17 05:53:59.617205-05	169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	1	[{"added": {}}]	9	1
416	2017-10-17 05:54:15.012203-05	170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	1	[{"added": {}}]	9	1
417	2017-10-17 05:54:34.632705-05	171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	1	[{"added": {}}]	9	1
418	2017-10-17 05:54:48.860698-05	172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	1	[{"added": {}}]	9	1
419	2017-10-17 05:55:04.099195-05	173	El Abuso en los Cuatro Centros	1	[{"added": {}}]	9	1
420	2017-10-17 05:55:19.114192-05	174	El Destino que el Yo Genealógico ha establecido en ti.	1	[{"added": {}}]	9	1
421	2017-10-17 05:55:28.74619-05	175	El Impacto de tu nombre 1	1	[{"added": {}}]	9	1
422	2017-10-17 05:55:39.777188-05	176	El Impacto de tu nombre 2	1	[{"added": {}}]	9	1
423	2017-10-17 05:55:52.174686-05	177	El Impacto de tu nombre 3	1	[{"added": {}}]	9	1
424	2017-10-17 05:56:03.412684-05	178	El Mito en el Árbol	1	[{"added": {}}]	9	1
425	2017-10-17 05:56:14.073683-05	179	El Proceso de Transformación	1	[{"added": {}}]	9	1
426	2017-10-17 05:56:26.30368-05	180	Encuentro, Concepción, Gestación y Nacimiento 1	1	[{"added": {}}]	9	1
427	2017-10-17 05:56:36.529178-05	181	Encuentro, Concepción, Gestación y Nacimiento 2	1	[{"added": {}}]	9	1
428	2017-10-17 05:56:49.116677-05	182	Encuentro, Concepción, Gestación y Nacimiento 3	1	[{"added": {}}]	9	1
429	2017-10-17 05:56:59.336175-05	183	Estructura de la Metagenealogia 1	1	[{"added": {}}]	9	1
430	2017-10-17 05:57:09.758173-05	184	Estructura de la Metagenealogia 2	1	[{"added": {}}]	9	1
431	2017-10-17 05:57:21.839671-05	185	Estructura de la Metagenealogia 3	1	[{"added": {}}]	9	1
432	2017-10-17 05:57:38.476668-05	186	Formas de Repetición en el Árbol 1	1	[{"added": {}}]	9	1
433	2017-10-17 05:57:48.673666-05	187	Formas de Repetición en el Árbol 2	1	[{"added": {}}]	9	1
434	2017-10-17 05:58:03.670663-05	188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	1	[{"added": {}}]	9	1
435	2017-10-17 05:58:13.154161-05	189	Introducción a los Núcleos y Nudos	1	[{"added": {}}]	9	1
436	2017-10-17 05:58:27.410159-05	190	Nivel de Conciencia Adolescente Romántico	1	[{"added": {}}]	9	1
437	2017-10-17 05:58:44.346656-05	191	Nivel de Conciencia Adulto Altruista	1	[{"added": {}}]	9	1
438	2017-10-17 05:58:55.687155-05	192	Nivel de Conciencia Adulto Aprovechador	1	[{"added": {}}]	9	1
439	2017-10-17 05:59:37.509147-05	193	Nivel de Conciencia Animal	1	[{"added": {}}]	9	1
440	2017-10-17 05:59:48.225645-05	194	Nivel de Conciencia Cósmico	1	[{"added": {}}]	9	1
441	2017-10-17 05:59:59.176643-05	195	Nivel de Conciencia Divino	1	[{"added": {}}]	9	1
442	2017-10-17 06:00:09.939642-05	196	Nivel de Conciencia Niño Consumidor	1	[{"added": {}}]	9	1
443	2017-10-17 06:00:23.383139-05	197	Nivel de Conciencia Planetario	1	[{"added": {}}]	9	1
444	2017-10-17 06:00:32.951637-05	198	Nivel de Conciencia Solar	1	[{"added": {}}]	9	1
445	2017-10-17 06:00:43.077136-05	199	Niveles de Conciencia	1	[{"added": {}}]	9	1
446	2017-10-17 06:00:54.619134-05	200	Núcleo y Nudo Bisexual	1	[{"added": {}}]	9	1
447	2017-10-17 06:01:07.110631-05	201	Núcleo y Nudo Incestuoso	1	[{"added": {}}]	9	1
448	2017-10-17 06:01:16.42363-05	202	Núcleo y Nudo Narcisista 1	1	[{"added": {}}]	9	1
449	2017-10-17 06:01:27.132627-05	203	Núcleo y Nudo Narcisista 2	1	[{"added": {}}]	9	1
450	2017-10-17 06:01:40.821626-05	204	Núcleo y Nudo Social	1	[{"added": {}}]	9	1
451	2017-10-17 06:01:52.102623-05	205	Tipos de Árbol - Árbol Mamífero	1	[{"added": {}}]	9	1
452	2017-10-17 06:02:00.407623-05	206	Tipos de Árbol - Emocional	1	[{"added": {}}]	9	1
453	2017-10-17 06:02:59.677612-05	162	Conclusiones sobre los Estados de Conciencia	2	[{"changed": {"fields": ["category"]}}]	9	1
454	2017-10-17 06:03:14.891609-05	163	Conflicto de Fracaso 1	2	[{"changed": {"fields": ["category"]}}]	9	1
455	2017-10-17 06:03:20.101608-05	164	Conflicto de Fracaso 2	2	[{"changed": {"fields": ["category"]}}]	9	1
456	2017-10-17 06:03:25.012107-05	165	Conflicto de Fracaso 3	2	[{"changed": {"fields": ["category"]}}]	9	1
457	2017-10-17 06:03:31.244606-05	166	Conflicto de Fracaso 4	2	[{"changed": {"fields": ["category"]}}]	9	1
458	2017-10-17 06:03:36.580107-05	167	Diferentes Tipos de Ego 1	2	[{"changed": {"fields": ["category"]}}]	9	1
459	2017-10-17 06:03:51.309103-05	168	Diferentes Tipos de Ego 2	2	[{"changed": {"fields": ["category"]}}]	9	1
460	2017-10-17 06:03:58.700102-05	169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	2	[{"changed": {"fields": ["category"]}}]	9	1
461	2017-10-17 06:04:04.8181-05	170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	2	[{"changed": {"fields": ["category"]}}]	9	1
462	2017-10-17 06:04:13.698099-05	171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	2	[{"changed": {"fields": ["category"]}}]	9	1
463	2017-10-17 06:04:47.564593-05	172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	2	[{"changed": {"fields": ["category"]}}]	9	1
464	2017-10-17 06:04:59.413591-05	173	El Abuso en los Cuatro Centros	2	[{"changed": {"fields": ["category"]}}]	9	1
465	2017-10-17 06:05:09.57359-05	174	El Destino que el Yo Genealógico ha establecido en ti.	2	[{"changed": {"fields": ["category"]}}]	9	1
466	2017-10-17 06:05:16.112088-05	175	El Impacto de tu nombre 1	2	[{"changed": {"fields": ["category"]}}]	9	1
467	2017-10-17 06:05:21.612587-05	176	El Impacto de tu nombre 2	2	[{"changed": {"fields": ["category"]}}]	9	1
468	2017-10-17 06:05:27.959086-05	177	El Impacto de tu nombre 3	2	[{"changed": {"fields": ["category"]}}]	9	1
469	2017-10-17 06:05:35.586585-05	178	El Mito en el Árbol	2	[{"changed": {"fields": ["category"]}}]	9	1
470	2017-10-17 06:05:41.797585-05	180	Encuentro, Concepción, Gestación y Nacimiento 1	2	[{"changed": {"fields": ["category"]}}]	9	1
471	2017-10-17 06:05:47.905582-05	179	El Proceso de Transformación	2	[{"changed": {"fields": ["category"]}}]	9	1
472	2017-10-17 06:05:54.156582-05	181	Encuentro, Concepción, Gestación y Nacimiento 2	2	[{"changed": {"fields": ["category"]}}]	9	1
473	2017-10-17 06:06:01.55108-05	182	Encuentro, Concepción, Gestación y Nacimiento 3	2	[{"changed": {"fields": ["category"]}}]	9	1
474	2017-10-17 06:06:10.885579-05	183	Estructura de la Metagenealogia 1	2	[{"changed": {"fields": ["category"]}}]	9	1
475	2017-10-17 06:06:17.967078-05	184	Estructura de la Metagenealogia 2	2	[{"changed": {"fields": ["category"]}}]	9	1
476	2017-10-17 06:06:25.126076-05	185	Estructura de la Metagenealogia 3	2	[{"changed": {"fields": ["category"]}}]	9	1
477	2017-10-17 06:06:31.496575-05	186	Formas de Repetición en el Árbol 1	2	[{"changed": {"fields": ["category"]}}]	9	1
478	2017-10-17 06:06:39.031573-05	187	Formas de Repetición en el Árbol 2	2	[{"changed": {"fields": ["category"]}}]	9	1
479	2017-10-17 06:06:45.987572-05	188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	2	[{"changed": {"fields": ["category"]}}]	9	1
480	2017-10-17 06:06:52.355071-05	190	Nivel de Conciencia Adolescente Romántico	2	[{"changed": {"fields": ["category"]}}]	9	1
481	2017-10-17 06:06:59.373571-05	189	Introducción a los Núcleos y Nudos	2	[{"changed": {"fields": ["category"]}}]	9	1
482	2017-10-17 06:07:08.111069-05	191	Nivel de Conciencia Adulto Altruista	2	[{"changed": {"fields": ["category"]}}]	9	1
483	2017-10-17 06:07:23.122567-05	192	Nivel de Conciencia Adulto Aprovechador	2	[{"changed": {"fields": ["category"]}}]	9	1
484	2017-10-17 06:07:33.447064-05	193	Nivel de Conciencia Animal	2	[{"changed": {"fields": ["category"]}}]	9	1
485	2017-10-17 06:07:40.478563-05	194	Nivel de Conciencia Cósmico	2	[{"changed": {"fields": ["category"]}}]	9	1
486	2017-10-17 06:07:53.904561-05	195	Nivel de Conciencia Divino	2	[{"changed": {"fields": ["category"]}}]	9	1
487	2017-10-17 06:08:02.45556-05	196	Nivel de Conciencia Niño Consumidor	2	[{"changed": {"fields": ["category"]}}]	9	1
488	2017-10-17 06:08:12.697558-05	197	Nivel de Conciencia Planetario	2	[{"changed": {"fields": ["category"]}}]	9	1
489	2017-10-17 06:08:19.418556-05	198	Nivel de Conciencia Solar	2	[{"changed": {"fields": ["category"]}}]	9	1
490	2017-10-17 06:08:29.034555-05	199	Niveles de Conciencia	2	[{"changed": {"fields": ["category"]}}]	9	1
491	2017-10-17 06:08:35.436557-05	200	Núcleo y Nudo Bisexual	2	[{"changed": {"fields": ["category"]}}]	9	1
492	2017-10-17 06:08:41.891553-05	201	Núcleo y Nudo Incestuoso	2	[{"changed": {"fields": ["category"]}}]	9	1
493	2017-10-17 06:08:50.608051-05	202	Núcleo y Nudo Narcisista 1	2	[{"changed": {"fields": ["category"]}}]	9	1
494	2017-10-17 06:08:56.389049-05	203	Núcleo y Nudo Narcisista 2	2	[{"changed": {"fields": ["category"]}}]	9	1
495	2017-10-17 06:09:03.176549-05	204	Núcleo y Nudo Social	2	[{"changed": {"fields": ["category"]}}]	9	1
496	2017-10-17 06:09:09.182548-05	205	Tipos de Árbol - Árbol Mamífero	2	[{"changed": {"fields": ["category"]}}]	9	1
497	2017-10-17 06:09:16.794547-05	206	Tipos de Árbol - Emocional	2	[{"changed": {"fields": ["category"]}}]	9	1
498	2017-10-17 06:09:46.47054-05	207	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	9	1
499	2017-10-17 06:10:03.456038-05	208	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	9	1
500	2017-10-17 06:10:18.250535-05	209	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	9	1
501	2017-10-17 06:10:30.446033-05	210	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	9	1
502	2017-10-17 06:10:39.503032-05	211	Actitud y Ética del Tarologo 5	1	[{"added": {}}]	9	1
503	2017-10-17 06:10:51.73753-05	212	Actitud y Ética del Tarologo 6	1	[{"added": {}}]	9	1
504	2017-10-17 06:11:00.024528-05	213	Actitud y Ética del Tarologo 7	1	[{"added": {}}]	9	1
505	2017-10-17 06:11:11.808526-05	214	Analizando los Elementos Simbólicos	1	[{"added": {}}]	9	1
506	2017-10-17 06:11:21.672525-05	215	Analogías, Símbolos, Metáforas y Mitos en el Tarot	1	[{"added": {}}]	9	1
507	2017-10-17 06:11:41.834521-05	216	Antecedentes	1	[{"added": {}}]	9	1
508	2017-10-17 06:11:51.02002-05	217	Así es una ceremonia del te japonesa	1	[{"added": {}}]	9	1
509	2017-10-17 06:12:00.122017-05	218	Auto-Lectura con los Arcanos Mayores	1	[{"added": {}}]	9	1
510	2017-10-17 06:12:21.508515-05	219	Consideraciones sobre como leer el Tarot	1	[{"added": {}}]	9	1
511	2017-10-17 06:12:30.760013-05	220	Consideraciones sobre la Lectura del Tarot 1	1	[{"added": {}}]	9	1
512	2017-10-17 06:12:40.635513-05	221	Consideraciones sobre la Lectura del Tarot 2	1	[{"added": {}}]	9	1
513	2017-10-17 06:12:50.672509-05	222	Diferentes Visiones en las Lecturas de Tarot	1	[{"added": {}}]	9	1
514	2017-10-17 06:13:03.177506-05	223	Las Neuronas Espejo	1	[{"added": {}}]	9	1
515	2017-10-17 06:13:13.617505-05	224	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	1	[{"added": {}}]	9	1
516	2017-10-17 06:13:55.797998-05	225	Lectura Causas de la Situación Presente	1	[{"added": {}}]	9	1
517	2017-10-17 06:14:05.453997-05	226	Lectura Comienzo - Desarrollo - Resultado	1	[{"added": {}}]	9	1
518	2017-10-17 06:14:21.867993-05	227	Lectura Conflicto - Solución	1	[{"added": {}}]	9	1
519	2017-10-17 06:14:44.494493-05	228	Lectura Conflicto entre 2 Personas y su Solución	1	[{"added": {}}]	9	1
520	2017-10-17 06:14:53.628988-05	229	Lectura el Tarot hace las Preguntas	1	[{"added": {}}]	9	1
521	2017-10-17 06:15:02.714986-05	230	Lectura el Trio Familiar	1	[{"added": {}}]	9	1
522	2017-10-17 06:15:13.046984-05	231	Lectura Narcisista	1	[{"added": {}}]	9	1
523	2017-10-17 06:15:21.819982-05	232	Lectura con 3 cartas Sumando los Arcanos	1	[{"added": {}}]	9	1
524	2017-10-17 06:15:33.844981-05	233	Lectura con Interpretación de la Carta de Abajo	1	[{"added": {}}]	9	1
525	2017-10-17 06:15:46.630978-05	234	Lectura de 3 Cartas con Pregunta	1	[{"added": {}}]	9	1
526	2017-10-17 06:16:01.470976-05	235	Lectura del Héroes o la Heroína	1	[{"added": {}}]	9	1
527	2017-10-17 06:16:10.956974-05	236	Lectura del Tarot en una Frase	1	[{"added": {}}]	9	1
528	2017-10-17 06:16:21.232473-05	237	Lectura sin Pregunta	1	[{"added": {}}]	9	1
529	2017-10-17 06:16:28.785971-05	238	Lecturas con 3 Cartas	1	[{"added": {}}]	9	1
530	2017-10-17 06:16:36.21147-05	239	Lecturas con Arcanos Menores 0	1	[{"added": {}}]	9	1
531	2017-10-17 06:16:45.038968-05	240	Lecturas con Arcanos Menores 1	1	[{"added": {}}]	9	1
532	2017-10-17 06:16:56.858967-05	241	Lecturas con Arcanos Menores 2	1	[{"added": {}}]	9	1
533	2017-10-17 06:17:29.29496-05	242	Lecturas de Tarot - Ejemplos y Practicas	1	[{"added": {}}]	9	1
534	2017-10-17 06:17:36.552959-05	243	Lenguaje Gestual	1	[{"added": {}}]	9	1
535	2017-10-17 06:17:44.043958-05	244	Lenguaje Visual del Tarot	1	[{"added": {}}]	9	1
536	2017-10-17 06:17:53.851457-05	245	Los Arquetipos en el Tarot	1	[{"added": {}}]	9	1
537	2017-10-17 06:18:02.017456-05	246	Los Palos en el Tarot	1	[{"added": {}}]	9	1
538	2017-10-17 06:18:09.725954-05	247	Mi Historia Personal con el Tarot	1	[{"added": {}}]	9	1
539	2017-10-17 06:18:18.438453-05	248	Observando Analogías	1	[{"added": {}}]	9	1
540	2017-10-17 06:18:27.293951-05	249	Observando el Mándala del Tarot	1	[{"added": {}}]	9	1
541	2017-10-17 06:18:41.501448-05	250	Preparación para la Lectura del Tarot 1	1	[{"added": {}}]	9	1
542	2017-10-17 06:18:53.264447-05	251	Preparación para la Lectura del Tarot 2	1	[{"added": {}}]	9	1
543	2017-10-17 06:19:01.201445-05	252	Preparación para la Lectura del Tarot 3	1	[{"added": {}}]	9	1
544	2017-10-17 06:19:09.534443-05	253	Recibiendo al Consultante 1	1	[{"added": {}}]	9	1
545	2017-10-17 06:19:17.854942-05	254	Recibiendo al Consultante 2	1	[{"added": {}}]	9	1
546	2017-10-17 06:19:31.61494-05	255	Teoría y Estructura del Tarot	1	[{"added": {}}]	9	1
547	2017-10-17 06:19:50.836436-05	256	Bases y Fundamentos de la Psicomagia 1	1	[{"added": {}}]	9	1
548	2017-10-17 06:20:11.255933-05	257	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	9	1
549	2017-10-17 06:20:23.491431-05	258	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	9	1
550	2017-10-17 06:20:32.870429-05	259	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	9	1
551	2017-10-17 06:20:48.030926-05	260	Bases y Fundamentos de la Psicomagia 5	1	[{"added": {}}]	9	1
552	2017-10-17 06:21:07.970923-05	261	Bases y Fundamentos de la Psicomagia 6	1	[{"added": {}}]	9	1
553	2017-10-17 06:21:16.338921-05	262	Introducción a la Psicomagia 3	1	[{"added": {}}]	9	1
554	2017-10-17 06:21:24.37292-05	263	Introducción a la Psicomagia 4	1	[{"added": {}}]	9	1
555	2017-10-17 06:21:32.335418-05	264	Introducción a la Psicomagia 5	1	[{"added": {}}]	9	1
556	2017-10-17 06:21:45.117416-05	265	Percepción y Realidad	1	[{"added": {}}]	9	1
557	2017-10-17 06:22:03.194413-05	266	Símbolos	1	[{"added": {}}]	9	1
558	2017-10-17 06:22:16.124911-05	267	Sincronicidad 1	1	[{"added": {}}]	9	1
559	2017-10-17 06:22:29.588908-05	268	Sincronicidad 2	1	[{"added": {}}]	9	1
560	2017-10-17 06:22:39.996406-05	269	Símbolos, Números y Colores 1	1	[{"added": {}}]	9	1
561	2017-10-17 06:22:52.089406-05	270	Símbolos, Números y Colores 2	1	[{"added": {}}]	9	1
562	2017-10-17 06:23:05.598903-05	271	Símbolos, Números y Colores 3A	1	[{"added": {}}]	9	1
563	2017-10-17 06:23:16.1314-05	272	Símbolos, Números y Colores 3B	1	[{"added": {}}]	9	1
564	2017-10-17 06:23:24.379399-05	273	¿Que es la Psicomagia? 1	1	[{"added": {}}]	9	1
565	2017-10-17 06:23:36.363397-05	274	¿Que es la Psicomagia? 2	1	[{"added": {}}]	9	1
566	2017-10-17 06:23:48.780394-05	275	¿Que es la Psicomagia? 3	1	[{"added": {}}]	9	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 566, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	catalog	docs
8	catalog	category
9	catalog	videos
10	catalog	subcategory
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-08-30 03:20:56.302353-05
2	auth	0001_initial	2017-08-30 03:20:56.529854-05
3	admin	0001_initial	2017-08-30 03:20:56.587353-05
4	admin	0002_logentry_remove_auto_add	2017-08-30 03:20:56.601354-05
5	contenttypes	0002_remove_content_type_name	2017-08-30 03:20:56.643359-05
6	auth	0002_alter_permission_name_max_length	2017-08-30 03:20:56.651854-05
7	auth	0003_alter_user_email_max_length	2017-08-30 03:20:56.666853-05
8	auth	0004_alter_user_username_opts	2017-08-30 03:20:56.679853-05
9	auth	0005_alter_user_last_login_null	2017-08-30 03:20:56.693354-05
10	auth	0006_require_contenttypes_0002	2017-08-30 03:20:56.696353-05
11	auth	0007_alter_validators_add_error_messages	2017-08-30 03:20:56.70986-05
12	auth	0008_alter_user_username_max_length	2017-08-30 03:20:56.735854-05
13	sessions	0001_initial	2017-08-30 03:20:56.774353-05
14	catalog	0001_initial	2017-08-30 04:02:34.731627-05
15	catalog	0002_docs_kind	2017-09-04 03:07:03.915176-05
16	catalog	0003_auto_20170904_0309	2017-09-04 03:09:48.878193-05
17	catalog	0004_category_title	2017-09-09 04:56:13.839955-05
18	catalog	0005_category_image	2017-09-09 05:16:14.415212-05
19	catalog	0006_remove_category_image	2017-09-18 08:46:01.596211-05
20	catalog	0007_videos_image	2017-09-28 08:39:02.813244-05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
410e9g1dwubtdswrmpiaqr25kv8k1obg	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-09-13 04:02:16.807125-05
gt2qbnxv90wd3esayhwi43od6maplk3k	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-09-27 23:36:50.232612-05
b72n3rdfup4gbm9hlilo64d821imhzip	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-02 10:02:03.064919-05
bqtxp7x858nbbzzydfu550jqgxoimq7w	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-19 03:00:31.923654-05
9a3xo8w733slxssouhyf8t3r2jgvbl3t	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-24 03:20:32.179564-05
v3o79i3sehfgvn3nw38nti2mpah6zlue	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-31 03:07:24.641317-06
\.


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_category catalog_category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_category
    ADD CONSTRAINT catalog_category_name_key UNIQUE (name);


--
-- Name: catalog_category catalog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_category
    ADD CONSTRAINT catalog_category_pkey PRIMARY KEY (id);


--
-- Name: catalog_docs catalog_docs_link_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_link_key UNIQUE (link);


--
-- Name: catalog_docs catalog_docs_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_name_key UNIQUE (name);


--
-- Name: catalog_docs catalog_docs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_pkey PRIMARY KEY (id);


--
-- Name: catalog_subcategory catalog_subcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_subcategory
    ADD CONSTRAINT catalog_subcategory_name_key UNIQUE (name);


--
-- Name: catalog_subcategory catalog_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_subcategory
    ADD CONSTRAINT catalog_subcategory_pkey PRIMARY KEY (id);


--
-- Name: catalog_videos catalog_videos_link_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_link_key UNIQUE (link);


--
-- Name: catalog_videos catalog_videos_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_name_key UNIQUE (name);


--
-- Name: catalog_videos catalog_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_category_name_fdc3466c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_category_name_fdc3466c_like ON catalog_category USING btree (name varchar_pattern_ops);


--
-- Name: catalog_docs_category_id_6c17bcec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_docs_category_id_6c17bcec ON catalog_docs USING btree (category_id);


--
-- Name: catalog_docs_link_3404100a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_docs_link_3404100a_like ON catalog_docs USING btree (link varchar_pattern_ops);


--
-- Name: catalog_docs_name_7251db9f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_docs_name_7251db9f_like ON catalog_docs USING btree (name varchar_pattern_ops);


--
-- Name: catalog_docs_subcategory_id_afc29102; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_docs_subcategory_id_afc29102 ON catalog_docs USING btree (subcategory_id);


--
-- Name: catalog_subcategory_name_dabb2fb4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_subcategory_name_dabb2fb4_like ON catalog_subcategory USING btree (name varchar_pattern_ops);


--
-- Name: catalog_videos_category_id_6689732a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_videos_category_id_6689732a ON catalog_videos USING btree (category_id);


--
-- Name: catalog_videos_link_014f3ef2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_videos_link_014f3ef2_like ON catalog_videos USING btree (link varchar_pattern_ops);


--
-- Name: catalog_videos_name_013fc0fd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_videos_name_013fc0fd_like ON catalog_videos USING btree (name varchar_pattern_ops);


--
-- Name: catalog_videos_subcategory_id_eeb3078b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX catalog_videos_subcategory_id_eeb3078b ON catalog_videos USING btree (subcategory_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_docs catalog_docs_category_id_6c17bcec_fk_catalog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_category_id_6c17bcec_fk_catalog_category_id FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_docs catalog_docs_subcategory_id_afc29102_fk_catalog_subcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_subcategory_id_afc29102_fk_catalog_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES catalog_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_videos catalog_videos_category_id_6689732a_fk_catalog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_category_id_6689732a_fk_catalog_category_id FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_videos catalog_videos_subcategory_id_eeb3078b_fk_catalog_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_subcategory_id_eeb3078b_fk_catalog_s FOREIGN KEY (subcategory_id) REFERENCES catalog_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

