--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.8
-- Dumped by pg_dump version 9.5.8

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO digimundo;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO digimundo;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO digimundo;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO digimundo;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO digimundo;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO digimundo;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: digimundo
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


ALTER TABLE auth_user OWNER TO digimundo;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO digimundo;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO digimundo;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO digimundo;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO digimundo;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO digimundo;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: catalog_category; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE catalog_category (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    title character varying(30) NOT NULL
);


ALTER TABLE catalog_category OWNER TO digimundo;

--
-- Name: catalog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE catalog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_category_id_seq OWNER TO digimundo;

--
-- Name: catalog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE catalog_category_id_seq OWNED BY catalog_category.id;


--
-- Name: catalog_docs; Type: TABLE; Schema: public; Owner: digimundo
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


ALTER TABLE catalog_docs OWNER TO digimundo;

--
-- Name: catalog_docs_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE catalog_docs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_docs_id_seq OWNER TO digimundo;

--
-- Name: catalog_docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE catalog_docs_id_seq OWNED BY catalog_docs.id;


--
-- Name: catalog_subcategory; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE catalog_subcategory (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE catalog_subcategory OWNER TO digimundo;

--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE catalog_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_subcategory_id_seq OWNER TO digimundo;

--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE catalog_subcategory_id_seq OWNED BY catalog_subcategory.id;


--
-- Name: catalog_videos; Type: TABLE; Schema: public; Owner: digimundo
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


ALTER TABLE catalog_videos OWNER TO digimundo;

--
-- Name: catalog_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE catalog_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE catalog_videos_id_seq OWNER TO digimundo;

--
-- Name: catalog_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE catalog_videos_id_seq OWNED BY catalog_videos.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: digimundo
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


ALTER TABLE django_admin_log OWNER TO digimundo;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO digimundo;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO digimundo;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO digimundo;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO digimundo;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO digimundo;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO digimundo;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_category ALTER COLUMN id SET DEFAULT nextval('catalog_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_docs ALTER COLUMN id SET DEFAULT nextval('catalog_docs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_subcategory ALTER COLUMN id SET DEFAULT nextval('catalog_subcategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_videos ALTER COLUMN id SET DEFAULT nextval('catalog_videos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add user	2	add_user
5	Can change user	2	change_user
6	Can delete user	2	delete_user
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add permission	4	add_permission
11	Can change permission	4	change_permission
12	Can delete permission	4	delete_permission
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add Video	7	add_videos
20	Can change Video	7	change_videos
21	Can delete Video	7	delete_videos
22	Can add Doc	8	add_docs
23	Can change Doc	8	change_docs
24	Can delete Doc	8	delete_docs
25	Can add SubCategoría	9	add_subcategory
26	Can change SubCategoría	9	change_subcategory
27	Can delete SubCategoría	9	delete_subcategory
28	Can add Categoría	10	add_category
29	Can change Categoría	10	change_category
30	Can delete Categoría	10	delete_category
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('auth_permission_id_seq', 30, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$Y7KQu2YZluc3$VyMtZWliPj4U6VQ4qKViPdny030+Sqfvo5ZR1IcuRas=	2017-10-17 08:51:12.685052+00	t	Rich			drdr_2@hotmail.com	t	t	2017-09-09 11:15:49.711969+00
3	pbkdf2_sha256$36000$qQz6jFu98S42$t6uLPcNpjFpxcKLWVGJyO3nDvt95yFkcbtIKcDv4OT4=	2017-10-18 08:55:02.040824+00	f	TescaCEO				f	t	2017-10-18 08:47:03.354374+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('auth_user_id_seq', 3, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: catalog_category; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY catalog_category (id, name, title) FROM stdin;
1	Bloque-0	Introduccion
2	Bloque-1	Tarot
3	Bloque-2	Metagenealogia
4	Bloque-3	Psicochamanismo
\.


--
-- Name: catalog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('catalog_category_id_seq', 4, true);


--
-- Data for Name: catalog_docs; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY catalog_docs (id, name, link, created_at, category_id, subcategory_id, kind) FROM stdin;
23	XXI Le Monde BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XXI+Le+Monde+BN.jpg	2017-09-28 18:37:37.337534+00	2	1	IMG
24	XX Le Iugement BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XX+Le+Iugement+BN.jpg	2017-09-28 18:38:03.308958+00	2	1	IMG
25	XVIIII Le Soleil BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVIIII+Le+Soleil+BN.jpg	2017-09-28 18:38:20.314657+00	2	1	IMG
26	XVIII La Lune BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVIII+La+Lune+BN.jpg	2017-09-28 18:38:40.134574+00	2	1	IMG
27	XVII LEtoile BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVII+LEtoile+BN.jpg	2017-09-28 18:39:11.872164+00	2	1	IMG
28	XVI La Maison Dieu BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVI+La+Maison+Dieu+BN.jpg	2017-09-28 18:39:23.814486+00	2	1	IMG
29	XV Le Diable BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XV+Le+Diable+BN.jpg	2017-09-28 18:40:29.072972+00	2	1	IMG
30	XIIII Temperance BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XIIII+Temperance+BN+2.jpg	2017-09-28 18:40:51.522807+00	2	1	IMG
31	XIII Arcano sin nombre BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XIII+Arcano+sin+nombre+BN.jpg	2017-09-28 18:41:04.091689+00	2	1	IMG
32	XII Le Pendu BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XII+Le+Pendu+BN.jpg	2017-09-28 18:41:18.319122+00	2	1	IMG
33	XI La Force BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XI+La+Force+BN.jpg	2017-09-28 18:41:42.61656+00	2	1	IMG
34	X La Roue de Fortune BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/X+La+Roue+de+Fortune+BN.jpg	2017-09-28 18:41:54.225218+00	2	1	IMG
35	VIIII LHermite BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VIIII+LHermite+BN.jpg	2017-09-28 18:42:09.503514+00	2	1	IMG
36	VIII La Justice BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VIII+La+Justice+BN.jpg	2017-09-28 18:42:21.828154+00	2	1	IMG
37	VII Le Chariot BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VII+Le+Chariot+BN.jpg	2017-09-28 18:42:38.573499+00	2	1	IMG
38	V Le Pape BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/V+Le+Pape+BN.jpg	2017-09-28 18:42:51.726551+00	2	1	IMG
39	Tu Arbol Genealógico	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Tu+Arbol+Geneal%C3%B3gico.docx	2017-09-28 18:43:06.972389+00	2	1	PDF
40	Tarea- Ejercicios de Tarot – Semana 5	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+5.docx	2017-09-28 18:43:23.187461+00	2	1	WRD
41	Tarea- Ejercicios de Tarot – Semana 4	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+4.docx	2017-09-28 18:43:48.034033+00	2	1	WRD
42	Tarea- Ejercicios de Tarot – Semana 3	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+3.docx	2017-09-28 18:44:04.316981+00	2	1	WRD
43	Tarea- Ejercicios de Tarot – Semana 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+2.docx	2017-09-28 18:44:16.558706+00	2	1	WRD
44	Tarea- Ejercicios de Tarot – Semana 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+1.docx	2017-09-28 18:44:30.921952+00	2	1	WRD
45	Símbolos para Analizar el Árbol Genealógico	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/S%C3%ADmbolos+para+Analizar+el+%C3%81rbol+Geneal%C3%B3gico.pdf	2017-09-28 18:44:50.152055+00	3	1	PDF
46	Referencia Rápida - Tipo de Repetición Genealógica	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+R%C3%A1pida+-+Tipo+de+Repetici%C3%B3n+Geneal%C3%B3gica.pdf	2017-09-28 18:45:10.711674+00	3	1	PDF
47	Referencia Rápida- Niveles de Conciencia	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+R%C3%A1pida-+Niveles+de+Conciencia.pdf	2017-09-28 18:45:45.304564+00	3	1	PDF
48	Referencia Rapida- La Finalidad en el Arbol Genealógico- Trampa y Tesoro	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+Rapida-+La+Finalidad+en+el+Arbol+Geneal%C3%B3gico-+Trampa+y+Tesoro.pdf	2017-09-28 18:46:08.226301+00	3	1	PDF
49	Referencia Rápida- Arcano XXI - Le Monde - El Mundo	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XXI+-+Le+Monde+-+El+Mundo.pdf	2017-09-28 18:46:25.493844+00	2	1	PDF
50	Referencia Rápida- Arcano XX - Le Iugement - El Juicio	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XX+-+Le+Iugement+-+El+Juicio.pdf	2017-09-28 18:46:39.741081+00	2	1	PDF
51	Referencia Rápida- Arcano XVIIII - Le Soleil - El Sol	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVIIII+-+Le+Soleil+-+El+Sol.pdf	2017-09-28 18:46:56.694946+00	2	1	PDF
52	Referencia Rápida- Arcano XVIII - La Lune - La Luna	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVIII+-+La+Lune+-+La+Luna.pdf	2017-09-28 18:47:07.650994+00	2	1	PDF
53	Referencia Rápida- Arcano XVII - L Etoille - La Estrella	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVII+-+L+Etoille+-+La+Estrella.pdf	2017-09-28 18:47:22.658253+00	2	1	PDF
54	Referencia Rápida- Arcano XVI - La Maison Dieu - La Torre	Referencia+R%C3%A1pida-+Arcano+XVI+-+La+Maison+Dieu+-+La+Torre.pdf \t\t\thttp://ddstbjmdfz6e2.cloudfront.net/law/02/docs/	2017-09-28 18:47:40.324126+00	2	1	PDF
55	Referencia Rápida- Arcano XIIII - Temperance - La Templanza	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIIII+-+Temperance+-+La+Templanza.pdf	2017-09-28 18:47:54.05303+00	2	1	PDF
56	Referencia Rápida- Arcano XIIII - Le Diable - El Diablo	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIIII+-+Le+Diable+-+El+Diablo.pdf	2017-09-28 18:48:06.368097+00	2	1	PDF
57	Referencia Rápida- Arcano XIII - Arcano sin Nombre	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIII+-+Arcano+sin+Nombre.pdf	2017-09-28 18:48:19.651263+00	2	1	PDF
58	Referencia Rápida- Arcano XII - Le Pendu - El Colgado	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XII+-+Le+Pendu+-+El+Colgado.pdf	2017-09-28 18:48:33.792757+00	2	1	PDF
59	Referencia Rápida- Arcano XI - La Force - La Fuerza	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XI+-+La+Force+-+La+Fuerza.pdf	2017-09-28 18:48:49.650394+00	2	1	PDF
60	Referencia Rápida- Arcano X	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+X.pdf	2017-09-28 18:49:06.18173+00	2	1	PDF
61	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VIIII+-+LHermite+-+El+Ermita%C3%B1o.pdf	2017-09-28 18:49:21.199401+00	2	1	PDF
62	Referencia Rápida- Arcano VIII - La Justice- La Justicia	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VIII+-+La+Justice-+La+Justicia.pdf	2017-09-28 18:49:35.191805+00	2	1	PDF
63	Referencia Rápida- Arcano VII - Le Chariot - El Carro	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VII+-+Le+Chariot+-+El+Carro.pdf	2017-09-28 18:49:48.984906+00	2	1	PDF
64	Referencia Rápida- Arcano VI - LAmoureux - El Enamorado	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VI+-+LAmoureux+-+El+Enamorado.pdf	2017-09-28 18:50:04.940175+00	2	1	PDF
65	Referencia Rápida- Arcano V - Le Pape - El Papa	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+V+-+Le+Pape+-+El+Papa.pdf	2017-09-28 18:50:17.522824+00	2	1	PDF
66	Referencia Rápida- Arcano IIII - LEmpereur - El Emperador	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+IIII+-+LEmpereur+-+El+Emperador.pdf	2017-09-28 18:50:28.851454+00	2	1	PDF
67	Referencia Rápida- Arcano III - Limperatrice - La Emperatriz	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+III+-+Limperatrice+-+La+Emperatriz.pdf	2017-09-28 18:50:40.01593+00	2	1	PDF
68	Referencia Rápida- Arcano II - La Papesse - La Papisa	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+II+-+La+Papesse+-+La+Papisa.pdf	2017-09-28 18:50:52.720301+00	2	1	PDF
69	Referencia Rápida- Arcano I - Le Bateleur	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+I+-+Le+Bateleur.pdf	2017-09-28 18:51:04.59274+00	2	1	PDF
70	Referencia Rápida- Arcano 0 - Le Mat	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+0+-+Le+Mat.pdf	2017-09-28 18:51:16.216858+00	2	1	PDF
71	Los Colores en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Los+Colores+en+el+Tarot.pdf1	2017-09-28 18:51:32.741763+00	2	1	PDF
72	Las Repeticiones en mis Centros	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Las+Repeticiones+en+mis+Centros.docx	2017-09-28 18:51:49.307715+00	3	1	WRD
73	Le Mat BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Le+Mat+BN.jpg	2017-09-28 18:52:05.107857+00	2	1	IMG
74	Lamoureux BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Lamoureux+BN.jpg	2017-09-28 18:52:20.086871+00	2	1	IMG
75	La Numerología en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/La+Numerolog%C3%ADa+en+el+Tarot.pdf	2017-09-28 18:52:34.421715+00	2	1	PDF
76	Jodorowsky Alejandro - La Via Del Tarot-2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Jodorowsky+Alejandro+-+La+Via+Del+Tarot-2.pdf	2017-09-28 18:52:56.722094+00	2	1	PDF
77	Jodorowsky Alejandro - La Via Del Tarot-1	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Jodorowsky+Alejandro+-+La+Via+Del+Tarot-1.pdf	2017-09-28 18:53:15.288534+00	2	1	PDF
78	Jodorowski_Alejandro-_Psicomagia	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/Jodorowski_Alejandro-_Psicomagia.pdf	2017-09-28 18:53:26.602165+00	4	1	PDF
79	IIII LEmpereur BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/IIII+LEmpereur+BN.jpg	2017-09-28 18:53:42.655634+00	2	1	IMG
80	III LImperatrice BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/III+LImperatrice+BN+2.jpg	2017-09-28 18:53:54.727599+00	2	1	IMG
81	II La Papesse BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/II+La+Papesse+BN+2.jpg	2017-09-28 18:54:07.107017+00	2	1	IMG
82	I Le Bateleur BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/I+Le+Bateleur+BN.jpg	2017-09-28 18:54:21.333984+00	2	1	IMG
83	El Héroe de las Mil Caras	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/El+H%C3%A9roe+de+las+Mil+Caras.pdf	2017-09-28 18:54:37.7781+00	4	1	PDF
84	El Centro Sexual-Creativo y sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Sexual-Creativo+y+sus+Nudos.pdf	2017-09-28 18:54:53.646175+00	3	1	PDF
85	El Centro Intelectual y sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Intelectual+y+sus+Nudos.pdf	2017-09-28 18:55:07.515574+00	3	1	PDF
86	El Centro Emocional y Sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Emocional+y+Sus+Nudos.pdf	2017-09-28 18:55:23.587916+00	3	1	PDF
87	Correspondencias Palos del Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Correspondencias+Palos+del+Tarot.pdf	2017-09-28 18:55:34.276967+00	2	1	PDF
88	Alejandro-Jodorowsky-Manual-Psicomagia Consejos pa_	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/Alejandro-Jodorowsky-Manual-Psicomagia+Consejos+pa_.pdf	2017-09-28 18:55:57.208715+00	4	1	PDF
\.


--
-- Name: catalog_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('catalog_docs_id_seq', 88, true);


--
-- Data for Name: catalog_subcategory; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY catalog_subcategory (id, name) FROM stdin;
1	SubCategoria
\.


--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('catalog_subcategory_id_seq', 1, true);


--
-- Data for Name: catalog_videos; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY catalog_videos (id, name, link, created_at, category_id, subcategory_id, image) FROM stdin;
17	La Barca en la que Navegaremos	http://ddstbjmdfz6e2.cloudfront.net/law/01/La+Barca+en+la+que+Navegaremos.mp4	2017-09-16 02:33:25.897076+00	1	1	video.png
19	La Condicion Divina 1	http://ddstbjmdfz6e2.cloudfront.net/law/01/La+Condicio%CC%81n+Divina+1.mp4	2017-09-16 02:33:46.304297+00	1	1	video.png
20	La Condicion Divina 2	http://ddstbjmdfz6e2.cloudfront.net/law/01/La+Condicio%CC%81n+Divina+2.mp4	2017-09-16 02:33:52.781989+00	1	1	video.png
21	La Configuración del Yo Testigo	http://ddstbjmdfz6e2.cloudfront.net/law/01/La+Configuracio%CC%81n+del+Yo+Testigo.mp4	2017-09-16 02:33:59.166373+00	1	1	video.png
22	La Dimension Transpersonal	http://ddstbjmdfz6e2.cloudfront.net/law/01/La+Dimensio%CC%81n+Transpersonal.mp4	2017-09-16 02:34:06.041696+00	1	1	video.png
23	Las Resistencias del Cerebro Reptil	http://ddstbjmdfz6e2.cloudfront.net/law/01/Las+Resistencias+del+Cerebro+Reptil.mp4	2017-09-16 02:34:14.632044+00	1	1	video.png
24	Mensaje a Estudiantes 1	http://ddstbjmdfz6e2.cloudfront.net/law/01/Mensaje+a+Estudiantes+1.mp4	2017-09-16 02:34:23.407487+00	1	1	video.png
25	Mensaje a Estudiantes 2	http://ddstbjmdfz6e2.cloudfront.net/law/01/Mensaje+a+Estudiantes+2.mp4	2017-09-16 02:34:58.809072+00	1	1	video.png
26	Mensaje a Estudiantes 3	http://ddstbjmdfz6e2.cloudfront.net/law/01/Mensaje+a+Estudiantes+3.mp4	2017-09-16 02:35:10.87321+00	1	1	video.png
27	Metamundo La Escuela	http://ddstbjmdfz6e2.cloudfront.net/law/01/Metamundo+La+Escuela.mp4	2017-09-16 02:35:16.772031+00	1	1	video.png
28	Metamundo y la Expansion de la Conciencia	http://ddstbjmdfz6e2.cloudfront.net/law/01/Metamundo+y+la+Expansio%CC%81n+de+la+Conciencia.mp4	2017-09-16 02:35:23.559311+00	1	1	video.png
29	Mi Historia personal con el Tarot 1	http://ddstbjmdfz6e2.cloudfront.net/law/01/Mi+Historia+personal+con+el+Tarot+1.mp4	2017-09-16 02:35:33.034237+00	1	1	video.png
30	Mi Historia personal con el Tarot 2	http://ddstbjmdfz6e2.cloudfront.net/law/01/Mi+Historia+personal+con+el+Tarot+2.mp4	2017-09-16 02:35:39.011407+00	1	1	video.png
31	Mi Historia personal con el Tarot 3	http://ddstbjmdfz6e2.cloudfront.net/law/01/Mi+Historia+personal+con+el+Tarot+3.mp4	2017-09-16 02:35:46.289857+00	1	1	video.png
32	Viviéndonos como Conciencia	http://ddstbjmdfz6e2.cloudfront.net/law/01/Vivie%CC%81ndonos+como+Conciencia.mp4	2017-09-16 02:35:55.855062+00	1	1	video.png
33	Actitud y Ética del Tarologo 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+1.mp4	2017-09-16 02:36:05.727727+00	2	1	video.png
34	Actitud y Ética del Tarologo 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+2.mp4	2017-09-16 02:36:14.376939+00	2	1	video.png
35	Actitud y Ética del Tarologo 3	http://ddstbjmdfz6e2.cloudfront.net/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+3.mp4	2017-09-16 02:36:20.785061+00	2	1	video.png
36	Actitud y Ética del Tarologo 4	http://ddstbjmdfz6e2.cloudfront.net/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+4.mp4	2017-09-16 02:36:30.533373+00	2	1	video.png
37	Actitud y Ética del Tarologo 5	http://ddstbjmdfz6e2.cloudfront.net/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+5.mp4	2017-09-16 02:36:46.64729+00	2	1	video.png
38	Actitud y Ética del Tarologo 6	http://ddstbjmdfz6e2.cloudfront.net/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+6.mp4	2017-09-16 02:36:55.666134+00	2	1	video.png
39	Actitud y Ética del Tarologo 7	http://ddstbjmdfz6e2.cloudfront.net/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+7.mp4	2017-09-16 02:37:10.838804+00	2	1	video.png
40	Analizando los elementos simbolicos	http://ddstbjmdfz6e2.cloudfront.net/law/02/Analizando+los+Elementos+Simbo%CC%81licos.mp4	2017-09-16 02:37:20.796958+00	2	1	video.png
41	Analogías, Símbolos, Metáforas y Mitos en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Analogi%CC%81as%2C+Si%CC%81mbolos%2C+Meta%CC%81foras+y+Mitos+en+el+Tarot.mp4	2017-09-16 02:37:34.459318+00	2	1	video.png
42	Antecedentes	http://ddstbjmdfz6e2.cloudfront.net/law/02/Antecedentes.mp4	2017-09-16 02:37:40.517619+00	2	1	video.png
43	Así es una ceremonia del té japonesa	http://ddstbjmdfz6e2.cloudfront.net/law/02/Asi%CC%81+es+una+ceremonia+del+te%CC%81+japonesa.mp4	2017-09-16 02:37:45.934551+00	2	1	video.png
44	Auto-Lectura con los Arcanos Mayores	http://ddstbjmdfz6e2.cloudfront.net/law/02/Auto-Lectura+con+los+Arcanos+Mayores.mp4	2017-09-16 02:37:55.831697+00	2	1	video.png
45	Consideraciones sobre cómo leer el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Consideraciones+sobre+co%CC%81mo+leer+el+Tarot.mp4	2017-09-16 02:38:08.000013+00	2	1	video.png
46	Consideraciones sobre la Lectura del Tarot 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/Consideraciones+sobre+la+Lectura+del+Tarot+1.mp4	2017-09-16 02:38:20.93336+00	2	1	video.png
47	Consideraciones sobre la Lectura del Tarot 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/Consideraciones+sobre+la+Lectura+del+Tarot+2.mp4	2017-09-16 02:38:30.819116+00	2	1	video.png
48	Diferentes Visiones en las Lecturas de Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Diferentes+Visiones+en+las+Lecturas+de+Tarot.mp4	2017-09-16 02:38:39.705843+00	2	1	video.png
49	Las Neuronas Espejos	http://ddstbjmdfz6e2.cloudfront.net/law/02/Las+Neuronas+Espejo.mp4	2017-09-16 02:38:47.169092+00	2	1	video.png
50	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+4+Pasos+para+Encauzar+mi+Proceso+Transformativo.mp4	2017-09-16 02:38:57.414103+00	2	1	video.png
51	Lectura Causas de la Situación Presente	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+Causas+de+la+Situacio%CC%81n+Presente.mp4	2017-09-16 02:39:05.76544+00	2	1	video.png
52	Lectura Comienzo - Desarrollo - Resultado	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+Comienzo+-+Desarrollo+-+Resultado.mp4	2017-09-16 02:39:13.634654+00	2	1	video.png
53	Lectura Conflicto - Solución	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+Conflicto+-+Solucio%CC%81n.mp4	2017-09-16 02:39:31.623039+00	2	1	video.png
54	Lectura Conflicto entre 2 Personas y su Solución	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+Conflicto+entre+2+Personas+y+su+Solucio%CC%81n.mp4	2017-09-16 02:39:51.711476+00	2	1	video.png
55	Lectura El Tarot hace las Preguntas	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+El+Tarot+hace+las+Preguntas.mp4	2017-09-16 02:40:01.970574+00	2	1	video.png
56	Lectura El Trío Familiar	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+El+Tri%CC%81o+Familiar.mp4	2017-09-16 02:40:11.67245+00	2	1	video.png
57	Lectura Narcisista	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+Narcisista.mp4	2017-09-16 02:40:22.291429+00	2	1	video.png
58	Lectura con 3 cartas Sumando los Arcanos	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+con+3+cartas+Sumando+los+Arcanos.mp4	2017-09-16 02:40:32.706024+00	2	1	video.png
59	Lectura con Interpretación de la Carta de Abajo	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+con+Interpretacio%CC%81n+de+la+Carta+de+Abajo.mp4	2017-09-16 02:41:21.613945+00	1	1	video.png
60	Lectura de 3 Cartas con Pregunta	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+de+3+Cartas+con+Pregunta.mp4	2017-09-16 02:41:33.384535+00	2	1	video.png
61	Lectura del Héroe o la Heroína	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+del+He%CC%81roe+o+la+Heroi%CC%81na.mp4	2017-09-16 02:41:46.653383+00	2	1	video.png
62	Lectura del Tarot en una Frase	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+del+Tarot+en+una+Frase.mp4	2017-09-16 02:41:56.383338+00	2	1	video.png
63	Lectura sin Pregunta	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lectura+sin+Pregunta.mp4	2017-09-16 02:42:03.913512+00	2	1	video.png
64	Lecturas con 3 cartas	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lecturas+con+3+cartas.mp4	2017-09-16 02:42:28.528658+00	2	1	video.png
65	Lecturas con Arcanos Menores 0	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lecturas+con+Arcanos+Menores+0.mp4	2017-09-16 02:42:40.237933+00	2	1	video.png
66	Lecturas con Arcanos Menores 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lecturas+con+Arcanos+Menores+1.mp4	2017-09-16 02:42:49.451048+00	2	1	video.png
67	Lecturas con Arcanos Menores 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lecturas+con+Arcanos+Menores+2.mp4	2017-09-16 02:42:58.381504+00	2	1	video.png
68	Lecturas de Tarot - Ejemplos y Prácticas	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lecturas+de+Tarot+-+Ejemplos+y+Pra%CC%81cticas.mp4	2017-09-16 02:43:11.004196+00	2	1	video.png
69	Lectura Gestual	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lenguaje+Gestual.mp4	2017-09-16 02:43:21.84462+00	2	1	video.png
70	Lenguaje Visual del Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Lenguaje+Visual+del+Tarot.mp4	2017-09-16 02:43:35.686863+00	2	1	video.png
71	Los Arquetipos en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Los+Arquetipos+en+el+Tarot.mp4	2017-09-16 02:44:08.516436+00	2	1	video.png
72	Los Palos en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Los+Palos+en+el+Tarot.mp4	2017-09-16 02:44:17.037573+00	2	1	video.png
73	Mi Historia personal con el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Mi+Historia+Personal+con+el+Tarot.mp4	2017-09-16 02:44:42.807196+00	2	1	video.png
74	Observando Analogías	http://ddstbjmdfz6e2.cloudfront.net/law/02/Observando+Analogi%CC%81as.mp4	2017-09-16 02:44:51.013237+00	2	1	video.png
75	Ordenando el Mandala del Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Ordenando+el+Mandala+del+Tarot.mp4	2017-09-16 02:45:02.477068+00	2	1	video.png
76	Preparación para la Lectura de Tarot 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+1.mp4	2017-09-16 02:45:12.327225+00	2	1	video.png
77	Preparación para la Lectura de Tarot 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+2.mp4	2017-09-16 02:45:19.467527+00	2	1	video.png
78	Preparación para la Lectura de Tarot 3	http://ddstbjmdfz6e2.cloudfront.net/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+3.mp4	2017-09-16 02:45:29.59471+00	2	1	video.png
79	Recibiendo al Consultante 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/Recibiendo+al+Consultante+1.mp4	2017-09-16 02:45:46.764378+00	2	1	video.png
80	Recibiendo al Consultante 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/Recibiendo+al+Consultante+2.mp4	2017-09-16 02:45:53.601011+00	2	1	video.png
81	Teoría y Estructura del Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/Teori%CC%81a+y+Estructura+del+Tarot.mp4	2017-09-16 02:46:03.544689+00	2	1	video.png
82	Conclusiones sobre los Estados de Conciencia	http://ddstbjmdfz6e2.cloudfront.net/law/03/Conclusiones+sobre+los+Estados+de+Conciencia.mp4	2017-09-16 02:46:55.990891+00	3	1	video.png
83	Conflicto de Fracaso 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/Conflicto+de+Fracaso+1.mp4	2017-09-16 02:47:04.523529+00	3	1	video.png
84	Conflicto de Fracaso 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/Conflicto+de+Fracaso+2.mp4	2017-09-16 02:47:12.009093+00	3	1	video.png
85	Conflicto de Fracaso 3	http://ddstbjmdfz6e2.cloudfront.net/law/03/Conflicto+de+Fracaso+3.mp4	2017-09-16 02:47:21.858254+00	3	1	video.png
86	Conflicto de Fracaso 4	http://ddstbjmdfz6e2.cloudfront.net/law/03/Conflicto+de+Fracaso+4.mp4	2017-09-16 02:47:28.950675+00	3	1	video.png
87	Diferentes Tipos de Ego 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/Diferentes+Tipos+de+Ego+1.mp4	2017-09-16 02:47:37.462479+00	3	1	video.png
88	Diferentes Tipos de Ego 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/Diferentes+Tipos+de+Ego+2.mp4	2017-09-16 02:47:44.993372+00	3	1	video.png
89	Ejemplo de Análisis de las Repeticiones en el Árbol 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+1.mp4	2017-09-16 02:47:52.513165+00	3	1	video.png
90	Ejemplo de Análisis de las Repeticiones en el Árbol 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+2.mp4	2017-09-16 02:47:59.7524+00	3	1	video.png
91	Ejemplo de Análisis de las Repeticiones en el Árbol 3	http://ddstbjmdfz6e2.cloudfront.net/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+3.mp4	2017-09-16 02:48:06.715559+00	3	1	video.png
92	Ejemplo de Análisis de las Repeticiones en el Árbol 4	http://ddstbjmdfz6e2.cloudfront.net/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+4.mp4	2017-09-16 02:48:13.349209+00	3	1	video.png
93	El Abuso en los Cuatro Centros	http://ddstbjmdfz6e2.cloudfront.net/law/03/El+Abuso+en+los+Cuatro+Centros.mp4	2017-09-16 02:48:20.348963+00	3	1	video.png
94	El Destino que el Yo Genealógico ha establecido en ti	http://ddstbjmdfz6e2.cloudfront.net/law/03/El+Destino+que+el+Yo+Genealo%CC%81gico+ha+establecido+en+ti.mp4	2017-09-16 02:48:26.73823+00	3	1	video.png
95	El Impacto De Tu Nombre 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/El+Impacto+De+Tu+Nombre+1.mp4	2017-09-16 02:48:35.806306+00	3	1	video.png
96	El Impacto De Tu Nombre 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/El+Impacto+De+Tu+Nombre+2.mp4	2017-09-16 02:48:45.182962+00	3	1	video.png
97	El Impacto De Tu Nombre 3	http://ddstbjmdfz6e2.cloudfront.net/law/03/El+Impacto+De+Tu+Nombre+3.mp4	2017-09-16 02:49:04.169437+00	3	1	video.png
98	El Mito en el Árbol	http://ddstbjmdfz6e2.cloudfront.net/law/03/El+Mito+en+el+A%CC%81rbol.mp4	2017-09-16 02:49:13.37566+00	3	1	video.png
99	El Proceso de Transformación	http://ddstbjmdfz6e2.cloudfront.net/law/03/El+Proceso+de+Transformacio%CC%81n.mp4	2017-09-16 02:49:21.218905+00	3	1	video.png
100	Encuentro, Concepción, Gestación y Nacimiento 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+1.mp4	2017-09-16 02:49:46.608713+00	3	1	video.png
101	Encuentro, Concepción, Gestación y Nacimiento 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+2.mp4	2017-09-16 02:49:57.525844+00	3	1	video.png
102	Encuentro, Concepción, Gestación y Nacimiento 3	http://ddstbjmdfz6e2.cloudfront.net/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+3.mp4	2017-09-16 02:50:04.871668+00	3	1	video.png
103	Estructura de la Metagenealogía 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/Estructura+de+la+Metagenealogi%CC%81a+1.mp4	2017-09-16 02:50:13.709974+00	3	1	video.png
104	Estructura de la Metagenealogía 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/Estructura+de+la+Metagenealogi%CC%81a+2.mp4	2017-09-16 02:50:20.338016+00	3	1	video.png
105	Estructura de la Metagenealogía 3	http://ddstbjmdfz6e2.cloudfront.net/law/03/Estructura+de+la+Metagenealogi%CC%81a+3.mp4	2017-09-16 02:50:26.692216+00	3	1	video.png
106	Formas de Repeticion en el Arbol 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/Formas+de+Repeticion+en+el+Arbol+1.mp4	2017-09-16 02:50:35.783157+00	3	1	video.png
107	Formas de Repetición en el Árbol 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/Formas+de+Repeticio%CC%81n+en+el+A%CC%81rbol+2.mp4	2017-09-16 02:50:45.417832+00	3	1	video.png
108	Identificando Mitos y Arquetipos en tu Árbol Genealógico	http://ddstbjmdfz6e2.cloudfront.net/law/03/Identificando+Mitos+y+Arquetipos+en+tu+A%CC%81rbol+Genealo%CC%81gico.mp4	2017-09-16 02:50:53.432212+00	3	1	video.png
109	Introducción a los Núcleos y Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/Introduccio%CC%81n+a+los+Nu%CC%81cleos+y+Nudos.mp4	2017-09-16 02:51:08.219058+00	3	1	video.png
110	Nivel de Conciencia Adolescente Romántico	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Adolescente+Roma%CC%81ntico.mp4	2017-09-16 02:51:18.366036+00	3	1	video.png
111	Nivel de Conciencia Adulto Altruista	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Adulto+Altruista.mp4	2017-09-16 02:51:26.895755+00	3	1	video.png
112	Nivel de Conciencia Adulto Aprovechador	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Adulto+Aprovechador.mp4	2017-09-16 02:51:35.519414+00	3	1	video.png
113	Nivel de Conciencia Animal	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Animal.mp4	2017-09-16 02:51:43.923437+00	3	1	video.png
114	Nivel de Conciencia Cósmico	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Co%CC%81smico.mp4	2017-09-16 02:52:05.937251+00	3	1	video.png
115	Nivel de Conciencia Divino	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Divino.mp4	2017-09-16 02:52:21.405718+00	3	1	video.png
116	Nivel de Conciencia Niño Consumidor	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Nin%CC%83o+Consumidor.mp4	2017-09-16 02:52:38.7047+00	3	1	video.png
117	Nivel de Conciencia Planetario	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Planetario.mp4	2017-09-16 02:52:50.772629+00	3	1	video.png
118	Nivel de Conciencia Solar	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nivel+de+Conciencia+Solar.mp4	2017-09-16 02:53:08.248025+00	3	1	video.png
119	Niveles de Conciencia	http://ddstbjmdfz6e2.cloudfront.net/law/03/Niveles+de+Conciencia.mp4	2017-09-16 02:53:22.609049+00	3	1	video.png
120	Núcleo y Nudo Bisexual	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nu%CC%81cleo+y+Nudo+Bisexual.mp4	2017-09-16 02:54:05.050527+00	3	1	video.png
121	Núcleo y Nudo Incestuoso	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nu%CC%81cleo+y+Nudo+Incestuoso.mp4	2017-09-16 02:54:22.525453+00	3	1	video.png
122	Núcleo y Nudo Narcisista 1	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nu%CC%81cleo+y+Nudo+Narcisista+1.mp4	2017-09-16 02:54:33.377151+00	3	1	video.png
123	Núcleo y Nudo Narcisista 2	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nu%CC%81cleo+y+Nudo+Narcisista+2.mp4	2017-09-16 02:54:43.267815+00	3	1	video.png
124	Núcleo y Nudo Social	http://ddstbjmdfz6e2.cloudfront.net/law/03/Nu%CC%81cleo+y+Nudo+Social.mp4	2017-09-16 02:54:51.755243+00	3	1	video.png
125	Tipos de Arbol - Árbol mamímero	http://ddstbjmdfz6e2.cloudfront.net/law/03/Tipos+de+Arbol+-+A%CC%81rbol+mami%CC%81mero.mp4	2017-09-16 02:55:02.785272+00	3	1	video.png
126	Tipos de Arbol - emocional	http://ddstbjmdfz6e2.cloudfront.net/law/03/Tipos+de+Arbol+-+emocional.mp4	2017-09-16 02:55:12.769203+00	3	1	video.png
127	Bases y Fundamentos Psicomagia 5	http://ddstbjmdfz6e2.cloudfront.net/law/04/Bases+y+Fundamentos+Psicomagia+5.mp4	2017-09-16 02:55:28.105278+00	4	1	video.png
128	Bases y Fundamentos de la Psicomagia 2	http://ddstbjmdfz6e2.cloudfront.net/law/04/Bases+y+Fundamentos+de+la+Psicomagia+2.mp4	2017-09-16 02:55:39.676927+00	4	1	video.png
129	Bases y Fundamentos de la Psicomagia 3	http://ddstbjmdfz6e2.cloudfront.net/law/04/Bases+y+Fundamentos+de+la+Psicomagia+3.mp4	2017-09-16 02:55:49.583169+00	4	1	video.png
130	Bases y Fundamentos de la Psicomagia 4	http://ddstbjmdfz6e2.cloudfront.net/law/04/Bases+y+Fundamentos+de+la+Psicomagia+4.mp4	2017-09-16 02:55:56.809542+00	4	1	video.png
131	Bases y fundamentos psicomagia 6	http://ddstbjmdfz6e2.cloudfront.net/law/04/Bases+y+fundamentos+psicomagia+6.mp4	2017-09-16 02:56:07.450257+00	4	1	video.png
132	Introducción a la psicomagia 3	http://ddstbjmdfz6e2.cloudfront.net/law/04/Introduccio%CC%81n+a+la+psicomagia+3.mp4	2017-09-16 02:56:20.320141+00	4	1	video.png
133	Introducción a la psicomagia 4	http://ddstbjmdfz6e2.cloudfront.net/law/04/Introduccio%CC%81n+a+la+psicomagia+4.mp4	2017-09-16 02:56:30.374791+00	4	1	video.png
134	Introducción a la psicomagia 5	http://ddstbjmdfz6e2.cloudfront.net/law/04/Introduccio%CC%81n+a+la+psicomagia+5.mp4	2017-09-16 02:56:39.413346+00	4	1	video.png
135	Percepción y realidad	http://ddstbjmdfz6e2.cloudfront.net/law/04/Percepcio%CC%81n+y+realidad.mp4	2017-09-16 02:56:48.259864+00	4	1	video.png
136	Simbolos 4	http://ddstbjmdfz6e2.cloudfront.net/law/04/Simbolos+4.mp4	2017-09-16 02:57:19.077609+00	4	1	video.png
137	Sincronicidad 1	http://ddstbjmdfz6e2.cloudfront.net/law/04/Sincronicidad+1.mp4	2017-09-16 02:57:26.871266+00	4	1	video.png
138	Sincronicidad 2	http://ddstbjmdfz6e2.cloudfront.net/law/04/Sincronicidad+2.mp4	2017-09-16 02:57:35.407839+00	4	1	video.png
139	Símbolos Números y Colores 1	http://ddstbjmdfz6e2.cloudfront.net/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+1.mp4	2017-09-16 02:58:34.546748+00	4	1	video.png
140	Símbolos Números y Colores 2	http://ddstbjmdfz6e2.cloudfront.net/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+2.mp4	2017-09-16 02:58:43.170858+00	4	1	video.png
141	Símbolos Números y Colores 3-A	http://ddstbjmdfz6e2.cloudfront.net/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+3-A.mp4	2017-09-16 02:58:52.704393+00	4	1	video.png
142	Símbolos Números y Colores 3b	http://ddstbjmdfz6e2.cloudfront.net/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+3b.mp4	2017-09-16 02:59:01.206364+00	4	1	video.png
143	¿Qué es la psicomagia 1	http://ddstbjmdfz6e2.cloudfront.net/law/04/%C2%BFQue%CC%81+es+la+psicomagia+1.mp4	2017-09-16 02:59:15.047982+00	4	1	video.png
144	¿Qué es la psicomagia 2	http://ddstbjmdfz6e2.cloudfront.net/law/04/%C2%BFQue%CC%81+es+la+psicomagia+2.mp4	2017-09-16 02:59:26.731014+00	4	1	video.png
145	¿Qué es la psicomagia 3	http://ddstbjmdfz6e2.cloudfront.net/law/04/%C2%BFQue%CC%81+es+la+psicomagia+3.mp4	2017-09-16 02:59:36.612196+00	4	1	video.png
18	El Tarot como Guía	https://ddstbjmdfz6e2.cloudfront.net/cristobalbucket/law/01/El_Tarot_como_Gui%CC%81a.mp4	2017-09-18 14:42:35.729865+00	1	1	video.png
\.


--
-- Name: catalog_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('catalog_videos_id_seq', 145, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-09-12 08:49:05.799633+00	1	SubCategoria	1	[{"added": {}}]	9	1
2	2017-09-12 09:11:57.361067+00	1	Bloque-0	1	[{"added": {}}]	10	1
3	2017-09-12 09:12:17.998919+00	2	Bloque-2	1	[{"added": {}}]	10	1
4	2017-09-12 09:12:26.705268+00	2	Bloque-1	2	[{"changed": {"fields": ["name"]}}]	10	1
5	2017-09-12 09:12:37.225517+00	3	Bloque-2	1	[{"added": {}}]	10	1
6	2017-09-12 09:12:54.540746+00	4	Bloque-3	1	[{"added": {}}]	10	1
7	2017-09-12 09:14:42.130193+00	1	El Tarot como Guía	1	[{"added": {}}]	7	1
8	2017-09-12 09:18:21.317559+00	2	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	7	1
9	2017-09-12 09:18:33.994561+00	3	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	7	1
10	2017-09-12 09:18:48.34296+00	4	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	7	1
11	2017-09-12 09:19:04.709567+00	5	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	7	1
12	2017-09-12 09:19:19.531573+00	6	Bases y Fundamentos de la Psicomagia 1	1	[{"added": {}}]	7	1
13	2017-09-12 09:19:42.428023+00	7	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	7	1
14	2017-09-12 09:19:57.012389+00	8	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	7	1
15	2017-09-12 09:20:12.809837+00	9	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	7	1
16	2017-09-12 09:20:27.788185+00	10	Conflicto de Fracaso 1	1	[{"added": {}}]	7	1
17	2017-09-12 09:20:42.782005+00	11	Conflicto de Fracaso 2	1	[{"added": {}}]	7	1
18	2017-09-12 09:20:58.681262+00	12	Conflicto de Fracaso 3	1	[{"added": {}}]	7	1
19	2017-09-12 09:21:10.367992+00	13	Conflicto de Fracaso 4	1	[{"added": {}}]	7	1
20	2017-09-12 09:29:11.187084+00	14	La Barca en la que Navegaremos	1	[{"added": {}}]	7	1
21	2017-09-12 09:29:25.364258+00	15	La Condicion Divina	1	[{"added": {}}]	7	1
22	2017-09-12 09:29:38.346569+00	16	La Condicion Divina 2	1	[{"added": {}}]	7	1
23	2017-09-12 09:30:45.033412+00	8	Bases y Fundamentos de la Psicomagia 3	2	[{"changed": {"fields": ["category"]}}]	7	1
24	2017-09-12 09:30:53.33408+00	2	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["category"]}}]	7	1
25	2017-09-16 00:09:48.275605+00	2	Actitud y Ética del Tarologo 1	3		7	1
26	2017-09-16 00:09:48.280131+00	3	Actitud y Ética del Tarologo 2	3		7	1
27	2017-09-16 00:09:48.289563+00	4	Actitud y Ética del Tarologo 3	3		7	1
28	2017-09-16 00:09:48.294969+00	5	Actitud y Ética del Tarologo 4	3		7	1
29	2017-09-16 00:09:48.296884+00	6	Bases y Fundamentos de la Psicomagia 1	3		7	1
30	2017-09-16 00:09:48.29866+00	7	Bases y Fundamentos de la Psicomagia 2	3		7	1
31	2017-09-16 00:09:48.300003+00	8	Bases y Fundamentos de la Psicomagia 3	3		7	1
32	2017-09-16 00:09:48.301332+00	9	Bases y Fundamentos de la Psicomagia 4	3		7	1
33	2017-09-16 00:09:48.302648+00	10	Conflicto de Fracaso 1	3		7	1
34	2017-09-16 00:09:48.304049+00	11	Conflicto de Fracaso 2	3		7	1
35	2017-09-16 00:09:48.305348+00	12	Conflicto de Fracaso 3	3		7	1
36	2017-09-16 00:09:48.306654+00	13	Conflicto de Fracaso 4	3		7	1
37	2017-09-16 00:09:48.30794+00	1	El Tarot como Guía	3		7	1
38	2017-09-16 00:09:48.309272+00	14	La Barca en la que Navegaremos	3		7	1
39	2017-09-16 00:09:48.310656+00	15	La Condicion Divina	3		7	1
40	2017-09-16 00:09:48.312032+00	16	La Condicion Divina 2	3		7	1
41	2017-09-16 02:33:25.897671+00	17	La Barca en la que Navegaremos	1	[{"added": {}}]	7	1
42	2017-09-16 02:33:35.9722+00	18	El Tarot como Guía	1	[{"added": {}}]	7	1
43	2017-09-16 02:33:46.304892+00	19	La Condicion Divina 1	1	[{"added": {}}]	7	1
44	2017-09-16 02:33:52.782576+00	20	La Condicion Divina 2	1	[{"added": {}}]	7	1
45	2017-09-16 02:33:59.166977+00	21	La Configuración del Yo Testigo	1	[{"added": {}}]	7	1
46	2017-09-16 02:34:06.042313+00	22	La Dimension Transpersonal	1	[{"added": {}}]	7	1
47	2017-09-16 02:34:14.632692+00	23	Las Resistencias del Cerebro Reptil	1	[{"added": {}}]	7	1
48	2017-09-16 02:34:23.408094+00	24	Mensaje a Estudiantes 1	1	[{"added": {}}]	7	1
49	2017-09-16 02:34:58.809663+00	25	Mensaje a Estudiantes 2	1	[{"added": {}}]	7	1
50	2017-09-16 02:35:10.873811+00	26	Mensaje a Estudiantes 3	1	[{"added": {}}]	7	1
51	2017-09-16 02:35:16.772687+00	27	Metamundo La Escuela	1	[{"added": {}}]	7	1
52	2017-09-16 02:35:23.559928+00	28	Metamundo y la Expansion de la Conciencia	1	[{"added": {}}]	7	1
53	2017-09-16 02:35:33.034828+00	29	Mi Historia personal con el Tarot 1	1	[{"added": {}}]	7	1
54	2017-09-16 02:35:39.012011+00	30	Mi Historia personal con el Tarot 2	1	[{"added": {}}]	7	1
55	2017-09-16 02:35:46.290478+00	31	Mi Historia personal con el Tarot 3	1	[{"added": {}}]	7	1
56	2017-09-16 02:35:55.855686+00	32	Viviéndonos como Conciencia	1	[{"added": {}}]	7	1
57	2017-09-16 02:36:05.728611+00	33	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	7	1
58	2017-09-16 02:36:14.377554+00	34	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	7	1
59	2017-09-16 02:36:20.785812+00	35	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	7	1
60	2017-09-16 02:36:30.533992+00	36	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	7	1
61	2017-09-16 02:36:46.647902+00	37	Actitud y Ética del Tarologo 5	1	[{"added": {}}]	7	1
62	2017-09-16 02:36:55.666724+00	38	Actitud y Ética del Tarologo 6	1	[{"added": {}}]	7	1
63	2017-09-16 02:37:04.246725+00	39	Actitud y Ética del Tarologo 7	1	[{"added": {}}]	7	1
64	2017-09-16 02:37:10.839818+00	39	Actitud y Ética del Tarologo 7	2	[{"changed": {"fields": ["category"]}}]	7	1
65	2017-09-16 02:37:20.797573+00	40	Analizando los elementos simbolicos	1	[{"added": {}}]	7	1
66	2017-09-16 02:37:34.459913+00	41	Analogías, Símbolos, Metáforas y Mitos en el Tarot	1	[{"added": {}}]	7	1
67	2017-09-16 02:37:40.518202+00	42	Antecedentes	1	[{"added": {}}]	7	1
68	2017-09-16 02:37:45.935148+00	43	Así es una ceremonia del té japonesa	1	[{"added": {}}]	7	1
69	2017-09-16 02:37:55.832345+00	44	Auto-Lectura con los Arcanos Mayores	1	[{"added": {}}]	7	1
70	2017-09-16 02:38:08.000664+00	45	Consideraciones sobre cómo leer el Tarot	1	[{"added": {}}]	7	1
71	2017-09-16 02:38:20.933959+00	46	Consideraciones sobre la Lectura del Tarot 1	1	[{"added": {}}]	7	1
72	2017-09-16 02:38:30.819714+00	47	Consideraciones sobre la Lectura del Tarot 2	1	[{"added": {}}]	7	1
73	2017-09-16 02:38:39.706413+00	48	Diferentes Visiones en las Lecturas de Tarot	1	[{"added": {}}]	7	1
74	2017-09-16 02:38:47.169655+00	49	Las Neuronas Espejos	1	[{"added": {}}]	7	1
75	2017-09-16 02:38:57.414703+00	50	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	1	[{"added": {}}]	7	1
76	2017-09-16 02:39:05.76605+00	51	Lectura Causas de la Situación Presente	1	[{"added": {}}]	7	1
77	2017-09-16 02:39:13.635259+00	52	Lectura Comienzo - Desarrollo - Resultado	1	[{"added": {}}]	7	1
78	2017-09-16 02:39:31.623649+00	53	Lectura Conflicto - Solución	1	[{"added": {}}]	7	1
79	2017-09-16 02:39:51.712094+00	54	Lectura Conflicto entre 2 Personas y su Solución	1	[{"added": {}}]	7	1
80	2017-09-16 02:40:01.97118+00	55	Lectura El Tarot hace las Preguntas	1	[{"added": {}}]	7	1
81	2017-09-16 02:40:11.673061+00	56	Lectura El Trío Familiar	1	[{"added": {}}]	7	1
82	2017-09-16 02:40:22.292025+00	57	Lectura Narcisista	1	[{"added": {}}]	7	1
83	2017-09-16 02:40:32.706632+00	58	Lectura con 3 cartas Sumando los Arcanos	1	[{"added": {}}]	7	1
84	2017-09-16 02:40:40.67089+00	59	lectura con	1	[{"added": {}}]	7	1
85	2017-09-16 02:41:21.614949+00	59	Lectura con Interpretación de la Carta de Abajo	2	[{"changed": {"fields": ["name"]}}]	7	1
86	2017-09-16 02:41:33.385123+00	60	Lectura de 3 Cartas con Pregunta	1	[{"added": {}}]	7	1
87	2017-09-16 02:41:46.653988+00	61	Lectura del Héroe o la Heroína	1	[{"added": {}}]	7	1
88	2017-09-16 02:41:56.38393+00	62	Lectura del Tarot en una Frase	1	[{"added": {}}]	7	1
89	2017-09-16 02:42:03.914095+00	63	Lectura sin Pregunta	1	[{"added": {}}]	7	1
90	2017-09-16 02:42:28.529403+00	64	Lecturas con 3 cartas	1	[{"added": {}}]	7	1
91	2017-09-16 02:42:40.238522+00	65	Lecturas con Arcanos Menores 0	1	[{"added": {}}]	7	1
92	2017-09-16 02:42:49.451723+00	66	Lecturas con Arcanos Menores 1	1	[{"added": {}}]	7	1
93	2017-09-16 02:42:58.382129+00	67	Lecturas con Arcanos Menores 2	1	[{"added": {}}]	7	1
94	2017-09-16 02:43:11.004824+00	68	Lecturas de Tarot - Ejemplos y Prácticas	1	[{"added": {}}]	7	1
95	2017-09-16 02:43:21.845241+00	69	Lectura Gestual	1	[{"added": {}}]	7	1
96	2017-09-16 02:43:35.68747+00	70	Lenguaje Visual del Tarot	1	[{"added": {}}]	7	1
97	2017-09-16 02:44:08.517043+00	71	Los Arquetipos en el Tarot	1	[{"added": {}}]	7	1
98	2017-09-16 02:44:17.038179+00	72	Los Palos en el Tarot	1	[{"added": {}}]	7	1
99	2017-09-16 02:44:42.807808+00	73	Mi Historia personal con el Tarot	1	[{"added": {}}]	7	1
100	2017-09-16 02:44:51.013851+00	74	Observando Analogías	1	[{"added": {}}]	7	1
101	2017-09-16 02:45:02.477673+00	75	Ordenando el Mandala del Tarot	1	[{"added": {}}]	7	1
102	2017-09-16 02:45:12.327969+00	76	Preparación para la Lectura de Tarot 1	1	[{"added": {}}]	7	1
103	2017-09-16 02:45:19.468183+00	77	Preparación para la Lectura de Tarot 2	1	[{"added": {}}]	7	1
104	2017-09-16 02:45:29.59533+00	78	Preparación para la Lectura de Tarot 3	1	[{"added": {}}]	7	1
105	2017-09-16 02:45:46.765022+00	79	Recibiendo al Consultante 1	1	[{"added": {}}]	7	1
106	2017-09-16 02:45:53.601608+00	80	Recibiendo al Consultante 2	1	[{"added": {}}]	7	1
107	2017-09-16 02:46:03.54529+00	81	Teoría y Estructura del Tarot	1	[{"added": {}}]	7	1
108	2017-09-16 02:46:44.401748+00	82	Conclusiones sobre los Estados de Conciencia	1	[{"added": {}}]	7	1
109	2017-09-16 02:46:55.991892+00	82	Conclusiones sobre los Estados de Conciencia	2	[{"changed": {"fields": ["category"]}}]	7	1
110	2017-09-16 02:47:04.524296+00	83	Conflicto de Fracaso 1	1	[{"added": {}}]	7	1
111	2017-09-16 02:47:12.009706+00	84	Conflicto de Fracaso 2	1	[{"added": {}}]	7	1
112	2017-09-16 02:47:21.858857+00	85	Conflicto de Fracaso 3	1	[{"added": {}}]	7	1
113	2017-09-16 02:47:28.951266+00	86	Conflicto de Fracaso 4	1	[{"added": {}}]	7	1
114	2017-09-16 02:47:37.463068+00	87	Diferentes Tipos de Ego 1	1	[{"added": {}}]	7	1
115	2017-09-16 02:47:44.993958+00	88	Diferentes Tipos de Ego 2	1	[{"added": {}}]	7	1
116	2017-09-16 02:47:52.513831+00	89	Ejemplo de Análisis de las Repeticiones en el Árbol 1	1	[{"added": {}}]	7	1
117	2017-09-16 02:47:59.753015+00	90	Ejemplo de Análisis de las Repeticiones en el Árbol 2	1	[{"added": {}}]	7	1
118	2017-09-16 02:48:06.716223+00	91	Ejemplo de Análisis de las Repeticiones en el Árbol 3	1	[{"added": {}}]	7	1
119	2017-09-16 02:48:13.349825+00	92	Ejemplo de Análisis de las Repeticiones en el Árbol 4	1	[{"added": {}}]	7	1
120	2017-09-16 02:48:20.349553+00	93	El Abuso en los Cuatro Centros	1	[{"added": {}}]	7	1
121	2017-09-16 02:48:26.738854+00	94	El Destino que el Yo Genealógico ha establecido en ti	1	[{"added": {}}]	7	1
122	2017-09-16 02:48:35.806916+00	95	El Impacto De Tu Nombre 1	1	[{"added": {}}]	7	1
123	2017-09-16 02:48:45.183583+00	96	El Impacto De Tu Nombre 2	1	[{"added": {}}]	7	1
124	2017-09-16 02:49:04.170049+00	97	El Impacto De Tu Nombre 3	1	[{"added": {}}]	7	1
125	2017-09-16 02:49:13.376293+00	98	El Mito en el Árbol	1	[{"added": {}}]	7	1
126	2017-09-16 02:49:21.21951+00	99	El Proceso de Transformación	1	[{"added": {}}]	7	1
127	2017-09-16 02:49:46.609322+00	100	Encuentro, Concepción, Gestación y Nacimiento 1	1	[{"added": {}}]	7	1
128	2017-09-16 02:49:57.526459+00	101	Encuentro, Concepción, Gestación y Nacimiento 2	1	[{"added": {}}]	7	1
129	2017-09-16 02:50:04.872348+00	102	Encuentro, Concepción, Gestación y Nacimiento 3	1	[{"added": {}}]	7	1
130	2017-09-16 02:50:13.7106+00	103	Estructura de la Metagenealogía 1	1	[{"added": {}}]	7	1
131	2017-09-16 02:50:20.338648+00	104	Estructura de la Metagenealogía 2	1	[{"added": {}}]	7	1
132	2017-09-16 02:50:26.692839+00	105	Estructura de la Metagenealogía 3	1	[{"added": {}}]	7	1
133	2017-09-16 02:50:35.783768+00	106	Formas de Repeticion en el Arbol 1	1	[{"added": {}}]	7	1
134	2017-09-16 02:50:45.418477+00	107	Formas de Repetición en el Árbol 2	1	[{"added": {}}]	7	1
135	2017-09-16 02:50:53.432801+00	108	Identificando Mitos y Arquetipos en tu Árbol Genealógico	1	[{"added": {}}]	7	1
136	2017-09-16 02:51:08.219659+00	109	Introducción a los Núcleos y Nudos	1	[{"added": {}}]	7	1
137	2017-09-16 02:51:18.366651+00	110	Nivel de Conciencia Adolescente Romántico	1	[{"added": {}}]	7	1
138	2017-09-16 02:51:26.896477+00	111	Nivel de Conciencia Adulto Altruista	1	[{"added": {}}]	7	1
139	2017-09-16 02:51:35.520003+00	112	Nivel de Conciencia Adulto Aprovechador	1	[{"added": {}}]	7	1
140	2017-09-16 02:51:43.924063+00	113	Nivel de Conciencia Animal	1	[{"added": {}}]	7	1
141	2017-09-16 02:52:05.937866+00	114	Nivel de Conciencia Cósmico	1	[{"added": {}}]	7	1
142	2017-09-16 02:52:21.406347+00	115	Nivel de Conciencia Divino	1	[{"added": {}}]	7	1
143	2017-09-16 02:52:38.705299+00	116	Nivel de Conciencia Niño Consumidor	1	[{"added": {}}]	7	1
144	2017-09-16 02:52:50.773243+00	117	Nivel de Conciencia Planetario	1	[{"added": {}}]	7	1
145	2017-09-16 02:53:08.248673+00	118	Nivel de Conciencia Solar	1	[{"added": {}}]	7	1
146	2017-09-16 02:53:22.609664+00	119	Niveles de Conciencia	1	[{"added": {}}]	7	1
147	2017-09-16 02:54:05.051269+00	120	Núcleo y Nudo Bisexual	1	[{"added": {}}]	7	1
148	2017-09-16 02:54:22.526096+00	121	Núcleo y Nudo Incestuoso	1	[{"added": {}}]	7	1
149	2017-09-16 02:54:33.377794+00	122	Núcleo y Nudo Narcisista 1	1	[{"added": {}}]	7	1
150	2017-09-16 02:54:43.268484+00	123	Núcleo y Nudo Narcisista 2	1	[{"added": {}}]	7	1
151	2017-09-16 02:54:51.75586+00	124	Núcleo y Nudo Social	1	[{"added": {}}]	7	1
152	2017-09-16 02:55:02.785903+00	125	Tipos de Arbol - Árbol mamímero	1	[{"added": {}}]	7	1
153	2017-09-16 02:55:12.769838+00	126	Tipos de Arbol - emocional	1	[{"added": {}}]	7	1
154	2017-09-16 02:55:28.105893+00	127	Bases y Fundamentos Psicomagia 5	1	[{"added": {}}]	7	1
155	2017-09-16 02:55:39.677569+00	128	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	7	1
156	2017-09-16 02:55:49.583818+00	129	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	7	1
157	2017-09-16 02:55:56.810148+00	130	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	7	1
158	2017-09-16 02:56:07.450853+00	131	Bases y fundamentos psicomagia 6	1	[{"added": {}}]	7	1
159	2017-09-16 02:56:20.320747+00	132	Introducción a la psicomagia 3	1	[{"added": {}}]	7	1
160	2017-09-16 02:56:30.375395+00	133	Introducción a la psicomagia 4	1	[{"added": {}}]	7	1
161	2017-09-16 02:56:39.413943+00	134	Introducción a la psicomagia 5	1	[{"added": {}}]	7	1
162	2017-09-16 02:56:48.260513+00	135	Percepción y realidad	1	[{"added": {}}]	7	1
163	2017-09-16 02:57:19.078216+00	136	Simbolos 4	1	[{"added": {}}]	7	1
164	2017-09-16 02:57:26.871867+00	137	Sincronicidad 1	1	[{"added": {}}]	7	1
165	2017-09-16 02:57:35.408486+00	138	Sincronicidad 2	1	[{"added": {}}]	7	1
166	2017-09-16 02:58:34.54736+00	139	Símbolos Números y Colores 1	1	[{"added": {}}]	7	1
167	2017-09-16 02:58:43.171486+00	140	Símbolos Números y Colores 2	1	[{"added": {}}]	7	1
168	2017-09-16 02:58:52.704994+00	141	Símbolos Números y Colores 3-A	1	[{"added": {}}]	7	1
169	2017-09-16 02:59:01.206987+00	142	Símbolos Números y Colores 3b	1	[{"added": {}}]	7	1
170	2017-09-16 02:59:15.048638+00	143	¿Qué es la psicomagia 1	1	[{"added": {}}]	7	1
171	2017-09-16 02:59:26.731634+00	144	¿Qué es la psicomagia 2	1	[{"added": {}}]	7	1
172	2017-09-16 02:59:36.612829+00	145	¿Qué es la psicomagia 3	1	[{"added": {}}]	7	1
173	2017-09-18 14:31:11.139468+00	18	El Tarot como Guía	2	[{"changed": {"fields": ["link"]}}]	7	1
174	2017-09-18 14:42:35.730931+00	18	El Tarot como Guía	2	[{"changed": {"fields": ["link"]}}]	7	1
175	2017-09-18 14:48:44.896687+00	1	I Le Bateleur BN	1	[{"added": {}}]	8	1
176	2017-09-18 14:49:22.283855+00	2	II La Papesse BN 2	1	[{"added": {}}]	8	1
177	2017-09-18 14:49:32.348385+00	3	III LImperatrice BN 2	1	[{"added": {}}]	8	1
178	2017-09-18 14:49:50.361963+00	4	IIII LEmpereur BN	1	[{"added": {}}]	8	1
179	2017-09-18 15:20:26.811419+00	5	Lamoureux BN	1	[{"added": {}}]	8	1
180	2017-09-18 15:20:36.049783+00	6	Le Mat BN	1	[{"added": {}}]	8	1
181	2017-09-18 15:20:44.484971+00	7	V Le Pape BN	1	[{"added": {}}]	8	1
182	2017-09-18 15:20:53.36525+00	8	VII Le Chariot BN	1	[{"added": {}}]	8	1
183	2017-09-18 15:21:02.320584+00	9	VIII La Justice BN	1	[{"added": {}}]	8	1
184	2017-09-18 15:21:13.48465+00	10	VIIII LHermite BN	1	[{"added": {}}]	8	1
185	2017-09-18 15:21:22.3197+00	11	X La Roue de Fortune BN	1	[{"added": {}}]	8	1
186	2017-09-18 15:21:30.124417+00	12	XI La Force BN	1	[{"added": {}}]	8	1
187	2017-09-18 15:21:47.861807+00	13	XII Le Pendu BN	1	[{"added": {}}]	8	1
188	2017-09-18 15:21:55.322844+00	14	XIII Arcano sin nombre BN	1	[{"added": {}}]	8	1
189	2017-09-18 15:22:04.62856+00	15	XIIII Temperance BN 2	1	[{"added": {}}]	8	1
190	2017-09-18 15:22:24.147138+00	16	XV Le Diable BN	1	[{"added": {}}]	8	1
191	2017-09-18 15:22:33.115158+00	17	XVI La Maison Dieu BN	1	[{"added": {}}]	8	1
192	2017-09-18 15:22:42.229786+00	18	XVII LEtoile BN	1	[{"added": {}}]	8	1
193	2017-09-18 15:24:10.974086+00	18	XVII LEtoile BN	2	[{"changed": {"fields": ["link"]}}]	8	1
194	2017-09-18 15:25:49.622845+00	19	XVIII La Lune BN	1	[{"added": {}}]	8	1
195	2017-09-18 15:25:58.380761+00	20	XVIIII Le Soleil BN	1	[{"added": {}}]	8	1
196	2017-09-18 15:26:05.998155+00	21	XX Le Iugement BN	1	[{"added": {}}]	8	1
197	2017-09-18 15:26:14.502177+00	22	XXI Le Monde BN	1	[{"added": {}}]	8	1
198	2017-09-28 18:37:16.28872+00	4	IIII LEmpereur BN	3		8	1
199	2017-09-28 18:37:16.29447+00	3	III LImperatrice BN 2	3		8	1
200	2017-09-28 18:37:16.295818+00	2	II La Papesse BN 2	3		8	1
201	2017-09-28 18:37:16.297178+00	1	I Le Bateleur BN	3		8	1
202	2017-09-28 18:37:16.298569+00	5	Lamoureux BN	3		8	1
203	2017-09-28 18:37:16.300001+00	6	Le Mat BN	3		8	1
204	2017-09-28 18:37:16.301408+00	10	VIIII LHermite BN	3		8	1
205	2017-09-28 18:37:16.302793+00	9	VIII La Justice BN	3		8	1
206	2017-09-28 18:37:16.304109+00	8	VII Le Chariot BN	3		8	1
207	2017-09-28 18:37:16.305391+00	7	V Le Pape BN	3		8	1
208	2017-09-28 18:37:16.306798+00	14	XIII Arcano sin nombre BN	3		8	1
209	2017-09-28 18:37:16.308225+00	15	XIIII Temperance BN 2	3		8	1
210	2017-09-28 18:37:16.310686+00	13	XII Le Pendu BN	3		8	1
211	2017-09-28 18:37:16.312006+00	12	XI La Force BN	3		8	1
212	2017-09-28 18:37:16.31335+00	11	X La Roue de Fortune BN	3		8	1
213	2017-09-28 18:37:16.314637+00	20	XVIIII Le Soleil BN	3		8	1
214	2017-09-28 18:37:16.315977+00	19	XVIII La Lune BN	3		8	1
215	2017-09-28 18:37:16.317416+00	18	XVII LEtoile BN	3		8	1
216	2017-09-28 18:37:16.318831+00	17	XVI La Maison Dieu BN	3		8	1
217	2017-09-28 18:37:16.320104+00	16	XV Le Diable BN	3		8	1
218	2017-09-28 18:37:16.321353+00	22	XXI Le Monde BN	3		8	1
219	2017-09-28 18:37:16.322675+00	21	XX Le Iugement BN	3		8	1
220	2017-09-28 18:37:37.347537+00	23	XXI Le Monde BN	1	[{"added": {}}]	8	1
221	2017-09-28 18:38:03.309631+00	24	XX Le Iugement BN	1	[{"added": {}}]	8	1
222	2017-09-28 18:38:20.315283+00	25	XVIIII Le Soleil BN	1	[{"added": {}}]	8	1
223	2017-09-28 18:38:40.13521+00	26	XVIII La Lune BN	1	[{"added": {}}]	8	1
224	2017-09-28 18:39:11.872824+00	27	XVII LEtoile BN	1	[{"added": {}}]	8	1
225	2017-09-28 18:39:23.8151+00	28	XVI La Maison Dieu BN	1	[{"added": {}}]	8	1
226	2017-09-28 18:40:29.073615+00	29	XV Le Diable BN	1	[{"added": {}}]	8	1
227	2017-09-28 18:40:51.523458+00	30	XIIII Temperance BN 2	1	[{"added": {}}]	8	1
228	2017-09-28 18:41:04.092351+00	31	XIII Arcano sin nombre BN	1	[{"added": {}}]	8	1
229	2017-09-28 18:41:18.319798+00	32	XII Le Pendu BN	1	[{"added": {}}]	8	1
230	2017-09-28 18:41:42.617284+00	33	XI La Force BN	1	[{"added": {}}]	8	1
231	2017-09-28 18:41:54.225893+00	34	X La Roue de Fortune BN	1	[{"added": {}}]	8	1
232	2017-09-28 18:42:09.504171+00	35	VIIII LHermite BN	1	[{"added": {}}]	8	1
233	2017-09-28 18:42:21.828807+00	36	VIII La Justice BN	1	[{"added": {}}]	8	1
234	2017-09-28 18:42:38.574159+00	37	VII Le Chariot BN	1	[{"added": {}}]	8	1
235	2017-09-28 18:42:51.727168+00	38	V Le Pape BN	1	[{"added": {}}]	8	1
236	2017-09-28 18:43:06.973052+00	39	Tu Arbol Genealógico	1	[{"added": {}}]	8	1
237	2017-09-28 18:43:23.188076+00	40	Tarea- Ejercicios de Tarot – Semana 5	1	[{"added": {}}]	8	1
238	2017-09-28 18:43:48.034688+00	41	Tarea- Ejercicios de Tarot – Semana 4	1	[{"added": {}}]	8	1
239	2017-09-28 18:44:04.317695+00	42	Tarea- Ejercicios de Tarot – Semana 3	1	[{"added": {}}]	8	1
240	2017-09-28 18:44:16.559393+00	43	Tarea- Ejercicios de Tarot – Semana 2	1	[{"added": {}}]	8	1
241	2017-09-28 18:44:30.922608+00	44	Tarea- Ejercicios de Tarot – Semana 1	1	[{"added": {}}]	8	1
242	2017-09-28 18:44:50.1527+00	45	Símbolos para Analizar el Árbol Genealógico	1	[{"added": {}}]	8	1
243	2017-09-28 18:45:10.712326+00	46	Referencia Rápida - Tipo de Repetición Genealógica	1	[{"added": {}}]	8	1
244	2017-09-28 18:45:45.305278+00	47	Referencia Rápida- Niveles de Conciencia	1	[{"added": {}}]	8	1
245	2017-09-28 18:46:08.226967+00	48	Referencia Rapida- La Finalidad en el Arbol Genealógico- Trampa y Tesoro	1	[{"added": {}}]	8	1
246	2017-09-28 18:46:25.494519+00	49	Referencia Rápida- Arcano XXI - Le Monde - El Mundo	1	[{"added": {}}]	8	1
247	2017-09-28 18:46:39.741744+00	50	Referencia Rápida- Arcano XX - Le Iugement - El Juicio	1	[{"added": {}}]	8	1
248	2017-09-28 18:46:56.695593+00	51	Referencia Rápida- Arcano XVIIII - Le Soleil - El Sol	1	[{"added": {}}]	8	1
249	2017-09-28 18:47:07.651648+00	52	Referencia Rápida- Arcano XVIII - La Lune - La Luna	1	[{"added": {}}]	8	1
250	2017-09-28 18:47:22.658925+00	53	Referencia Rápida- Arcano XVII - L Etoille - La Estrella	1	[{"added": {}}]	8	1
251	2017-09-28 18:47:40.324832+00	54	Referencia Rápida- Arcano XVI - La Maison Dieu - La Torre	1	[{"added": {}}]	8	1
252	2017-09-28 18:47:54.053713+00	55	Referencia Rápida- Arcano XIIII - Temperance - La Templanza	1	[{"added": {}}]	8	1
253	2017-09-28 18:48:06.368769+00	56	Referencia Rápida- Arcano XIIII - Le Diable - El Diablo	1	[{"added": {}}]	8	1
254	2017-09-28 18:48:19.651992+00	57	Referencia Rápida- Arcano XIII - Arcano sin Nombre	1	[{"added": {}}]	8	1
255	2017-09-28 18:48:33.793428+00	58	Referencia Rápida- Arcano XII - Le Pendu - El Colgado	1	[{"added": {}}]	8	1
256	2017-09-28 18:48:49.651043+00	59	Referencia Rápida- Arcano XI - La Force - La Fuerza	1	[{"added": {}}]	8	1
257	2017-09-28 18:49:06.182367+00	60	Referencia Rápida- Arcano X	1	[{"added": {}}]	8	1
258	2017-09-28 18:49:21.200091+00	61	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	1	[{"added": {}}]	8	1
259	2017-09-28 18:49:35.192476+00	62	Referencia Rápida- Arcano VIII - La Justice- La Justicia	1	[{"added": {}}]	8	1
260	2017-09-28 18:49:48.985641+00	63	Referencia Rápida- Arcano VII - Le Chariot - El Carro	1	[{"added": {}}]	8	1
261	2017-09-28 18:50:04.940839+00	64	Referencia Rápida- Arcano VI - LAmoureux - El Enamorado	1	[{"added": {}}]	8	1
262	2017-09-28 18:50:17.523672+00	65	Referencia Rápida- Arcano V - Le Pape - El Papa	1	[{"added": {}}]	8	1
263	2017-09-28 18:50:28.852109+00	66	Referencia Rápida- Arcano IIII - LEmpereur - El Emperador	1	[{"added": {}}]	8	1
264	2017-09-28 18:50:40.016612+00	67	Referencia Rápida- Arcano III - Limperatrice - La Emperatriz	1	[{"added": {}}]	8	1
265	2017-09-28 18:50:52.720946+00	68	Referencia Rápida- Arcano II - La Papesse - La Papisa	1	[{"added": {}}]	8	1
266	2017-09-28 18:51:04.593425+00	69	Referencia Rápida- Arcano I - Le Bateleur	1	[{"added": {}}]	8	1
267	2017-09-28 18:51:16.217578+00	70	Referencia Rápida- Arcano 0 - Le Mat	1	[{"added": {}}]	8	1
268	2017-09-28 18:51:32.742417+00	71	Los Colores en el Tarot	1	[{"added": {}}]	8	1
269	2017-09-28 18:51:49.308362+00	72	Las Repeticiones en mis Centros	1	[{"added": {}}]	8	1
270	2017-09-28 18:52:05.108564+00	73	Le Mat BN	1	[{"added": {}}]	8	1
271	2017-09-28 18:52:20.08748+00	74	Lamoureux BN	1	[{"added": {}}]	8	1
272	2017-09-28 18:52:34.42236+00	75	La Numerología en el Tarot	1	[{"added": {}}]	8	1
273	2017-09-28 18:52:56.722745+00	76	Jodorowsky Alejandro - La Via Del Tarot-2	1	[{"added": {}}]	8	1
274	2017-09-28 18:53:15.289184+00	77	Jodorowsky Alejandro - La Via Del Tarot-1	1	[{"added": {}}]	8	1
275	2017-09-28 18:53:26.602823+00	78	Jodorowski_Alejandro-_Psicomagia	1	[{"added": {}}]	8	1
276	2017-09-28 18:53:42.656356+00	79	IIII LEmpereur BN	1	[{"added": {}}]	8	1
277	2017-09-28 18:53:54.728241+00	80	III LImperatrice BN 2	1	[{"added": {}}]	8	1
278	2017-09-28 18:54:07.107657+00	81	II La Papesse BN 2	1	[{"added": {}}]	8	1
279	2017-09-28 18:54:21.334606+00	82	I Le Bateleur BN	1	[{"added": {}}]	8	1
280	2017-09-28 18:54:37.778732+00	83	El Héroe de las Mil Caras	1	[{"added": {}}]	8	1
281	2017-09-28 18:54:53.646821+00	84	El Centro Sexual-Creativo y sus Nudos	1	[{"added": {}}]	8	1
282	2017-09-28 18:55:07.516295+00	85	El Centro Intelectual y sus Nudos	1	[{"added": {}}]	8	1
283	2017-09-28 18:55:23.588765+00	86	El Centro Emocional y Sus Nudos	1	[{"added": {}}]	8	1
284	2017-09-28 18:55:34.277696+00	87	Correspondencias Palos del Tarot	1	[{"added": {}}]	8	1
285	2017-09-28 18:55:57.209413+00	88	Alejandro-Jodorowsky-Manual-Psicomagia Consejos pa_	1	[{"added": {}}]	8	1
286	2017-10-17 08:51:29.319603+00	2	Josue	3		2	1
287	2017-10-18 08:47:03.403877+00	3	TescaCEO	1	[{"added": {}}]	2	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 287, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	user
3	auth	group
4	auth	permission
5	contenttypes	contenttype
6	sessions	session
7	catalog	videos
8	catalog	docs
9	catalog	subcategory
10	catalog	category
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-09-09 11:15:13.686841+00
2	auth	0001_initial	2017-09-09 11:15:13.973139+00
3	admin	0001_initial	2017-09-09 11:15:14.022466+00
4	admin	0002_logentry_remove_auto_add	2017-09-09 11:15:14.068791+00
5	contenttypes	0002_remove_content_type_name	2017-09-09 11:15:14.099991+00
6	auth	0002_alter_permission_name_max_length	2017-09-09 11:15:14.12049+00
7	auth	0003_alter_user_email_max_length	2017-09-09 11:15:14.143846+00
8	auth	0004_alter_user_username_opts	2017-09-09 11:15:14.179805+00
9	auth	0005_alter_user_last_login_null	2017-09-09 11:15:14.210213+00
10	auth	0006_require_contenttypes_0002	2017-09-09 11:15:14.22351+00
11	auth	0007_alter_validators_add_error_messages	2017-09-09 11:15:14.24483+00
12	auth	0008_alter_user_username_max_length	2017-09-09 11:15:14.286012+00
13	catalog	0001_initial	2017-09-09 11:15:14.585963+00
14	catalog	0002_docs_kind	2017-09-09 11:15:14.663501+00
15	catalog	0003_auto_20170904_0309	2017-09-09 11:15:14.773009+00
16	sessions	0001_initial	2017-09-09 11:15:14.85749+00
17	catalog	0004_category_title	2017-09-12 09:11:17.499074+00
18	catalog	0005_category_image	2017-09-12 09:11:17.567906+00
19	catalog	0006_remove_category_image	2017-09-12 09:11:17.577356+00
20	catalog	0007_videos_image	2017-09-28 16:23:15.380123+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
tquynzf24zezjujcvn0fmpiyduanj2d7	YTk1NDkwYWUwZmQ4ZTM3Y2MyZDliNmQyOTc3ZmZiY2YwNjZiYzZhOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJjZGE0Y2JmMTg2YTExMGQ5OGM0OTQ3YzEzMTc2ZTNkNjMwMzJlZDEiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-26 08:06:43.049254+00
h4x5mk073igsa7zn931btnstvvalan1g	YTk1NDkwYWUwZmQ4ZTM3Y2MyZDliNmQyOTc3ZmZiY2YwNjZiYzZhOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJjZGE0Y2JmMTg2YTExMGQ5OGM0OTQ3YzEzMTc2ZTNkNjMwMzJlZDEiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-02 15:19:45.624735+00
g0m2ilt82xo12m8wevvffjt5bv7sgpbm	Y2U1ZjNkZWM1ZjAyYThmM2NkYmQ4ZjdlYmU1MjQzNTUyODE1NGQyYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmNkYTRjYmYxODZhMTEwZDk4YzQ5NDdjMTMxNzZlM2Q2MzAzMmVkMSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-22 01:02:37.394882+00
55oeh4ndkpaat1aswiuq6onduq51lvkp	Mzg5YWQ1ZWZiM2FiYmExYTEwZGI0YmU5ZDQ1NTRkY2YxMTNlZWEyYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjBkZDc2Yzc2ZGQ5NjFjOGJlN2M5ZTA0MDJlMDQ2ZDM1NWFjOTRiZWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2017-11-01 08:55:02.043822+00
\.


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_category_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_category
    ADD CONSTRAINT catalog_category_name_key UNIQUE (name);


--
-- Name: catalog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_category
    ADD CONSTRAINT catalog_category_pkey PRIMARY KEY (id);


--
-- Name: catalog_docs_link_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_link_key UNIQUE (link);


--
-- Name: catalog_docs_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_name_key UNIQUE (name);


--
-- Name: catalog_docs_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_pkey PRIMARY KEY (id);


--
-- Name: catalog_subcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_subcategory
    ADD CONSTRAINT catalog_subcategory_name_key UNIQUE (name);


--
-- Name: catalog_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_subcategory
    ADD CONSTRAINT catalog_subcategory_pkey PRIMARY KEY (id);


--
-- Name: catalog_videos_link_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_link_key UNIQUE (link);


--
-- Name: catalog_videos_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_name_key UNIQUE (name);


--
-- Name: catalog_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_category_name_fdc3466c_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_category_name_fdc3466c_like ON catalog_category USING btree (name varchar_pattern_ops);


--
-- Name: catalog_docs_category_id_6c17bcec; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_category_id_6c17bcec ON catalog_docs USING btree (category_id);


--
-- Name: catalog_docs_link_3404100a_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_link_3404100a_like ON catalog_docs USING btree (link varchar_pattern_ops);


--
-- Name: catalog_docs_name_7251db9f_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_name_7251db9f_like ON catalog_docs USING btree (name varchar_pattern_ops);


--
-- Name: catalog_docs_subcategory_id_afc29102; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_subcategory_id_afc29102 ON catalog_docs USING btree (subcategory_id);


--
-- Name: catalog_subcategory_name_dabb2fb4_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_subcategory_name_dabb2fb4_like ON catalog_subcategory USING btree (name varchar_pattern_ops);


--
-- Name: catalog_videos_category_id_6689732a; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_category_id_6689732a ON catalog_videos USING btree (category_id);


--
-- Name: catalog_videos_link_014f3ef2_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_link_014f3ef2_like ON catalog_videos USING btree (link varchar_pattern_ops);


--
-- Name: catalog_videos_name_013fc0fd_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_name_013fc0fd_like ON catalog_videos USING btree (name varchar_pattern_ops);


--
-- Name: catalog_videos_subcategory_id_eeb3078b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_subcategory_id_eeb3078b ON catalog_videos USING btree (subcategory_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_docs_category_id_6c17bcec_fk_catalog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_category_id_6c17bcec_fk_catalog_category_id FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_docs_subcategory_id_afc29102_fk_catalog_subcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_docs
    ADD CONSTRAINT catalog_docs_subcategory_id_afc29102_fk_catalog_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES catalog_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_videos_category_id_6689732a_fk_catalog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_category_id_6689732a_fk_catalog_category_id FOREIGN KEY (category_id) REFERENCES catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_videos_subcategory_id_eeb3078b_fk_catalog_s; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY catalog_videos
    ADD CONSTRAINT catalog_videos_subcategory_id_eeb3078b_fk_catalog_s FOREIGN KEY (subcategory_id) REFERENCES catalog_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

