--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO digimundo;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO digimundo;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO digimundo;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO digimundo;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO digimundo;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO digimundo;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.auth_user (
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


ALTER TABLE public.auth_user OWNER TO digimundo;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO digimundo;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO digimundo;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO digimundo;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO digimundo;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO digimundo;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: catalog_category; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.catalog_category (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    title character varying(30) NOT NULL
);


ALTER TABLE public.catalog_category OWNER TO digimundo;

--
-- Name: catalog_category_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.catalog_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_category_id_seq OWNER TO digimundo;

--
-- Name: catalog_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.catalog_category_id_seq OWNED BY public.catalog_category.id;


--
-- Name: catalog_docs; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.catalog_docs (
    id integer NOT NULL,
    name character varying(125) NOT NULL,
    link character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    subcategory_id integer NOT NULL,
    kind character varying(3) NOT NULL
);


ALTER TABLE public.catalog_docs OWNER TO digimundo;

--
-- Name: catalog_docs_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.catalog_docs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_docs_id_seq OWNER TO digimundo;

--
-- Name: catalog_docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.catalog_docs_id_seq OWNED BY public.catalog_docs.id;


--
-- Name: catalog_subcategory; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.catalog_subcategory (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.catalog_subcategory OWNER TO digimundo;

--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.catalog_subcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_subcategory_id_seq OWNER TO digimundo;

--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.catalog_subcategory_id_seq OWNED BY public.catalog_subcategory.id;


--
-- Name: catalog_subscriber; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.catalog_subscriber (
    id integer NOT NULL,
    grade character varying(3) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.catalog_subscriber OWNER TO digimundo;

--
-- Name: catalog_subscriber_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.catalog_subscriber_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_subscriber_id_seq OWNER TO digimundo;

--
-- Name: catalog_subscriber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.catalog_subscriber_id_seq OWNED BY public.catalog_subscriber.id;


--
-- Name: catalog_videos; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.catalog_videos (
    id integer NOT NULL,
    name character varying(125) NOT NULL,
    link character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    subcategory_id integer NOT NULL,
    image character varying(200) NOT NULL,
    status boolean NOT NULL,
    order_number integer NOT NULL
);


ALTER TABLE public.catalog_videos OWNER TO digimundo;

--
-- Name: catalog_videos_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.catalog_videos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_videos_id_seq OWNER TO digimundo;

--
-- Name: catalog_videos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.catalog_videos_id_seq OWNED BY public.catalog_videos.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO digimundo;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO digimundo;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO digimundo;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO digimundo;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO digimundo;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO digimundo;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO digimundo;

--
-- Name: tarot_card; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.tarot_card (
    id integer NOT NULL,
    number character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.tarot_card OWNER TO digimundo;

--
-- Name: tarot_card_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.tarot_card_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tarot_card_id_seq OWNER TO digimundo;

--
-- Name: tarot_card_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.tarot_card_id_seq OWNED BY public.tarot_card.id;


--
-- Name: tarot_question; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.tarot_question (
    id integer NOT NULL,
    date_create date NOT NULL,
    card_one character varying(3) NOT NULL,
    card_three character varying(3) NOT NULL,
    card_two character varying(3) NOT NULL,
    response_id integer,
    week smallint NOT NULL,
    name character varying(30),
    question text,
    status character varying(2),
    email character varying(254) NOT NULL,
    CONSTRAINT tarot_question_week_36882d52_check CHECK ((week >= 0))
);


ALTER TABLE public.tarot_question OWNER TO digimundo;

--
-- Name: tarot_question_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.tarot_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tarot_question_id_seq OWNER TO digimundo;

--
-- Name: tarot_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.tarot_question_id_seq OWNED BY public.tarot_question.id;


--
-- Name: tarot_response; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.tarot_response (
    id integer NOT NULL,
    video character varying(200) NOT NULL,
    date timestamp with time zone NOT NULL
);


ALTER TABLE public.tarot_response OWNER TO digimundo;

--
-- Name: tarot_response_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.tarot_response_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tarot_response_id_seq OWNER TO digimundo;

--
-- Name: tarot_response_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.tarot_response_id_seq OWNED BY public.tarot_response.id;


--
-- Name: tarot_week; Type: TABLE; Schema: public; Owner: digimundo
--

CREATE TABLE public.tarot_week (
    id integer NOT NULL,
    number_week smallint NOT NULL,
    year smallint NOT NULL,
    CONSTRAINT tarot_week_number_week_check CHECK ((number_week >= 0)),
    CONSTRAINT tarot_week_year_check CHECK ((year >= 0))
);


ALTER TABLE public.tarot_week OWNER TO digimundo;

--
-- Name: tarot_week_id_seq; Type: SEQUENCE; Schema: public; Owner: digimundo
--

CREATE SEQUENCE public.tarot_week_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tarot_week_id_seq OWNER TO digimundo;

--
-- Name: tarot_week_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: digimundo
--

ALTER SEQUENCE public.tarot_week_id_seq OWNED BY public.tarot_week.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_category ALTER COLUMN id SET DEFAULT nextval('public.catalog_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_docs ALTER COLUMN id SET DEFAULT nextval('public.catalog_docs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_subcategory ALTER COLUMN id SET DEFAULT nextval('public.catalog_subcategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_subscriber ALTER COLUMN id SET DEFAULT nextval('public.catalog_subscriber_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_videos ALTER COLUMN id SET DEFAULT nextval('public.catalog_videos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_card ALTER COLUMN id SET DEFAULT nextval('public.tarot_card_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_question ALTER COLUMN id SET DEFAULT nextval('public.tarot_question_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_response ALTER COLUMN id SET DEFAULT nextval('public.tarot_response_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_week ALTER COLUMN id SET DEFAULT nextval('public.tarot_week_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
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
31	Can add question	11	add_question
32	Can change question	11	change_question
33	Can delete question	11	delete_question
34	Can add response	12	add_response
35	Can change response	12	change_response
36	Can delete response	12	delete_response
37	Can add card	13	add_card
38	Can change card	13	change_card
39	Can delete card	13	delete_card
40	Can add week	14	add_week
41	Can change week	14	change_week
42	Can delete week	14	delete_week
43	Can add subscriber	15	add_subscriber
44	Can change subscriber	15	change_subscriber
45	Can delete subscriber	15	delete_subscriber
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 45, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
4	pbkdf2_sha256$36000$cseAHNq0iD1h$X66ZVYLdtOO8fCUXuMuEviWMVDlFyx3tqWZB4Aq5sGw=	2018-01-12 00:05:06.304802+00	f	Cristobal				f	t	2017-10-20 21:11:05.618928+00
10	pbkdf2_sha256$36000$uVk2roVDYvvR$rlSZY3zHnntF0dq/VUT53kBaQFk8ILQJmY7nGgKA8BU=	2018-02-28 21:13:02.205323+00	f	sandramexico				f	t	2017-11-28 22:24:31.857449+00
12	pbkdf2_sha256$36000$xsPEuafY9yEF$GS0RAMxFwQuxnfT5zgGf5HF3m9f4Q76Z21qWz08Peng=	2018-01-13 18:36:50.1795+00	f	Lilianamexico				f	t	2017-11-28 22:25:42.776981+00
3	pbkdf2_sha256$36000$ckDANcDLAkAE$BGCU2q7GBg/2xCkhhBhwtxepcO1ASsubakOzqHVSk6U=	\N	f	TescaTester				f	t	2017-10-20 21:08:38.53895+00
38	pbkdf2_sha256$36000$WBd2ZygJZL3N$iJ03gMWLtTLogW6wgqF0Vo7veKM1B+T4rWYw/Ltffso=	2018-06-04 13:34:47.251707+00	f	rocio.muñoz				f	t	2018-05-24 05:32:44.926017+00
26	pbkdf2_sha256$36000$WdOice7TArj5$4FkzCjgd/9PwxaCBzMvPRhvAEPFQdH9t3naAPn7pzp8=	2018-05-30 12:13:06.163038+00	f	danae.sosa				f	t	2018-05-23 18:09:53.576162+00
8	pbkdf2_sha256$36000$T8yBbnnSXvFf$sLmfQ0M5hzg00PD1SRmq6ggJjXLmb3cxgXsBA4eQP1A=	2017-12-14 23:31:05.751739+00	f	lorenamexico				f	t	2017-11-28 22:23:55+00
46	pbkdf2_sha256$36000$wul5yvzpCXEJ$ujI+iCYsbd/vU5Kl6qYgqDhn3uRm1D2wmgFhdMD1TGA=	2018-05-31 16:07:10.563653+00	f	yordana.gonzales				f	t	2018-05-24 06:15:28.493846+00
7	pbkdf2_sha256$36000$AABWYAa9bGR5$QVsI6Hrubuzr9Ry2S6yV3/PDPtWeUar6h1O+65W3iiA=	\N	f	Martiargentina				f	t	2017-11-22 20:19:15.628384+00
6	pbkdf2_sha256$36000$Uq25j8b0bTm7$Bb1NThZG6FhrOIL2zycCKRECEKAXijGFRmB9UOO2So8=	2017-11-29 14:56:04.903392+00	f	Gastonargentina				f	t	2017-11-22 20:18:54+00
14	pbkdf2_sha256$36000$hoYZDgMf9ic6$Z3sNnCBQ9YVgMIb0U6Xpm67g4kN4f6vIsiQ5QFidSpU=	2018-03-20 01:54:13.293812+00	f	julianacolombia				f	t	2017-11-29 21:23:48.223104+00
15	pbkdf2_sha256$36000$2S13MW4eb9ki$rK1E7B4lNy4CDJnDuAmGFVqsImGvb+VhRxlrcTVYksk=	2017-12-26 05:54:47.581256+00	f	pamelamexico				f	t	2017-12-05 02:06:17.528288+00
51	pbkdf2_sha256$36000$p5JkgN80eUWh$KBR/ohAGLHrStAPiiV69pCouaz0mRmoa6SFR7Pvi4Nc=	2018-06-01 12:03:51.922166+00	f	lorena.zunino				f	t	2018-05-28 19:44:26.022133+00
42	pbkdf2_sha256$36000$ZxeKQ3Vp1g84$V6PE1yUhmU1FyZiD78ljyQBt4UBJl9U7FAlCyGUU/vA=	\N	f	segio.ganim				f	t	2018-05-24 06:14:16.588816+00
16	pbkdf2_sha256$36000$U7qInPHmEDJF$s4GhkTdIsEtk7dMuAiRC17fImhZXKX/up4CRaBnA0kg=	2017-12-29 16:47:06.153634+00	f	dielkisfrancia				f	t	2017-12-13 22:35:18.768391+00
19	pbkdf2_sha256$36000$oJf4PTz08ugN$mKkP8MLi+v0ZW4rTcZK4Ahxg3ANmT00OGftUemjDLp4=	2018-05-13 18:45:22.470086+00	t	Carlos			frontend2@digimundo.com.mx	t	t	2018-03-09 06:35:53.986787+00
13	pbkdf2_sha256$36000$10QXyejz5RpL$o7F/kLZ0K4adGXtZA5omx2iLUp2htlsC8xJHw4CcAgA=	2018-01-22 22:12:59.460394+00	f	jaimemexico				f	t	2017-11-29 21:23:33+00
5	pbkdf2_sha256$36000$IGk9bv9Numca$9Q4ml3ygGge6OwlqemmbTnDkmd89fxwRZI2m62Ii0fg=	2018-06-12 21:06:37.867953+00	f	Adrianamexico				f	t	2017-11-22 05:48:02.467941+00
33	pbkdf2_sha256$36000$AWqKmEklnYeD$XNJH6RgY9a7EOA7wgx3273061NaI+h/9d1qatR5eCDc=	2018-06-12 10:36:17.337661+00	f	maria.martinez				f	t	2018-05-23 18:31:21.501022+00
32	pbkdf2_sha256$36000$y0haNDkE5AVj$iA1ql6ttCt35puAv5EJv3xpI5fPF/LouLZjmCO8BQpQ=	\N	f	marcos.cretan				f	t	2018-05-23 18:30:09.007837+00
53	pbkdf2_sha256$36000$wuoaMoDMrJSe$0sXUJi/hVqYxKvBcteDlf0qf26ePN6YGE8TfEnPU88A=	2018-06-07 11:57:23.362641+00	f	silvia.bidegain				f	t	2018-05-28 19:45:12.489797+00
1	pbkdf2_sha256$36000$PSA17iLc1WUi$QcYumApj8ku1M0GCz3np0CV5+P6xCn5uXwydSP+Sh8U=	2018-06-13 18:19:46.064758+00	t	Rich			drdr_2@hotmail.com	t	t	2017-08-30 08:21:12.409355+00
54	pbkdf2_sha256$36000$e3bzuXCBzQg1$yL7QAlVo2rUzl04v0bZzmE6w2IlHT6mRYLsunZLurTU=	2018-06-06 00:02:23.676231+00	f	rita.pirotto				f	t	2018-05-29 17:42:25.290416+00
48	pbkdf2_sha256$36000$duDmG0IlJvdu$ZUYY2kGQ1jrOyKk8kAJua3sCF1zkgGcrjtwZqG0pK/U=	2018-06-13 23:49:51.441744+00	f	cecilia.hermida				f	t	2018-05-24 06:16:09.860774+00
39	pbkdf2_sha256$36000$Dc1DhRTluSQd$1CtprXeck5dYvevi/b1Ne9rsqmfl4Wlf15G37jurWwM=	2018-06-06 21:13:17.608994+00	f	rosana.ciccarino				f	t	2018-05-24 05:33:50.670586+00
29	pbkdf2_sha256$36000$yD7IM1E5iXgR$2xl5lSKSiLL2i9gfJleF9fdc/48IHLxa27aIKu9bSPU=	2018-06-08 14:54:44.642317+00	f	gabriela.lopez				f	t	2018-05-23 18:22:43.313489+00
22	pbkdf2_sha256$36000$FAH2ABXE5AIs$Sjcb1AHGQrNrkYTlIy//GYeKUNZa/L45IigplvyarBM=	2018-05-31 17:26:22.096897+00	f	anabella.platero				f	t	2018-05-23 18:02:24.339236+00
23	pbkdf2_sha256$36000$6Sqo8VtJERVV$p6VdxdU/btFHIMee5wggw5iFxPZSKny4PVA4ZzLISkc=	2018-05-30 13:41:03.323475+00	f	andres.lema				f	t	2018-05-23 18:03:00.715774+00
47	pbkdf2_sha256$36000$HnshvWLoU3ig$MWV0SfbSnrQxaB01K0t566zmk9dpdQZ+Q/e1iPiJTDU=	2018-05-30 21:47:26.499481+00	f	teresita.lahis				f	t	2018-05-24 06:15:59.208293+00
50	pbkdf2_sha256$36000$BzwNiFFkypsO$vc7J/PIVJMNugnI5MLTWV9ynmyDvMLPYdPwVT1/MA/Q=	2018-06-12 19:18:38.055956+00	f	elizabeth.bak				f	t	2018-05-24 06:16:38.622279+00
27	pbkdf2_sha256$36000$Y45uc911yI5x$67CdIU5cR+aO7SysYWXOu6fb/vWNWPTe9q+RumdTLmE=	2018-06-04 18:11:30.478816+00	f	jorgelina.ruso				f	t	2018-05-23 18:14:38.811487+00
2	pbkdf2_sha256$36000$jj3G3ZRAvKMw$cD5ueB+cK6/Jgj23lYzssL+rIJz4DMFnc2Q6a/0fYwY=	2018-06-13 19:55:57.37248+00	f	TescaCEO				f	t	2017-10-18 22:09:00.020304+00
56	pbkdf2_sha256$36000$7Sdt10CZCsrG$qZpnBTE3gQh7pBVBgi3SQtV3zn/TXFtOxc2t/Yl8RRc=	2018-06-01 13:46:11.051573+00	f	andrea.martinez				f	t	2018-05-29 22:35:14.289318+00
43	pbkdf2_sha256$36000$lZE6HNijPZR9$d2/+89wC+Y1hNdPtwf8uNNlTWjZpOm0J1irOGufgfvE=	2018-06-06 21:12:11.457491+00	f	silvia.diorno				f	t	2018-05-24 06:14:39.676543+00
31	pbkdf2_sha256$36000$Jrz1SIcjhGQQ$P+pBlAPay2oeESMF/55SNic475qIlcfMZxrhRwqVQeA=	2018-06-14 03:22:06.977996+00	f	laura.dutra				f	t	2018-05-23 18:24:54.637509+00
40	pbkdf2_sha256$36000$7ALZDSnautrU$FBPVUTtoCCNJKEwMaEffzJ9YzKfecXEolNj0kdEJnRc=	2018-06-05 14:05:47.599909+00	f	sabrina.bado				f	t	2018-05-24 05:34:02.922305+00
45	pbkdf2_sha256$36000$R8oz3Xv3U7iP$m8LxsdbZKT2HnyIlXTm2++iJzfcmYWMOVE0k3uUmoSE=	2018-05-31 00:17:38.944425+00	f	victor.morales				f	t	2018-05-24 06:15:05.256984+00
30	pbkdf2_sha256$36000$e8NHoEtdwXQf$qlMlquPf5RvJ+xiYz10qbf8UVbhO+KFThnyks9SrETM=	2018-05-31 12:48:30.879845+00	f	katia.ciprino				f	t	2018-05-23 18:23:54.911417+00
35	pbkdf2_sha256$36000$JcZiukjrSPDe$N8Z74Y/oHELuaqUm3fzv8W46O0mjLFNygiJL3HOMtfk=	2018-06-06 00:22:26.208006+00	f	natalia.acevedo				f	t	2018-05-23 18:33:59.648477+00
44	pbkdf2_sha256$36000$E3kv2lVvbQxK$X+2dUOM80Duc8eg8bDu3WjEKcnCruIMmStFQ3QV1qM0=	2018-05-31 20:46:50.263794+00	f	tess.mirabal				f	t	2018-05-24 06:14:49.501655+00
52	pbkdf2_sha256$36000$TbjxLS75Cv0Q$1KrZZ46UX53g4XVwiIVFLUr5CvLGLGVtnFW9LYwTqXI=	2018-06-01 14:51:36.965316+00	f	margot.peña				f	t	2018-05-28 19:45:01.803792+00
34	pbkdf2_sha256$36000$QYBzgUdQJ5gy$1sv8pQ0kkRSPQzp6h5pG7s4HoSdgMc0tGt8F57krQuc=	2018-06-11 15:16:05.529381+00	f	maria.natalia.martinez				f	t	2018-05-23 18:32:46.872332+00
55	pbkdf2_sha256$36000$WaE2YsjI7Ewa$a5rvJEoso42Hf/OL0b/ANSznLKaTziTs0FUdq6zMMuE=	2018-06-13 23:08:24.960694+00	f	alejandra.zurica				f	t	2018-05-29 17:43:31.174534+00
9	pbkdf2_sha256$36000$Ra7kMOCGrgvb$AoQMXVmv4RhhJLqeG2olPp5rDbD+PN/VGNBtE+gXgVg=	2018-06-07 15:04:32.570424+00	f	valeriamexico				f	t	2017-11-28 22:24:06+00
37	pbkdf2_sha256$36000$8EW4H0NGUbQa$MJKLulUCU4vdH80aGHd5Epe11XUYr4JruqR96SWIATk=	2018-06-13 13:23:05.562164+00	f	noemia.naranja				f	t	2018-05-24 05:32:33.717483+00
41	pbkdf2_sha256$36000$YDbyANikKLB8$Ec1DLO92Q1C7jFxJYOwApJePqe1CSx80WM4WlJ57w2E=	2018-06-12 13:23:13.73115+00	f	katia.lima				f	t	2018-05-24 05:34:15.358094+00
25	pbkdf2_sha256$36000$yLrAqxGAolNF$c/tvFPnhnsX8SlNL0R2FtNJgFzFBDUUS6A9WQkEiLAs=	2018-05-30 14:06:17.968421+00	f	christian.bartoli				f	t	2018-05-23 18:06:03.825386+00
78	pbkdf2_sha256$36000$MTzLnqz0jl95$NHq2vhkvyNsT5XWC8LvyUcKOuDWxNjh7YrB4pcQ0VAE=	\N	f	johann.hagobian				f	t	2018-06-13 05:19:53.522876+00
79	pbkdf2_sha256$36000$k3EQSn2DIIQB$hnvjGdFwCYfWhWTr/8O0pu0FkOtHTarI6qnOTbwRMA8=	\N	f	jorge.bermudez				f	t	2018-06-13 05:21:08.728137+00
70	pbkdf2_sha256$36000$ucy4oDC9cQ4Q$jTQYhQbxg4Sle+uSJAsyg7uoQLZ3mGMlyRwbdlp08sc=	2018-06-06 23:53:29.461799+00	f	alejandra.heuer				f	t	2018-06-06 09:36:43.862581+00
82	pbkdf2_sha256$36000$Vy14WxMpwrse$FcNBpDXagosa9chf6ss/BV/MJ0z8ZLId/Nv6YViG9m8=	\N	f	ruth.odini				f	t	2018-06-13 05:22:03.251424+00
83	pbkdf2_sha256$36000$kijjil2kiIoI$Fq4Fuq3ZiuenbdUwImmEus4rU5TpTIxnRkOY3hDsTpE=	\N	f	ivan.sanchez				f	t	2018-06-13 05:22:20.197174+00
84	pbkdf2_sha256$36000$nfHrprF6vUZh$OlkERggLIX+/vNMGMFah0Qzy1kvqxMKFsy5tUUkMN2U=	\N	f	ivan.sanchez2				f	t	2018-06-13 05:26:08.95108+00
73	pbkdf2_sha256$36000$W3Uh6efNLBwb$CFFMkApeRSHY6V4pGVnGLpG0x3oAtdLcx8O8zTm8T4A=	2018-06-13 18:17:02.575813+00	f	laura.otero				f	t	2018-06-06 09:49:44.332317+00
63	pbkdf2_sha256$36000$6B7deOnA4nrX$N6y6Y2jBsX3On1ZoAEUogU8YWTAE7UIlwsvPMKEGXNs=	\N	f	margot.pena			margotpc33@gemail.com	f	t	2018-06-01 02:46:47.386825+00
62	pbkdf2_sha256$36000$hTkkDhfMcNWo$P/MbdT6t9nzwmRVHUGiOZfG1B8xbzfDlklcQ0Zf9J50=	2018-06-01 10:22:17.582023+00	f	loreley.martinez				f	t	2018-05-31 20:14:00.781224+00
81	pbkdf2_sha256$36000$hHDqJuFWLUDW$qVHKFOhScRhvwAcDmNVrs2wovI+2D5MJJWmv6PkcPj8=	2018-06-13 19:45:02.144959+00	f	leonardo.luzardo				f	t	2018-06-13 05:21:44.741887+00
76	pbkdf2_sha256$36000$zmLhkDNZbWcg$nVGn3K102AMReCyBeQnIkE8U7vHRQVtUVTWBlMoD+i0=	2018-06-13 23:52:39.634036+00	f	cecilia.arbeleche				f	t	2018-06-13 05:18:52.14928+00
80	pbkdf2_sha256$36000$Y7ptsfylbW9Z$c4ZAq9qZO7m3aHmWDea+zzdrhvtEtdvP5YooWThal2g=	2018-06-14 00:31:58.885042+00	f	laura.rinaldi				f	t	2018-06-13 05:21:26.343261+00
72	pbkdf2_sha256$36000$XjZcEIS74nEb$Squ/yDAKAM/Zap52LLr6jEnd8NDn+PxVQ4UE/NlG2lg=	2018-06-07 20:08:34.966231+00	f	ines.cabral				f	t	2018-06-06 09:42:51.320574+00
65	pbkdf2_sha256$36000$I38WnIIjAyqF$mMhs0rW9RUkj7H7j/4NcDCacaPVtUA/arZIcuQ4Won4=	\N	f	adriana.burgueño				f	t	2018-06-03 16:59:26.799065+00
59	pbkdf2_sha256$36000$ZNiUmkfg2hJy$YFH6Oy6NHJCc0AE2qBRbxfus2BuW8LT/twTM1gDI0zM=	2018-06-04 02:01:54.602597+00	f	virginia.moreira				f	t	2018-05-29 22:54:40.069226+00
57	pbkdf2_sha256$36000$ZWLKcIflGoat$bJuDwlMDsZp6+O/kUrWkDt+xQuHyBm4ulsQe0Co4iQ8=	2018-06-04 03:48:19.294418+00	f	nora.rodriguez				f	t	2018-05-29 22:51:56.631974+00
64	pbkdf2_sha256$36000$DW6YgiHPmJXH$01qXP59HjG7NazZVMLSzuNLR+r2v9oEowF2MUsCuWeQ=	2018-06-07 23:58:28.761398+00	f	jessica.bauer				f	t	2018-06-03 16:57:53.913441+00
67	pbkdf2_sha256$36000$MaEabIcXUzjx$P+Dky3orvtzbHaqJIwRLMn3pMBFwqjHRg0ns/cARWKQ=	2018-06-08 23:54:33.664934+00	f	juanita.ghiterman				f	t	2018-06-04 04:54:15.084282+00
58	pbkdf2_sha256$36000$tUyVQjJajV9m$VaIKH8uzWQesw2e1NIBaZAEnUWQQKdqIe5CGAw/7OnE=	2018-06-10 14:33:32.914611+00	f	ruben.fistemberg				f	t	2018-05-29 22:52:55.989529+00
68	pbkdf2_sha256$36000$pPKACAYmZPuu$LrKLqnlS4h6mWlUyZJTv22bBTUYE7vykLIWRT4viCro=	2018-06-04 20:09:35.126147+00	f	Sergio.ganim			seralmagro77@gmail.com	f	t	2018-06-04 20:09:09.407473+00
69	pbkdf2_sha256$36000$j3yswme0uIjZ$JUBOBXxXEZPxVViuuGG835Ro6jFUd4gpcER7TmclH48=	\N	f	viviana.chumino				f	t	2018-06-06 09:36:06.951651+00
71	pbkdf2_sha256$36000$xKfFAipME3OY$yAPgRX1BTE6ZOABkdTSOTzsI80CyKv1eId6rs9fB/NE=	\N	f	laura.lapitz				f	t	2018-06-06 09:37:32.619328+00
61	pbkdf2_sha256$36000$h9oE2Rib9hsO$uQVyaPqfykJ08MuUFqedlE/nmvrucCRhLkwekJBEkAA=	2018-06-11 23:09:22.375499+00	f	raquel.meyer				f	t	2018-05-31 20:11:12.417056+00
74	pbkdf2_sha256$36000$P3yjeQqHvYSr$T6Kb4kT5hROfVs+kxYvNLJxb3dfgIZWCF2WNtuMV50w=	2018-06-12 12:33:07.091015+00	f	Diegomexico				f	t	2018-06-07 01:16:23.63343+00
60	pbkdf2_sha256$36000$bkmGCcdLwqjH$ewE567aJn6qHRzgZFpftjQw9hRVNSWbwRxG64aOHp5U=	2018-06-12 18:58:54.549316+00	f	valeria.macagno				f	t	2018-05-31 20:07:01+00
75	pbkdf2_sha256$36000$TGJvEGuOLdRg$fHTRPbpvGMWhv7PY9FKWRqBJ7j7hx1dhY+tWD64jxtc=	2018-06-13 03:05:05.678143+00	f	andrea.castagnola				f	t	2018-06-12 15:49:35.582724+00
18	pbkdf2_sha256$36000$a5OvXmYaqY67$mZy/g8B337pgbiTeYh4x7MsJ2XrHwSazjeFvIHUcIeY=	2018-06-13 05:06:30.977693+00	t	Basilio			softwaremanager@digimundo.com.mx	t	t	2018-03-09 06:29:46.538353+00
77	pbkdf2_sha256$36000$AzIQREmUG7xt$OpCkzanf5hY3UY/X2Mhl6d1hbyPhIpmUAQCnb3zWFac=	\N	f	fabiana.camino				f	t	2018-06-13 05:19:21.481557+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 84, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: catalog_category; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.catalog_category (id, name, title) FROM stdin;
1	Bloque_0	Introduccion
2	Bloque_1	Tarot
3	Bloque_2	Metagenealogia
4	Bloque_3	Psicochamanismo
\.


--
-- Name: catalog_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.catalog_category_id_seq', 4, true);


--
-- Data for Name: catalog_docs; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.catalog_docs (id, name, link, created_at, category_id, subcategory_id, kind) FROM stdin;
3	I Le Bateleur BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/I+Le+Bateleur+BN.jpg	2017-09-18 15:46:52.064951+00	2	1	IMG
4	II La Papesse BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/II+La+Papesse+BN+2.jpg	2017-09-18 15:47:06.717948+00	2	1	IMG
5	III LImperatrice BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/III+LImperatrice+BN+2.jpg	2017-09-18 15:47:19.380446+00	2	1	IMG
6	IIII LEmpereur BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/IIII+LEmpereur+BN.jpg	2017-09-18 15:47:28.567944+00	2	1	IMG
7	Lamoureux BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Lamoureux+BN.jpg	2017-09-18 15:48:03.492439+00	2	1	IMG
8	Le Mat BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Le+Mat+BN.jpg	2017-09-18 15:48:14.331937+00	2	1	IMG
9	V Le Pape BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/V+Le+Pape+BN.jpg	2017-09-18 15:48:39.263432+00	2	1	IMG
10	VII Le Chariot BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VII+Le+Chariot+BN.jpg	2017-09-18 15:48:49.11293+00	2	1	IMG
11	VIII La Justice BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VIII+La+Justice+BN.jpg	2017-09-18 15:49:00.187429+00	2	1	IMG
12	VIIII LHermite BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/VIIII+LHermite+BN.jpg	2017-09-18 15:49:14.60493+00	2	1	IMG
13	X La Roue de Fortune BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/X+La+Roue+de+Fortune+BN.jpg	2017-09-18 15:49:24.475425+00	2	1	IMG
14	XI La Force BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XI+La+Force+BN.jpg	2017-09-18 15:49:54.606919+00	2	1	IMG
15	XII Le Pendu BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XII+Le+Pendu+BN.jpg	2017-09-18 15:50:04.287918+00	2	1	IMG
16	XIII Arcano sin nombre BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XIII+Arcano+sin+nombre+BN.jpg	2017-09-18 15:50:13.255916+00	2	1	IMG
17	XIIII Temperance BN 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XIIII+Temperance+BN+2.jpg	2017-09-18 15:50:24.654915+00	2	1	IMG
18	XV Le Diable BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XV+Le+Diable+BN.jpg	2017-09-18 15:50:36.563411+00	2	1	IMG
19	XVI La Maison Dieu BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVI+La+Maison+Dieu+BN.jpg	2017-09-18 15:50:47.428409+00	2	1	IMG
20	XVII LEtoile BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVII+LEtoile+BN.jpg	2017-09-18 15:50:57.531908+00	2	1	IMG
21	XVIII La Lune BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVIII+La+Lune+BN.jpg	2017-09-18 15:51:11.171406+00	2	1	IMG
22	XVIIII Le Soleil BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XVIIII+Le+Soleil+BN.jpg	2017-09-18 15:51:21.443905+00	2	1	IMG
23	XX Le Iugement BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XX+Le+Iugement+BN.jpg	2017-09-18 15:51:29.794402+00	2	1	IMG
24	XXI Le Monde BN	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/XXI+Le+Monde+BN.jpg	2017-09-18 15:51:37.266901+00	2	1	IMG
25	Correspondencias Palos del Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Correspondencias+Palos+del+Tarot.pdf	2017-09-20 05:13:20.218113+00	2	1	PDF
26	Jodorowsky Alejandro - La Via Del Tarot-1	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Jodorowsky+Alejandro+-+La+Via+Del+Tarot-1.pdf	2017-09-20 06:35:04.349649+00	2	1	PDF
27	Jodorowsky Alejandro - La Via Del Tarot-2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Jodorowsky+Alejandro+-+La+Via+Del+Tarot-2.pdf	2017-09-20 06:35:13.48365+00	2	1	PDF
28	La Numerología en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/La+Numerolog%C3%ADa+en+el+Tarot.pdf	2017-09-20 06:35:22.712151+00	2	1	PDF
29	Referencia Rápida- Arcano 0 - Le Mat	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+0+-+Le+Mat.pdf	2017-09-20 06:35:39.727153+00	2	1	PDF
31	Referencia Rápida- Arcano I - Le Bateleur	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+I+-+Le+Bateleur.pdf	2017-09-20 06:36:03.285657+00	2	1	PDF
32	Referencia Rápida- Arcano II - La Papesse - La Papisa	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+II+-+La+Papesse+-+La+Papisa.pdf	2017-09-20 06:36:34.908659+00	2	1	PDF
33	Referencia Rápida- Arcano III - Limperatrice - La Emperatriz	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+III+-+Limperatrice+-+La+Emperatriz.pdf	2017-09-20 06:36:54.259661+00	2	1	PDF
34	Referencia Rápida- Arcano IIII - LEmpereur - El Emperador	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+IIII+-+LEmpereur+-+El+Emperador.pdf	2017-09-20 06:37:09.000663+00	2	1	PDF
35	Referencia Rápida- Arcano V - Le Pape - El Papa	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+V+-+Le+Pape+-+El+Papa.pdf	2017-09-20 06:37:19.413165+00	2	1	PDF
36	Referencia Rápida- Arcano VI - LAmoureux - El Enamorado	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VI+-+LAmoureux+-+El+Enamorado.pdf	2017-09-20 06:37:35.440166+00	2	1	PDF
37	Referencia Rápida- Arcano VII - Le Chariot - El Carro	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VII+-+Le+Chariot+-+El+Carro.pdf	2017-09-20 06:37:48.869167+00	2	1	PDF
38	Referencia Rápida- Arcano VIII - La Justice- La Justicia	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VIII+-+La+Justice-+La+Justicia.pdf	2017-09-20 06:38:03.725668+00	2	1	PDF
39	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+VIIII+-+LHermite+-+El+Ermita%C3%B1o.pdf	2017-09-20 06:38:40.840173+00	2	1	PDF
41	Referencia Rápida- Arcano XI - La Force - La Fuerza	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XI+-+La+Force+-+La+Fuerza.pdf	2017-09-20 06:39:12.381677+00	2	1	PDF
42	Referencia Rápida- Arcano XII - Le Pendu - El Colgado	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XII+-+Le+Pendu+-+El+Colgado.pdf	2017-09-20 06:39:22.582178+00	2	1	PDF
43	Referencia Rápida- Arcano XIII - Arcano sin Nombre	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIII+-+Arcano+sin+Nombre.pdf	2017-09-20 06:39:39.086179+00	2	1	PDF
45	Referencia Rápida- Arcano XIIII - Temperance - La Templanza	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIIII+-+Temperance+-+La+Templanza.pdf	2017-09-20 06:40:13.655683+00	2	1	PDF
46	Referencia Rápida- Arcano XVI - La Maison Dieu - La Torre	Referencia+R%C3%A1pida-+Arcano+XVI+-+La+Maison+Dieu+-+La+Torre.pdf \t\t\thttp://ddstbjmdfz6e2.cloudfront.net/law/02/docs/	2017-09-20 06:40:34.773186+00	2	1	PDF
47	Referencia Rápida- Arcano XVII - L Etoille - La Estrella	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVII+-+L+Etoille+-+La+Estrella.pdf	2017-09-20 06:40:45.434687+00	2	1	PDF
40	Referencia Rápida- Arcano X – La Roue de Fortune – La Rueda de la Fortuna	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+X.pdf	2018-06-01 08:25:15.43322+00	2	1	PDF
30	Los Colores en el Tarot	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Los+Colores+en+el+Tarot.pdf	2018-06-01 20:54:06.007129+00	2	1	PDF
48	Referencia Rápida- Arcano XVIII - La Lune - La Luna	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVIII+-+La+Lune+-+La+Luna.pdf	2017-09-20 06:40:56.128187+00	2	1	PDF
49	Referencia Rápida- Arcano XVIIII - Le Soleil - El Sol	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XVIIII+-+Le+Soleil+-+El+Sol.pdf	2017-09-20 06:41:17.69819+00	2	1	PDF
50	Referencia Rápida- Arcano XX - Le Iugement - El Juicio	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XX+-+Le+Iugement+-+El+Juicio.pdf	2017-09-20 06:41:39.654193+00	2	1	PDF
51	Referencia Rápida- Arcano XXI - Le Monde - El Mundo	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XXI+-+Le+Monde+-+El+Mundo.pdf	2017-09-20 06:41:50.144694+00	2	1	PDF
52	Tarea- Ejercicios de Tarot – Semana 1	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+1.docx	2017-09-20 06:43:43.744706+00	2	1	WRD
53	Tarea- Ejercicios de Tarot – Semana 2	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+2.docx	2017-09-20 06:43:53.370208+00	2	1	WRD
54	Tarea- Ejercicios de Tarot – Semana 3	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+3.docx	2017-09-20 06:44:05.323709+00	2	1	WRD
55	Tarea- Ejercicios de Tarot – Semana 4	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+4.docx	2017-09-20 06:44:14.40471+00	2	1	WRD
56	Tarea- Ejercicios de Tarot – Semana 5	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Tarea-+Ejercicios+de+Tarot+%E2%80%93+Semana+5.docx	2017-09-20 06:44:23.493711+00	2	1	WRD
57	El Centro Emocional y Sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Emocional+y+Sus+Nudos.pdf	2017-09-20 06:44:46.731713+00	3	1	PDF
58	El Centro Intelectual y sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Intelectual+y+sus+Nudos.pdf	2017-09-20 06:44:57.069214+00	3	1	PDF
59	El Centro Sexual-Creativo y sus Nudos	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/El+Centro+Sexual-Creativo+y+sus+Nudos.pdf	2017-09-20 06:45:06.330216+00	3	1	PDF
60	Referencia Rápida - Tipo de Repetición Genealógica	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+R%C3%A1pida+-+Tipo+de+Repetici%C3%B3n+Geneal%C3%B3gica.pdf	2017-09-20 06:45:28.037217+00	3	1	PDF
61	Referencia Rapida- La Finalidad en el Arbol Genealógico- Trampa y Tesoro	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+Rapida-+La+Finalidad+en+el+Arbol+Geneal%C3%B3gico-+Trampa+y+Tesoro.pdf	2017-09-20 06:45:49.87772+00	3	1	PDF
62	Las Repeticiones en mis Centros	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Las+Repeticiones+en+mis+Centros.docx	2017-09-20 06:46:11.088223+00	3	1	WRD
63	Referencia Rápida- Niveles de Conciencia	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Referencia+R%C3%A1pida-+Niveles+de+Conciencia.pdf	2017-09-20 06:46:35.849225+00	3	1	PDF
64	Símbolos para Analizar el Árbol Genealógico	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/S%C3%ADmbolos+para+Analizar+el+%C3%81rbol+Geneal%C3%B3gico.pdf	2017-09-20 06:46:46.868726+00	3	1	PDF
65	Tu Arbol Genealógico	http://ddstbjmdfz6e2.cloudfront.net/law/03/docs/Tu+Arbol+Geneal%C3%B3gico.docx	2017-09-20 06:47:00.567729+00	2	1	PDF
66	Alejandro-Jodorowsky-Manual-Psicomagia Consejos pa_	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/Alejandro-Jodorowsky-Manual-Psicomagia+Consejos+pa_.pdf	2017-09-20 06:47:26.668731+00	4	1	PDF
67	El Héroe de las Mil Caras	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/El+H%C3%A9roe+de+las+Mil+Caras.pdf	2017-09-20 06:47:36.028231+00	4	1	PDF
68	Jodorowski_Alejandro-_Psicomagia	http://ddstbjmdfz6e2.cloudfront.net/law/04/docs/Jodorowski_Alejandro-_Psicomagia.pdf	2017-09-20 06:47:45.067733+00	4	1	PDF
44	Referencia Rápida- Arcano XV - Le Diable - El Diablo	http://ddstbjmdfz6e2.cloudfront.net/law/02/docs/Referencia+R%C3%A1pida-+Arcano+XIIII+-+Le+Diable+-+El+Diablo.pdf	2018-06-01 08:24:25.43396+00	2	1	PDF
\.


--
-- Name: catalog_docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.catalog_docs_id_seq', 68, true);


--
-- Data for Name: catalog_subcategory; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.catalog_subcategory (id, name) FROM stdin;
1	Test
\.


--
-- Name: catalog_subcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.catalog_subcategory_id_seq', 1, true);


--
-- Data for Name: catalog_subscriber; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.catalog_subscriber (id, grade, user_id) FROM stdin;
1	PSI	5
3	PSI	19
4	PSI	4
5	PSI	6
6	PSI	16
7	PSI	13
8	PSI	14
9	PSI	12
10	PSI	8
11	PSI	7
12	PSI	15
14	PSI	10
16	PSI	3
17	PSI	9
2	TAR	18
20	TAR	22
21	TAR	23
23	TAR	25
24	TAR	26
25	TAR	27
27	TAR	29
28	TAR	30
29	TAR	31
30	TAR	32
31	TAR	33
32	TAR	34
33	TAR	35
34	TAR	37
35	TAR	38
36	TAR	39
37	TAR	40
38	TAR	41
39	TAR	42
40	TAR	43
41	TAR	44
42	TAR	45
43	TAR	46
44	TAR	47
45	TAR	48
47	TAR	50
15	PSI	2
13	TAR	1
48	TAR	51
49	TAR	52
50	TAR	53
51	TAR	55
52	TAR	54
53	TAR	56
54	TAR	57
55	TAR	58
56	TAR	59
57	TAR	62
58	TAR	60
59	TAR	61
61	TAR	65
62	TAR	64
65	TAR	67
66	TAR	69
67	TAR	70
68	TAR	71
69	TAR	72
70	TAR	73
71	PSI	74
72	TAR	75
73	TAR	76
74	TAR	77
75	TAR	78
76	TAR	79
77	TAR	80
78	TAR	81
79	TAR	82
80	TAR	84
\.


--
-- Name: catalog_subscriber_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.catalog_subscriber_id_seq', 80, true);


--
-- Data for Name: catalog_videos; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.catalog_videos (id, name, link, created_at, category_id, subcategory_id, image, status, order_number) FROM stdin;
210	Actitud y Ética del Tarologo 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+4.mp4	2018-05-22 08:34:06.931096+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+4.jpg	f	0
213	Actitud y Ética del Tarologo 7	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+7.mp4	2018-05-22 08:34:06.941568+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+7.jpg	f	0
216	Antecedentes	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Antecedentes.mp4	2018-05-22 08:34:06.951967+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Antecedentes.jpg	f	0
165	Conflicto de Fracaso 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+3.mp4	2018-05-22 19:12:36.303904+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+3.jpg	t	0
168	Diferentes Tipos de Ego 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Diferentes+Tipos+de+Ego+2.mp4	2018-05-22 19:12:36.314283+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Diferentes+Tipos+de+Ego+2.jpg	t	0
219	Consideraciones sobre como leer el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Consideraciones+sobre+co%CC%81mo+leer+el+Tarot.mp4	2018-05-22 08:34:07.001661+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Consideraciones+sobre+c%C3%B3mo+leer+el+Tarot.jpg	f	0
171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+3.mp4	2018-05-22 19:12:36.329955+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+3.jpg	t	0
222	Diferentes Visiones en las Lecturas de Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Diferentes+Visiones+en+las+Lecturas+de+Tarot.mp4	2018-05-22 08:34:07.019314+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Diferentes+Visiones+en+las+Lecturas+de+Tarot.jpg	f	0
174	El Destino que el Yo Genealógico ha establecido en ti.	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Destino+que+el+Yo+Genealo%CC%81gico+ha+establecido+en+ti.mp4	2018-05-22 19:12:36.341174+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Destino+que+el+Yo+Geneal%C3%B3gico+ha+establecido+en+ti.jpg	t	0
177	El Impacto de tu nombre 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Impacto+De+Tu+Nombre+3.mp4	2018-05-22 19:12:36.351429+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Impacto+De+Tu+Nombre+3.jpg	t	0
180	Encuentro, Concepción, Gestación y Nacimiento 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+1.mp4	2018-05-22 19:12:36.361496+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Encuentro%2C+Concepci%C3%B3n%2C+Gestaci%C3%B3n+y+Nacimiento+1.jpg	t	0
183	Estructura de la Metagenealogia 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Estructura+de+la+Metagenealogi%CC%81a+1.mp4	2018-05-22 19:12:36.371474+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Estructura+de+la+Metagenealog%C3%ADa+1.jpg	t	0
186	Formas de Repetición en el Árbol 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Formas+de+Repeticion+en+el+Arbol+1.mp4	2018-05-22 19:12:36.381361+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Formas+de+Repeticion+en+el+Arbol+1.jpg	t	0
189	Introducción a los Núcleos y Nudos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Introduccio%CC%81n+a+los+Nu%CC%81cleos+y+Nudos.mp4	2018-05-22 19:12:36.391419+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Introducci%C3%B3n+a+los+N%C3%BAcleos+y+Nudos.jpg	t	0
192	Nivel de Conciencia Adulto Aprovechador	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Adulto+Aprovechador.mp4	2018-05-22 19:12:36.401359+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Adulto+Aprovechador.jpg	t	0
147	La Barca en la que navegaremos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Barca+en+la+que+Navegaremos.mp4	2018-05-22 08:34:07.107766+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	f	0
150	La Configuración del Yo Testigo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Configuracio%CC%81n+del+Yo+Testigo.mp4	2018-05-22 08:34:07.117913+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Configuraci%C3%B3n+del+Yo+Testigo.jpg	f	0
225	Lectura Causas de la Situación Presente	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Causas+de+la+Situacio%CC%81n+Presente.mp4	2018-05-22 08:34:07.135472+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Causas+de+la+Situacio%CC%81n+Presente.mp4	f	0
153	Mensaje a Estudiantes 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mensaje+a+Estudiantes+1.mp4	2018-05-22 08:34:07.211962+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mensaje+a+Estudiantes+1.jpg	f	0
156	MetaMundo La Escuela	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Metamundo+La+Escuela.mp4	2018-05-22 08:34:07.221967+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Metamundo+La+Escuela.jpg	f	0
159	Mi Historia personal con el Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mi+Historia+personal+con+el+Tarot+2.mp4	2018-05-22 08:34:07.235495+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mi+Historia+personal+con+el+Tarot+2.jpg	f	0
195	Nivel de Conciencia Divino	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Divino.mp4	2018-05-22 19:12:36.411536+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Divino.jpg	t	0
198	Nivel de Conciencia Solar	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Solar.mp4	2018-05-22 19:12:36.422455+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Solar.jpg	t	0
201	Núcleo y Nudo Incestuoso	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Incestuoso.mp4	2018-05-22 19:12:36.432464+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Incestuoso.jpg	t	0
204	Núcleo y Nudo Social	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Social.mp4	2018-05-22 19:12:36.442472+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Social.jpg	t	0
162	Conclusiones sobre los Estados de Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conclusiones+sobre+los+Estados+de+Conciencia.mp4	2018-05-22 19:12:36.291408+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conclusiones+sobre+los+Estados+de+Conciencia.jpg	t	0
211	Actitud y Ética del Tarologo 5	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+5.mp4	2018-05-22 08:34:06.934633+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+5.jpg	f	0
214	Analizando los Elementos Simbólicos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Analizando+los+Elementos+Simbo%CC%81licos.mp4	2018-05-22 08:34:06.945115+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Analizando+los+Elementos+Simb%C3%B3licos.jpg	f	0
217	Así es una ceremonia del te japonesa	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Asi%CC%81+es+una+ceremonia+del+te%CC%81+japonesa.mp4	2018-05-22 08:34:06.955327+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/As%C3%AD+es+una+ceremonia+del+t%C3%A9+japonesa.jpg	f	0
166	Conflicto de Fracaso 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+4.mp4	2018-05-22 19:12:36.307399+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+4.jpg	t	0
172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+4.mp4	2018-05-22 19:12:36.333286+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+4.jpg	t	0
220	Consideraciones sobre la Lectura del Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Consideraciones+sobre+la+Lectura+del+Tarot+1.mp4	2018-05-22 08:34:07.005272+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Consideraciones+sobre+la+Lectura+del+Tarot+1.jpg	f	0
175	El Impacto de tu nombre 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Impacto+De+Tu+Nombre+1.mp4	2018-05-22 19:12:36.34454+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Impacto+De+Tu+Nombre+1.jpg	t	0
178	El Mito en el Árbol	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Mito+en+el+A%CC%81rbol.mp4	2018-05-22 19:12:36.354842+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Mito+en+el+%C3%81rbol.jpg	t	0
181	Encuentro, Concepción, Gestación y Nacimiento 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+2.mp4	2018-05-22 19:12:36.364909+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Encuentro%2C+Concepci%C3%B3n%2C+Gestaci%C3%B3n+y+Nacimiento+2.jpg	t	0
184	Estructura de la Metagenealogia 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Estructura+de+la+Metagenealogi%CC%81a+2.mp4	2018-05-22 19:12:36.374666+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Estructura+de+la+Metagenealog%C3%ADa+2.jpg	t	0
187	Formas de Repetición en el Árbol 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Formas+de+Repeticio%CC%81n+en+el+A%CC%81rbol+2.mp4	2018-05-22 19:12:36.384648+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Formas+de+Repetici%C3%B3n+en+el+%C3%81rbol+2.jpg	t	0
190	Nivel de Conciencia Adolescente Romántico	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Adolescente+Roma%CC%81ntico.mp4	2018-05-22 19:12:36.394728+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Adolescente+Rom%C3%A1ntico.jpg	t	0
193	Nivel de Conciencia Animal	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Animal.mp4	2018-05-22 19:12:36.404699+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Animal.jpg	t	0
148	La Condición Divina	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Condicio%CC%81n+Divina+1.mp4	2018-05-22 08:34:07.111109+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Condici%C3%B3n+Divina+1.jpg	f	0
151	La Dimensión Transpersonal	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Dimensio%CC%81n+Transpersonal.mp4	2018-05-22 08:34:07.121419+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Dimensi%C3%B3n+Transpersonal.jpg	f	0
223	Las Neuronas Espejo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Las+Neuronas+Espejo.mp4	2018-05-22 08:34:07.125086+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Las+Neuronas+Espejo.jpg	f	0
226	Lectura Comienzo - Desarrollo - Resultado	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Comienzo+-+Desarrollo+-+Resultado.mp4	2018-05-22 08:34:07.138979+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Comienzo+-+Desarrollo+-+Resultado.jpg	f	0
154	Mensaje a Estudiantes 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mensaje+a+Estudiantes+2.mp4	2018-05-22 08:34:07.215195+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mensaje+a+Estudiantes+2.jpg	f	0
157	Metamundo y la Expansión de la Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Metamundo+y+la+Expansio%CC%81n+de+la+Conciencia.mp4	2018-05-22 08:34:07.225337+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Metamundo+y+la+Expansi%C3%B3n+de+la+Conciencia.jpg	f	0
160	Mi Historia personal con el Tarot 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mi+Historia+personal+con+el+Tarot+3.mp4	2018-05-22 08:34:07.239257+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mi+Historia+personal+con+el+Tarot+3.jpg	f	0
196	Nivel de Conciencia Niño Consumidor	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Nin%CC%83o+Consumidor.mp4	2018-05-22 19:12:36.415586+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Ni%C3%B1o+Consumidor.jpg	t	0
199	Niveles de Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Niveles+de+Conciencia.mp4	2018-05-22 19:12:36.42575+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Niveles+de+Conciencia.jpg	t	0
202	Núcleo y Nudo Narcisista 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Narcisista+1.mp4	2018-05-22 19:12:36.435728+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Narcisista+1.jpg	t	0
205	Tipos de Árbol - Árbol Mamífero	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Tipos+de+Arbol+-+A%CC%81rbol+mami%CC%81mero.mp4	2018-05-22 19:12:36.445681+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Tipos+de+Arbol+-+%C3%81rbol+mam%C3%ADmero.jpg	t	0
163	Conflicto de Fracaso 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+1.mp4	2018-05-22 19:12:36.296897+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+1.jpg	t	0
212	Actitud y Ética del Tarologo 6	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+6.mp4	2018-05-22 08:34:06.938141+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+6.jpg	f	0
218	Auto-Lectura con los Arcanos Mayores	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Auto-Lectura+con+los+Arcanos+Mayores.mp4	2018-05-22 08:34:06.95901+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Auto-Lectura+con+los+Arcanos+Mayores.jpg	f	0
167	Diferentes Tipos de Ego 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Diferentes+Tipos+de+Ego+1.mp4	2018-05-22 19:12:36.31087+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Diferentes+Tipos+de+Ego+1.jpg	t	0
221	Consideraciones sobre la Lectura del Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Consideraciones+sobre+la+Lectura+del+Tarot+2.mp4	2018-05-22 08:34:07.00863+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Consideraciones+sobre+la+Lectura+del+Tarot+2.jpg	f	0
170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+2.mp4	2018-05-22 19:12:36.326387+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+2.jpg	t	0
173	El Abuso en los Cuatro Centros	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Abuso+en+los+Cuatro+Centros.mp4	2018-05-22 19:12:36.337552+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Abuso+en+los+Cuatro+Centros.jpg	t	0
176	El Impacto de tu nombre 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Impacto+De+Tu+Nombre+2.mp4	2018-05-22 19:12:36.34812+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Impacto+De+Tu+Nombre+2.jpg	t	0
179	El Proceso de Transformación	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/El+Proceso+de+Transformacio%CC%81n.mp4	2018-05-22 19:12:36.358218+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/El+Proceso+de+Transformaci%C3%B3n.jpg	t	0
182	Encuentro, Concepción, Gestación y Nacimiento 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Encuentro%2C+Concepcio%CC%81n%2C+Gestacio%CC%81n+y+Nacimiento+3.mp4	2018-05-22 19:12:36.368192+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Encuentro%2C+Concepci%C3%B3n%2C+Gestaci%C3%B3n+y+Nacimiento+3.jpg	t	0
146	El Tarot Como guía	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/El+Tarot+como+Gui%CC%81a.mp4	2018-05-22 08:34:07.060137+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/El+Tarot+como+Gu%C3%ADa.jpg	f	0
185	Estructura de la Metagenealogia 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Estructura+de+la+Metagenealogi%CC%81a+3.mp4	2018-05-22 19:12:36.37802+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Estructura+de+la+Metagenealog%C3%ADa+3.jpg	t	0
188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Identificando+Mitos+y+Arquetipos+en+tu+A%CC%81rbol+Genealo%CC%81gico.mp4	2018-05-22 19:12:36.388044+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Identificando+Mitos+y+Arquetipos+en+tu+%C3%81rbol+Geneal%C3%B3gico.jpg	t	0
191	Nivel de Conciencia Adulto Altruista	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Adulto+Altruista.mp4	2018-05-22 19:12:36.398063+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Adulto+Altruista.jpg	t	0
149	La Condición Divina 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/La+Condicio%CC%81n+Divina+2.mp4	2018-05-22 08:34:07.114503+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Condici%C3%B3n+Divina+2.jpg	f	0
152	Las Resistencias del Cerebro Reptil	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Las+Resistencias+del+Cerebro+Reptil.mp4	2018-05-22 08:34:07.12863+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Las+Resistencias+del+Cerebro+Reptil.jpg	f	0
224	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+4+Pasos+para+Encauzar+mi+Proceso+Transformativo.mp4	2018-05-22 08:34:07.131986+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+4+Pasos+para+Encauzar+mi+Proceso+Transformativo.jpg	f	0
155	Mensaje a Estudiantes 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mensaje+a+Estudiantes+3.mp4	2018-05-22 08:34:07.218553+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mensaje+a+Estudiantes+3.jpg	f	0
158	Mi Historia personal con el Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Mi+Historia+personal+con+el+Tarot+1.mp4	2018-05-22 08:34:07.231898+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Mi+Historia+personal+con+el+Tarot+1.jpg	f	0
194	Nivel de Conciencia Cósmico	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Co%CC%81smico.mp4	2018-05-22 19:12:36.407996+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+C%C3%B3smico.jpg	t	0
197	Nivel de Conciencia Planetario	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nivel+de+Conciencia+Planetario.mp4	2018-05-22 19:12:36.419218+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Nivel+de+Conciencia+Planetario.jpg	t	0
200	Núcleo y Nudo Bisexual	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Bisexual.mp4	2018-05-22 19:12:36.429147+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Bisexual.jpg	t	0
203	Núcleo y Nudo Narcisista 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Nu%CC%81cleo+y+Nudo+Narcisista+2.mp4	2018-05-22 19:12:36.439068+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/N%C3%BAcleo+y+Nudo+Narcisista+2.jpg	t	0
206	Tipos de Árbol - Emocional	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Tipos+de+Arbol+-+emocional.mp4	2018-05-22 19:12:36.449098+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Tipos+de+Arbol+-+emocional.jpg	t	0
161	Viviéndonos como Conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Vivie%CC%81ndonos+como+Conciencia.mp4	2018-05-22 08:34:43.370138+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/Vivi%C3%A9ndonos+como+Conciencia.jpg	f	0
164	Conflicto de Fracaso 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Conflicto+de+Fracaso+2.mp4	2018-05-22 19:12:36.300397+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Conflicto+de+Fracaso+2.jpg	t	0
228	Lectura Conflicto entre 2 Personas y su Solución	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Conflicto+entre+2+Personas+y+su+Solucio%CC%81n.mp4	2018-05-22 08:34:07.1467+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Conflicto+entre+2+Personas+y+su+Soluci%C3%B3n.jpg	f	0
227	Lectura Conflicto - Solución	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Conflicto+-+Solucio%CC%81n.mp4	2018-05-22 08:34:07.149991+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Conflicto+-+Soluci%C3%B3n.jpg	f	0
233	Lectura con Interpretación de la Carta de Abajo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+con+Interpretacio%CC%81n+de+la+Carta+de+Abajo.mp4	2018-05-22 08:34:07.153612+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+con+Interpretaci%C3%B3n+de+la+Carta+de+Abajo.jpg	f	0
234	Lectura de 3 Cartas con Pregunta	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+de+3+Cartas+con+Pregunta.mp4	2018-05-22 08:34:07.156932+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+de+3+Cartas+con+Pregunta.jpg	f	0
235	Lectura del Héroes o la Heroína	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+del+He%CC%81roe+o+la+Heroi%CC%81na.mp4	2018-05-22 08:34:07.160443+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+del+H%C3%A9roe+o+la+Hero%C3%ADna.jpg	f	0
236	Lectura del Tarot en una Frase	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+del+Tarot+en+una+Frase.mp4	2018-05-22 08:34:07.164023+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+del+Tarot+en+una+Frase.jpg	f	0
229	Lectura el Tarot hace las Preguntas	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+El+Tarot+hace+las+Preguntas.mp4	2018-05-22 08:34:07.167385+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+El+Tarot+hace+las+Preguntas.jpg	f	0
230	Lectura el Trio Familiar	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+El+Tri%CC%81o+Familiar.mp4	2018-05-22 08:34:07.170884+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+El+Tr%C3%ADo+Familiar.jpg	f	0
231	Lectura Narcisista	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+Narcisista.mp4	2018-05-22 08:34:07.174336+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+Narcisista.jpg	f	0
238	Lecturas con 3 Cartas	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+3+cartas.mp4	2018-05-22 08:34:07.17768+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+3+cartas.jpg	f	0
239	Lecturas con Arcanos Menores 0	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+Arcanos+Menores+0.mp4	2018-05-22 08:34:07.181034+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+Arcanos+Menores+0.jpg	f	0
240	Lecturas con Arcanos Menores 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+Arcanos+Menores+1.mp4	2018-05-22 08:34:07.184426+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+Arcanos+Menores+1.jpg	f	0
241	Lecturas con Arcanos Menores 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+con+Arcanos+Menores+2.mp4	2018-05-22 08:34:07.187957+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+con+Arcanos+Menores+2.jpg	f	0
242	Lecturas de Tarot - Ejemplos y Practicas	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lecturas+de+Tarot+-+Ejemplos+y+Pra%CC%81cticas.mp4	2018-05-22 08:34:07.191453+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lecturas+de+Tarot+-+Ejemplos+y+Pr%C3%A1cticas.jpg	f	0
237	Lectura sin Pregunta	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+sin+Pregunta.mp4	2018-05-22 08:34:07.194872+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+sin+Pregunta.jpg	f	0
243	Lenguaje Gestual	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lenguaje+Gestual.mp4	2018-05-22 08:34:07.198453+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lenguaje+Gestual.jpg	f	0
244	Lenguaje Visual del Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lenguaje+Visual+del+Tarot.mp4	2018-05-22 08:34:07.201819+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lenguaje+Visual+del+Tarot.jpg	f	0
245	Los Arquetipos en el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Los+Arquetipos+en+el+Tarot.mp4	2018-05-22 08:34:07.205306+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Los+Arquetipos+en+el+Tarot.jpg	f	0
246	Los Palos en el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Los+Palos+en+el+Tarot.mp4	2018-05-22 08:34:07.208732+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Los+Palos+en+el+Tarot.jpg	f	0
247	Mi Historia Personal con el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Mi+Historia+Personal+con+el+Tarot.mp4	2018-05-22 08:34:07.228634+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Mi+Historia+Personal+con+el+Tarot.jpg	f	0
248	Observando Analogías	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Observando+Analogi%CC%81as.mp4	2018-05-22 08:34:43.299182+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Observando+Analog%C3%ADas.jpg	f	0
249	Observando el Mándala del Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Ordenando+el+Mandala+del+Tarot.mp4	2018-05-22 08:34:43.302456+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Ordenando+el+Mandala+del+Tarot.jpg	f	0
250	Preparación para la Lectura del Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+1.mp4	2018-05-22 08:34:43.308989+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Preparaci%C3%B3n+para+la+Lectura+de+Tarot+1.jpg	f	0
251	Preparación para la Lectura del Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+2.mp4	2018-05-22 08:34:43.312321+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Preparaci%C3%B3n+para+la+Lectura+de+Tarot+2.jpg	f	0
252	Preparación para la Lectura del Tarot 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Preparacio%CC%81n+para+la+Lectura+de+Tarot+3.mp4	2018-05-22 08:34:43.315738+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Preparaci%C3%B3n+para+la+Lectura+de+Tarot+3.jpg	f	0
253	Recibiendo al Consultante 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Recibiendo+al+Consultante+1.mp4	2018-05-22 08:34:43.328755+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Recibiendo+al+Consultante+1.jpg	f	0
254	Recibiendo al Consultante 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Recibiendo+al+Consultante+2.mp4	2018-05-22 08:34:43.332332+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Recibiendo+al+Consultante+2.jpg	f	0
207	Actitud y Ética del Tarologo 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+1.mp4	2018-05-22 08:15:19.805306+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	f	0
208	Actitud y Ética del Tarologo 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+2.mp4	2018-05-22 08:34:06.902314+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+2.jpg	f	0
209	Actitud y Ética del Tarologo 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Actitud+y+E%CC%81tica+del+Taro%CC%81logo+3.mp4	2018-05-22 08:34:06.927539+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+3.jpg	f	0
215	Analogías, Símbolos, Metáforas y Mitos en el Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Analogi%CC%81as%2C+Si%CC%81mbolos%2C+Meta%CC%81foras+y+Mitos+en+el+Tarot.mp4	2018-05-22 08:34:06.94857+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Analog%C3%ADas%2C+S%C3%ADmbolos%2C+Met%C3%A1foras+y+Mitos+en+el+Tarot.jpg	f	0
257	Bases y Fundamentos de la Psicomagia 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+2.mp4	2018-05-22 19:12:36.455852+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+2.jpg	t	0
258	Bases y Fundamentos de la Psicomagia 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+3.mp4	2018-05-22 19:12:36.45945+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+3.jpg	t	0
259	Bases y Fundamentos de la Psicomagia 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+4.mp4	2018-05-22 19:12:36.462955+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+4.jpg	t	0
260	Bases y Fundamentos de la Psicomagia 5	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+Psicomagia+5.mp4	2018-05-22 19:12:36.466467+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+Psicomagia+5.jpg	t	0
261	Bases y Fundamentos de la Psicomagia 6	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+fundamentos+psicomagia+6.mp4	2018-05-22 19:12:36.469715+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+fundamentos+psicomagia+6.jpg	t	0
262	Introducción a la Psicomagia 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Introduccio%CC%81n+a+la+psicomagia+3.mp4	2018-05-22 19:12:36.47302+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Introducci%C3%B3n+a+la+psicomagia+3.jpg	t	0
263	Introducción a la Psicomagia 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Introduccio%CC%81n+a+la+psicomagia+4.mp4	2018-05-22 19:12:36.476411+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Introducci%C3%B3n+a+la+psicomagia+4.jpg	t	0
264	Introducción a la Psicomagia 5	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Introduccio%CC%81n+a+la+psicomagia+5.mp4	2018-05-22 19:12:36.479731+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Introducci%C3%B3n+a+la+psicomagia+5.jpg	t	0
265	Percepción y Realidad	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Percepcio%CC%81n+y+realidad.mp4	2018-05-22 19:12:36.483004+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Percepci%C3%B3n+y+realidad.jpg	t	0
232	Lectura con 3 cartas Sumando los Arcanos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Lectura+con+3+cartas+Sumando+los+Arcanos.mp4	2018-05-22 08:34:07.14234+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Lectura+con+3+cartas+Sumando+los+Arcanos.jpg	f	0
273	¿Que es la Psicomagia? 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/%C2%BFQue%CC%81+es+la+psicomagia+1.mp4	2018-05-22 19:12:36.486672+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/%C2%BFQu%C3%A9+es+la+psicomagia+1.jpg	t	0
274	¿Que es la Psicomagia? 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/%C2%BFQue%CC%81+es+la+psicomagia+2.mp4	2018-05-22 19:12:36.492429+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/%C2%BFQu%C3%A9+es+la+psicomagia+2.jpg	t	0
275	¿Que es la Psicomagia? 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/%C2%BFQue%CC%81+es+la+psicomagia+3.mp4	2018-05-22 19:12:36.495981+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/%C2%BFQu%C3%A9+es+la+psicomagia+3.jpg	t	0
266	Símbolos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Simbolos+4.mp4	2018-05-22 19:12:36.499605+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Simbolos+4.jpg	t	0
269	Símbolos, Números y Colores 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+1.mp4	2018-05-22 19:12:36.50306+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+1.jpg	t	0
270	Símbolos, Números y Colores 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+2.mp4	2018-05-22 19:12:36.506498+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+2.jpg	t	0
271	Símbolos, Números y Colores 3A	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+3-A.mp4	2018-05-22 19:12:36.509972+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+3-A.jpg	t	0
272	Símbolos, Números y Colores 3B	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Si%CC%81mbolos+Nu%CC%81meros+y+Colores+3b.mp4	2018-05-22 19:12:36.5134+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/S%C3%ADmbolos+N%C3%BAmeros+y+Colores+3b.jpg	t	0
267	Sincronicidad 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Sincronicidad+1.mp4	2018-05-22 19:12:36.516972+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Sincronicidad+1.jpg	t	0
268	Sincronicidad 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Sincronicidad+2.mp4	2018-05-22 19:12:36.520522+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Sincronicidad+2.jpg	t	0
255	Teoría y Estructura del Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/Teori%CC%81a+y+Estructura+del+Tarot.mp4	2018-05-22 08:34:43.359972+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Teor%C3%ADa+y+Estructura+del+Tarot.jpg	f	0
256	Bases y Fundamentos de la Psicomagia 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/Bases+y+Fundamentos+de+la+Psicomagia+1.mp4	2018-05-22 19:12:36.452373+00	4	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/04/images/Bases+y+Fundamentos+de+la+Psicomagia+1.jpg	t	0
169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/Ejemplo+de+Ana%CC%81lisis+de+las+Repeticiones+en+el+A%CC%81rbol+1.mp4	2018-05-22 19:12:36.318345+00	3	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/03/images/Ejemplo+de+An%C3%A1lisis+de+las+Repeticiones+en+el+%C3%81rbol+1.jpg	t	0
290	Etica y actitud del Tarologo 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Actitud+y+Etica+del+tarot+2.mp4	2018-05-27 04:36:56.749979+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	6
295	Ética y actitud del Tarologo 6	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Etica+y+actitud+del+Tarologo+6.mp4	2018-05-27 04:38:12.112842+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	10
297	Mi historia con el Tarot 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Mi+Historia+con+el+tarot+3.mp4	2018-05-27 04:39:45.90141+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	3
296	Integración Psiquica del Tarot	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Integracio%CC%81n+Psiquica+del+Tarot.mp4	2018-05-27 04:38:52.822205+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	4
285	Metamundo y la expresion de la conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Metamundo+y+la+ex+de+la+conciencia.mp4	2018-05-27 04:34:08.740705+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	10
289	Ética y actitud del Tarologo 4	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Actitud+y+Etica+del+Tarologo+4.mp4	2018-05-27 04:37:37.268912+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	8
292	Ética y actitud del Tarologo 5	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Actitud+y+e%CC%80tica+del+taro%CC%81logo+5.mp4	2018-05-27 04:37:54.365874+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	9
278	Tarot como guìa	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/INTRO+1-Tarot+como+gui%CC%80a.mp4	2018-05-27 04:34:28.182165+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	3
288	Viviendonos como conciencia	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Viviendonos+como+conciencia.mp4	2018-05-27 04:34:52.711523+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	9
277	La barca en que Navegaremos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/INTRO+0-+La+barca+en+que+navegaremos.mp4	2018-05-27 04:31:42.994416+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	2
276	Analizando los elementos simbólicos	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Analizando+los+elementos+simbo%CC%81licos.mp4	2018-05-27 04:35:57.426953+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	12
294	Ética y Actitud del tarólogo 7	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Etica+y+Actitud+del+taro%CC%81logo+7.mp4	2018-05-27 04:38:33.416528+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	11
286	Mi historia con el Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Mi+historia+personal+1.mp4	2018-05-27 04:39:14.613446+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	1
300	Preparación a la Lectura del Tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Preparacio%CC%81n+a+la+lectura+de+tarot+1.mp4	2018-06-13 20:14:27.247667+00	2	1	video.png	t	2
301	Preparación a la Lectura del Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Preparacio%CC%81n+para+lectura+de+tarot+2.mp4	2018-06-13 20:15:07.631809+00	2	1	video.png	t	3
302	Preparación a la Lectura del Tarot 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/PREPARACIO%CC%81N+PARA+LA+LECTURA+DE+TAROT+3.mp4	2018-06-13 20:15:31.985472+00	2	1	video.png	t	4
287	Mi historia con el Tarot 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Mi+historia+personal+2.mp4	2018-05-27 04:39:27.221564+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	2
298	Introducción a la lectura de tarot 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Introduccio%CC%81n+a+la+lectura+de+tarot+1.mp4	2018-06-13 20:17:07.429955+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	0
293	Ética y actitud del Tarologo 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Actitud+y+e%CC%81tica+del+tarot..mp4	2018-05-27 04:36:31.791081+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	5
291	Etica y actitud del Tarologo 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Actitud+y+etica+del+taro%CC%81logo+3.mp4	2018-05-27 04:37:14.266122+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	7
281	Configuración del yo testigo	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/INTRO+4-+Configuracio%CC%81n+del+yo+testigo.mp4	2018-05-27 04:31:15.561764+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	6
279	La condición divina 1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/INTRO+2-La+condicion+divina1.mp4	2018-05-27 04:32:24.778315+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	4
280	La condición divina 2	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/INTRO+3-+Condicion+divina+2.mp4	2018-05-27 04:32:42.516446+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	5
282	La dimensión Transpersonal	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/INTRO+5-+La+dimensio%CC%81n+transpersonal.mp4	2018-05-27 04:33:05.31916+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	7
283	Las resistencias del Cerebro Reptil	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/INTRO+6-+Las+resistencias+del+Cerebro+Reptil.mp4	2018-05-27 04:33:25.061095+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	8
284	Metamundo la Escuela	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Metamundo+La+Escuela.mp4	2018-05-27 04:33:45.180112+00	1	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/01/Images/La+Barca+en+la+que+Navegaremos.jpg	t	1
299	Introducción a la lectura de tarot 2 y 3	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/05/Introduccion/520p/Introduccioo%CC%81n+a+la+lectura+de+tarot+2+y+3+.mp4	2018-06-13 20:17:07.43404+00	2	1	https://s3-us-west-2.amazonaws.com/cristobalbucket/law/02/images/Actitud+y+%C3%89tica+del+Tar%C3%B3logo+1.jpg	t	1
\.


--
-- Name: catalog_videos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.catalog_videos_id_seq', 302, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-08-30 09:02:57.89663+00	1	Bloque_1	1	[{"added": {}}]	8	1
2	2017-08-30 09:03:01.82913+00	2	Bloque_2	1	[{"added": {}}]	8	1
3	2017-08-30 09:03:05.42313+00	3	Bloque_3	1	[{"added": {}}]	8	1
4	2017-08-30 09:03:10.188631+00	4	Bloque_4	1	[{"added": {}}]	8	1
5	2017-09-01 09:51:08.478432+00	1	Test	1	[{"added": {}}]	10	1
6	2017-09-01 09:51:15.412434+00	1	El Tarot como Guía	1	[{"added": {}}]	9	1
7	2017-09-01 10:00:43.414995+00	1	El Tarot como Guía	2	[{"changed": {"fields": ["link"]}}]	9	1
8	2017-09-01 10:09:49.911555+00	2	La Barca en la que Navegaremos	1	[{"added": {}}]	9	1
9	2017-09-01 10:10:03.456557+00	3	La Condicion Divina	1	[{"added": {}}]	9	1
10	2017-09-04 07:11:09.734809+00	4	La Condicion Divina 2	1	[{"added": {}}]	9	1
11	2017-09-04 07:11:17.05381+00	1	El Tarot como Guía	2	[{"changed": {"fields": ["link"]}}]	9	1
12	2017-09-04 07:14:29.150831+00	1	El Tarot como Guía	2	[]	9	1
13	2017-09-04 07:14:35.842831+00	2	La Barca en la que Navegaremos	2	[{"changed": {"fields": ["link"]}}]	9	1
14	2017-09-04 07:16:02.110341+00	3	La Condicion Divina	2	[{"changed": {"fields": ["link"]}}]	9	1
15	2017-09-04 07:16:33.007845+00	4	La Condicion Divina 2	2	[{"changed": {"fields": ["link"]}}]	9	1
16	2017-09-04 07:21:18.724376+00	5	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	9	1
17	2017-09-04 07:22:08.977882+00	6	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	9	1
18	2017-09-04 07:22:30.199883+00	7	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	9	1
19	2017-09-04 07:22:51.211387+00	8	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	9	1
20	2017-09-04 07:23:04.888388+00	6	Actitud y Ética del Tarologo 2	2	[{"changed": {"fields": ["category"]}}]	9	1
21	2017-09-04 07:23:09.028888+00	7	Actitud y Ética del Tarologo 3	2	[{"changed": {"fields": ["category"]}}]	9	1
22	2017-09-04 07:23:13.397888+00	8	Actitud y Ética del Tarologo 4	2	[{"changed": {"fields": ["category"]}}]	9	1
23	2017-09-04 07:25:30.439903+00	9	Conflicto de Fracaso 1	1	[{"added": {}}]	9	1
24	2017-09-04 07:25:51.049906+00	10	Conflicto de Fracaso 2	1	[{"added": {}}]	9	1
25	2017-09-04 07:26:07.709907+00	11	Conflicto de Fracaso 3	1	[{"added": {}}]	9	1
26	2017-09-04 07:26:20.279408+00	12	Conflicto de Fracaso 4	1	[{"added": {}}]	9	1
27	2017-09-04 07:28:48.107925+00	13	Bases y Fundamentos de la Psicomagia 1	1	[{"added": {}}]	9	1
28	2017-09-04 07:28:53.333425+00	13	Bases y Fundamentos de la Psicomagia 1	2	[]	9	1
29	2017-09-04 07:29:11.047428+00	14	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	9	1
30	2017-09-04 07:29:18.051929+00	15	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	9	1
31	2017-09-04 07:29:30.43993+00	16	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	9	1
32	2017-09-04 07:29:40.751931+00	15	Bases y Fundamentos de la Psicomagia 3	2	[{"changed": {"fields": ["category"]}}]	9	1
33	2017-09-04 07:34:04.26696+00	2	La Barca en la que Navegaremos	2	[]	9	1
34	2017-09-04 08:53:16.82648+00	1	I Le Bateleur BN	1	[{"added": {}}]	7	1
35	2017-09-05 06:56:10.982527+00	1	Bloque_0	2	[{"changed": {"fields": ["name"]}}]	8	1
36	2017-09-05 06:56:15.677527+00	2	Bloque_1	2	[{"changed": {"fields": ["name"]}}]	8	1
37	2017-09-05 06:56:20.734528+00	3	Bloque_2	2	[{"changed": {"fields": ["name"]}}]	8	1
38	2017-09-05 06:56:25.024028+00	4	Bloque_3	2	[{"changed": {"fields": ["name"]}}]	8	1
39	2017-09-08 09:27:37.566052+00	2	I Le Bateleur BN 2	1	[{"added": {}}]	7	1
40	2017-09-08 09:28:54.569561+00	2	I Le Bateleur BN 2	2	[{"changed": {"fields": ["link"]}}]	7	1
41	2017-09-14 04:37:00.771109+00	1	Bloque_0	2	[{"changed": {"fields": ["title"]}}]	8	1
42	2017-09-14 04:37:06.278108+00	2	Bloque_1	2	[{"changed": {"fields": ["title"]}}]	8	1
43	2017-09-14 04:37:12.543106+00	3	Bloque_2	2	[{"changed": {"fields": ["title"]}}]	8	1
44	2017-09-14 04:37:27.933605+00	4	Bloque_3	2	[{"changed": {"fields": ["title"]}}]	8	1
45	2017-09-16 01:36:11.796459+00	5	Actitud y Ética del Tarologo 1	3		9	1
46	2017-09-16 01:36:11.835959+00	6	Actitud y Ética del Tarologo 2	3		9	1
47	2017-09-16 01:36:11.837459+00	7	Actitud y Ética del Tarologo 3	3		9	1
48	2017-09-16 01:36:11.83846+00	8	Actitud y Ética del Tarologo 4	3		9	1
49	2017-09-16 01:36:11.839459+00	13	Bases y Fundamentos de la Psicomagia 1	3		9	1
50	2017-09-16 01:36:11.840958+00	14	Bases y Fundamentos de la Psicomagia 2	3		9	1
51	2017-09-16 01:36:11.841959+00	15	Bases y Fundamentos de la Psicomagia 3	3		9	1
52	2017-09-16 01:36:11.84296+00	16	Bases y Fundamentos de la Psicomagia 4	3		9	1
53	2017-09-16 01:36:11.84446+00	9	Conflicto de Fracaso 1	3		9	1
54	2017-09-16 01:36:11.84546+00	10	Conflicto de Fracaso 2	3		9	1
55	2017-09-16 01:36:11.845959+00	11	Conflicto de Fracaso 3	3		9	1
56	2017-09-16 01:36:11.84696+00	12	Conflicto de Fracaso 4	3		9	1
57	2017-09-16 01:36:11.847959+00	1	El Tarot como Guía	3		9	1
58	2017-09-16 01:36:11.848959+00	2	La Barca en la que Navegaremos	3		9	1
59	2017-09-16 01:36:11.849459+00	3	La Condicion Divina	3		9	1
60	2017-09-16 01:36:11.85046+00	4	La Condicion Divina 2	3		9	1
61	2017-09-16 01:37:18.647947+00	17	La Barca en la que Navegaremos	1	[{"added": {}}]	9	1
62	2017-09-16 01:39:15.696926+00	18	El Tarot como Guía	1	[{"added": {}}]	9	1
63	2017-09-16 01:39:35.876925+00	19	La Condicion Divina 1	1	[{"added": {}}]	9	1
64	2017-09-16 01:39:46.644421+00	20	La Condicion Divina 2	1	[{"added": {}}]	9	1
65	2017-09-16 01:40:12.748418+00	21	La Configuración del Yo Testigo	1	[{"added": {}}]	9	1
66	2017-09-16 01:40:24.969415+00	22	La Dimension Transpersonal	1	[{"added": {}}]	9	1
67	2017-09-16 01:40:48.904912+00	23	Las Resistencias del Cerebro Reptil	1	[{"added": {}}]	9	1
68	2017-09-16 01:42:00.467398+00	24	Mensaje a Estudiantes 1	1	[{"added": {}}]	9	1
69	2017-09-16 01:42:11.404403+00	25	Mensaje a Estudiantes 2	1	[{"added": {}}]	9	1
70	2017-09-16 01:42:23.315899+00	26	Mensaje a Estudiantes 3	1	[{"added": {}}]	9	1
71	2017-09-16 01:42:39.434891+00	27	Metamundo La Escuela	1	[{"added": {}}]	9	1
72	2017-09-16 01:43:02.634888+00	28	Metamundo y la Expansion de la Conciencia	1	[{"added": {}}]	9	1
73	2017-09-16 01:43:19.802884+00	29	Mi Historia personal con el Tarot 1	1	[{"added": {}}]	9	1
74	2017-09-16 01:43:32.673882+00	30	Mi Historia personal con el Tarot 2	1	[{"added": {}}]	9	1
75	2017-09-16 01:43:42.37988+00	31	Mi Historia personal con el Tarot 3	1	[{"added": {}}]	9	1
76	2017-09-16 01:44:45.60087+00	32	Viviéndonos como Conciencia	1	[{"added": {}}]	9	1
77	2017-09-16 01:45:06.442866+00	33	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	9	1
78	2017-09-16 01:45:25.605863+00	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["category"]}}]	9	1
79	2017-09-16 01:45:37.73586+00	34	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	9	1
80	2017-09-16 01:45:48.660359+00	35	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	9	1
81	2017-09-16 01:46:05.912355+00	36	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	9	1
82	2017-09-16 01:46:19.451854+00	37	Actitud y Ética del Tarologo 5	1	[{"added": {}}]	9	1
83	2017-09-16 01:46:39.17735+00	38	Actitud y Ética del Tarologo 6	1	[{"added": {}}]	9	1
84	2017-09-16 01:46:48.498355+00	39	Actitud y Ética del Tarologo 7	1	[{"added": {}}]	9	1
85	2017-09-16 01:47:05.390346+00	40	Analizando los elementos simbolicos	1	[{"added": {}}]	9	1
86	2017-09-16 01:47:23.438347+00	41	Analogías, Símbolos, Metáforas y Mitos en el Tarot	1	[{"added": {}}]	9	1
87	2017-09-16 01:47:31.623341+00	42	Antecedentes	1	[{"added": {}}]	9	1
88	2017-09-16 01:47:47.184339+00	43	Así es una ceremonia del té japonesa	1	[{"added": {}}]	9	1
89	2017-09-16 01:48:12.047334+00	44	Auto-Lectura con los Arcanos Mayores	1	[{"added": {}}]	9	1
90	2017-09-16 01:49:50.374816+00	45	Consideraciones sobre cómo leer el Tarot	1	[{"added": {}}]	9	1
91	2017-09-16 01:50:33.34981+00	46	Consideraciones sobre la Lectura del Tarot 1	1	[{"added": {}}]	9	1
92	2017-09-16 01:50:53.125805+00	47	Consideraciones sobre la Lectura del Tarot 2	1	[{"added": {}}]	9	1
93	2017-09-16 01:51:01.114804+00	48	Diferentes Visiones en las Lecturas de Tarot	1	[{"added": {}}]	9	1
94	2017-09-16 01:51:55.057295+00	49	Las Neuronas Espejos	1	[{"added": {}}]	9	1
95	2017-09-16 01:52:25.07079+00	50	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	1	[{"added": {}}]	9	1
96	2017-09-16 01:52:36.228787+00	51	Lectura Causas de la Situación Presente	1	[{"added": {}}]	9	1
97	2017-09-16 01:52:47.622286+00	52	Lectura Comienzo - Desarrollo - Resultado	1	[{"added": {}}]	9	1
98	2017-09-16 01:52:59.883284+00	53	Lectura Conflicto - Solución	1	[{"added": {}}]	9	1
99	2017-09-16 01:53:37.473777+00	54	Lectura Conflicto entre 2 Personas y su Solución	1	[{"added": {}}]	9	1
100	2017-09-16 01:53:52.973774+00	55	Lectura El Tarot hace las Preguntas	1	[{"added": {}}]	9	1
101	2017-09-16 01:54:05.559273+00	56	Lectura El Trío Familiar	1	[{"added": {}}]	9	1
102	2017-09-16 01:54:18.256769+00	57	Lectura Narcisista	1	[{"added": {}}]	9	1
103	2017-09-16 01:54:51.941764+00	58	Lectura con 3 cartas Sumando los Arcanos	1	[{"added": {}}]	9	1
104	2017-09-16 01:55:10.395761+00	59	Lectura con Interpretación de la Carta de Abajo	1	[{"added": {}}]	9	1
105	2017-09-16 01:55:25.379259+00	60	Lectura de 3 Cartas con Pregunta	1	[{"added": {}}]	9	1
106	2017-09-16 01:55:43.711255+00	61	Lectura del Héroe o la Heroína	1	[{"added": {}}]	9	1
107	2017-09-16 01:55:53.043254+00	62	Lectura del Tarot en una Frase	1	[{"added": {}}]	9	1
108	2017-09-16 01:56:19.36325+00	63	Lectura sin Pregunta	1	[{"added": {}}]	9	1
109	2017-09-16 01:56:31.398747+00	64	Lecturas con 3 cartas	1	[{"added": {}}]	9	1
110	2017-09-16 01:56:50.492744+00	65	Lecturas con Arcanos Menores 0	1	[{"added": {}}]	9	1
111	2017-09-16 01:57:04.083741+00	66	Lecturas con Arcanos Menores 1	1	[{"added": {}}]	9	1
112	2017-09-16 01:57:13.114739+00	67	Lecturas con Arcanos Menores 2	1	[{"added": {}}]	9	1
113	2017-09-16 01:57:31.023736+00	68	Lecturas de Tarot - Ejemplos y Prácticas	1	[{"added": {}}]	9	1
114	2017-09-16 01:58:15.90273+00	69	Lectura Gestual	1	[{"added": {}}]	9	1
115	2017-09-16 01:58:24.502729+00	70	Lenguaje Visual del Tarot	1	[{"added": {}}]	9	1
116	2017-09-16 01:58:35.351725+00	71	Los Arquetipos en el Tarot	1	[{"added": {}}]	9	1
117	2017-09-16 01:58:44.04723+00	72	Los Palos en el Tarot	1	[{"added": {}}]	9	1
118	2017-09-16 01:58:53.290722+00	73	Mi Historia Personal con el Tarot	1	[{"added": {}}]	9	1
119	2017-09-16 01:59:03.282721+00	74	Observando Analogías	1	[{"added": {}}]	9	1
120	2017-09-16 01:59:10.66372+00	75	Ordenando el Mandala del Tarot	1	[{"added": {}}]	9	1
121	2017-09-16 01:59:32.992216+00	76	Preparación para la Lectura de Tarot 1	1	[{"added": {}}]	9	1
122	2017-09-16 01:59:43.901713+00	77	Preparación para la Lectura de Tarot 2	1	[{"added": {}}]	9	1
123	2017-09-16 01:59:51.750212+00	78	Preparación para la Lectura de Tarot 3	1	[{"added": {}}]	9	1
124	2017-09-16 01:59:58.973218+00	79	Recibiendo al Consultante 1	1	[{"added": {}}]	9	1
125	2017-09-16 02:00:09.270708+00	80	Recibiendo al Consultante 2	1	[{"added": {}}]	9	1
126	2017-09-16 02:00:16.67421+00	81	Teoría y Estructura del Tarot	1	[{"added": {}}]	9	1
127	2017-09-16 02:01:29.934195+00	82	Conclusiones sobre los Estados de Conciencia	1	[{"added": {}}]	9	1
128	2017-09-16 02:01:38.904194+00	83	Conflicto de Fracaso 1	1	[{"added": {}}]	9	1
129	2017-09-16 02:01:45.993196+00	84	Conflicto de Fracaso 2	1	[{"added": {}}]	9	1
130	2017-09-16 02:02:01.56419+00	85	Conflicto de Fracaso 3	1	[{"added": {}}]	9	1
131	2017-09-16 02:02:08.434688+00	86	Conflicto de Fracaso 4	1	[{"added": {}}]	9	1
132	2017-09-16 02:02:14.512687+00	87	Diferentes Tipos de Ego 1	1	[{"added": {}}]	9	1
133	2017-09-16 02:02:23.160687+00	88	Diferentes Tipos de Ego 2	1	[{"added": {}}]	9	1
134	2017-09-16 02:02:29.120189+00	89	Ejemplo de Análisis de las Repeticiones en el Árbol 1	1	[{"added": {}}]	9	1
135	2017-09-16 02:02:35.219683+00	90	Ejemplo de Análisis de las Repeticiones en el Árbol 2	1	[{"added": {}}]	9	1
136	2017-09-16 02:02:41.847689+00	91	Ejemplo de Análisis de las Repeticiones en el Árbol 3	1	[{"added": {}}]	9	1
137	2017-09-16 02:02:48.518182+00	92	Ejemplo de Análisis de las Repeticiones en el Árbol 4	1	[{"added": {}}]	9	1
138	2017-09-16 02:02:57.45268+00	93	El Abuso en los Cuatro Centros	1	[{"added": {}}]	9	1
139	2017-09-16 02:03:10.710677+00	94	El Destino que el Yo Genealógico ha establecido en ti	1	[{"added": {}}]	9	1
140	2017-09-16 02:03:40.801672+00	95	El Impacto De Tu Nombre 1	1	[{"added": {}}]	9	1
141	2017-09-16 02:05:06.296157+00	96	El Impacto De Tu Nombre 2	1	[{"added": {}}]	9	1
142	2017-09-16 02:05:13.102157+00	97	El Impacto De Tu Nombre 3	1	[{"added": {}}]	9	1
143	2017-09-16 02:05:21.330155+00	98	El Mito en el Árbol	1	[{"added": {}}]	9	1
144	2017-09-16 02:05:29.956661+00	99	El Proceso de Transformación	1	[{"added": {}}]	9	1
145	2017-09-16 02:06:38.592141+00	100	Encuentro, Concepción, Gestación y Nacimiento 1	1	[{"added": {}}]	9	1
146	2017-09-16 02:06:47.29814+00	101	Encuentro, Concepción, Gestación y Nacimiento 2	1	[{"added": {}}]	9	1
147	2017-09-16 02:06:57.640138+00	102	Encuentro, Concepción, Gestación y Nacimiento 3	1	[{"added": {}}]	9	1
148	2017-09-16 02:07:12.530635+00	103	Estructura de la Metagenealogía 1	1	[{"added": {}}]	9	1
149	2017-09-16 02:07:21.124133+00	104	Estructura de la Metagenealogía 2	1	[{"added": {}}]	9	1
150	2017-09-16 02:07:28.460134+00	105	Estructura de la Metagenealogía 3	1	[{"added": {}}]	9	1
151	2017-09-16 02:07:36.254132+00	106	Formas de Repeticion en el Arbol 1	1	[{"added": {}}]	9	1
152	2017-09-16 02:07:45.953129+00	107	Formas de Repetición en el Árbol 2	1	[{"added": {}}]	9	1
153	2017-09-16 02:08:10.541125+00	108	Identificando Mitos y Arquetipos en tu Árbol Genealógico	1	[{"added": {}}]	9	1
154	2017-09-16 02:08:20.233123+00	109	Introducción a los Núcleos y Nudos	1	[{"added": {}}]	9	1
155	2017-09-16 02:08:33.928626+00	110	Nivel de Conciencia Adolescente Romántico	1	[{"added": {}}]	9	1
156	2017-09-16 02:08:49.173619+00	111	Nivel de Conciencia Adulto Altruista	1	[{"added": {}}]	9	1
157	2017-09-16 02:08:54.167119+00	112	Nivel de Conciencia Adulto Aprovechador	1	[{"added": {}}]	9	1
158	2017-09-16 02:09:01.859617+00	113	Nivel de Conciencia Animal	1	[{"added": {}}]	9	1
159	2017-09-16 02:09:13.410115+00	114	Nivel de Conciencia Cósmico	1	[{"added": {}}]	9	1
160	2017-09-16 02:09:21.459114+00	115	Nivel de Conciencia Divino	1	[{"added": {}}]	9	1
161	2017-09-16 02:09:32.487617+00	116	Nivel de Conciencia Niño Consumidor	1	[{"added": {}}]	9	1
162	2017-09-16 02:09:42.828109+00	117	Nivel de Conciencia Planetario	1	[{"added": {}}]	9	1
163	2017-09-16 02:09:50.457108+00	118	Nivel de Conciencia Solar	1	[{"added": {}}]	9	1
164	2017-09-16 02:10:00.841106+00	119	Niveles de Conciencia	1	[{"added": {}}]	9	1
165	2017-09-16 02:10:17.123103+00	120	Núcleo y Nudo Bisexual	1	[{"added": {}}]	9	1
166	2017-09-16 02:10:25.839602+00	121	Núcleo y Nudo Incestuoso	1	[{"added": {}}]	9	1
167	2017-09-16 02:10:33.404101+00	122	Núcleo y Nudo Narcisista 1	1	[{"added": {}}]	9	1
168	2017-09-16 02:10:45.050598+00	123	Núcleo y Nudo Narcisista 2	1	[{"added": {}}]	9	1
169	2017-09-16 02:10:53.729098+00	124	Núcleo y Nudo Social	1	[{"added": {}}]	9	1
170	2017-09-16 02:11:01.368596+00	125	Tipos de Arbol - Árbol mamímero	1	[{"added": {}}]	9	1
171	2017-09-16 02:11:09.541594+00	126	Tipos de Arbol - emocional	1	[{"added": {}}]	9	1
172	2017-09-16 02:12:52.180576+00	127	Bases y Fundamentos Psicomagia 5	1	[{"added": {}}]	9	1
173	2017-09-16 02:15:11.715552+00	128	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	9	1
174	2017-09-16 02:15:20.246554+00	129	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	9	1
175	2017-09-16 02:15:32.238049+00	130	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	9	1
176	2017-09-16 02:15:54.657544+00	131	Bases y fundamentos psicomagia 6	1	[{"added": {}}]	9	1
177	2017-09-16 02:17:21.14253+00	132	Introducción a la psicomagia 3	1	[{"added": {}}]	9	1
178	2017-09-16 02:17:31.386029+00	133	Introducción a la psicomagia 4	1	[{"added": {}}]	9	1
179	2017-09-16 02:17:41.507526+00	134	Introducción a la psicomagia 5	1	[{"added": {}}]	9	1
180	2017-09-16 02:17:51.595024+00	135	Percepción y realidad	1	[{"added": {}}]	9	1
181	2017-09-16 02:18:00.918023+00	136	Simbolos 4	1	[{"added": {}}]	9	1
182	2017-09-16 02:18:12.420021+00	137	Sincronicidad 1	1	[{"added": {}}]	9	1
183	2017-09-16 02:18:19.912519+00	138	Sincronicidad 2	1	[{"added": {}}]	9	1
184	2017-09-16 02:18:35.644017+00	139	Símbolos Números y Colores 1	1	[{"added": {}}]	9	1
185	2017-09-16 02:18:44.749515+00	140	Símbolos Números y Colores 2	1	[{"added": {}}]	9	1
186	2017-09-16 02:18:53.866513+00	141	Símbolos Números y Colores 3-A	1	[{"added": {}}]	9	1
187	2017-09-16 02:19:05.010011+00	142	Símbolos Números y Colores 3b	1	[{"added": {}}]	9	1
188	2017-09-16 02:19:24.116008+00	143	¿Qué es la psicomagia 1	1	[{"added": {}}]	9	1
189	2017-09-16 02:19:33.073506+00	144	¿Qué es la psicomagia 2	1	[{"added": {}}]	9	1
190	2017-09-16 02:19:41.100505+00	145	¿Qué es la psicomagia 3	1	[{"added": {}}]	9	1
191	2017-09-18 13:58:11.344584+00	1	I Le Bateleur BN	3		7	1
192	2017-09-18 13:58:16.877084+00	2	I Le Bateleur BN 2	3		7	1
193	2017-09-18 15:46:52.073451+00	3	I Le Bateleur BN	1	[{"added": {}}]	7	1
194	2017-09-18 15:47:06.718952+00	4	II La Papesse BN 2	1	[{"added": {}}]	7	1
195	2017-09-18 15:47:19.381446+00	5	III LImperatrice BN 2	1	[{"added": {}}]	7	1
196	2017-09-18 15:47:28.568944+00	6	IIII LEmpereur BN	1	[{"added": {}}]	7	1
197	2017-09-18 15:48:03.493439+00	7	Lamoureux BN	1	[{"added": {}}]	7	1
198	2017-09-18 15:48:14.332937+00	8	Le Mat BN	1	[{"added": {}}]	7	1
199	2017-09-18 15:48:39.264432+00	9	V Le Pape BN	1	[{"added": {}}]	7	1
200	2017-09-18 15:48:49.11393+00	10	VII Le Chariot BN	1	[{"added": {}}]	7	1
201	2017-09-18 15:49:00.188429+00	11	VIII La Justice BN	1	[{"added": {}}]	7	1
202	2017-09-18 15:49:14.606427+00	12	VIIII LHermite BN	1	[{"added": {}}]	7	1
203	2017-09-18 15:49:24.476424+00	13	X La Roue de Fortune BN	1	[{"added": {}}]	7	1
204	2017-09-18 15:49:54.60792+00	14	XI La Force BN	1	[{"added": {}}]	7	1
205	2017-09-18 15:50:04.289417+00	15	XII Le Pendu BN	1	[{"added": {}}]	7	1
206	2017-09-18 15:50:13.257416+00	16	XIII Arcano sin nombre BN	1	[{"added": {}}]	7	1
207	2017-09-18 15:50:24.655914+00	17	XIIII Temperance BN 2	1	[{"added": {}}]	7	1
208	2017-09-18 15:50:36.564412+00	18	XV Le Diable BN	1	[{"added": {}}]	7	1
209	2017-09-18 15:50:47.42941+00	19	XVI La Maison Dieu BN	1	[{"added": {}}]	7	1
210	2017-09-18 15:50:57.533408+00	20	XVII LEtoile BN	1	[{"added": {}}]	7	1
211	2017-09-18 15:51:11.172414+00	21	XVIII La Lune BN	1	[{"added": {}}]	7	1
212	2017-09-18 15:51:21.444905+00	22	XVIIII Le Soleil BN	1	[{"added": {}}]	7	1
213	2017-09-18 15:51:29.795402+00	23	XX Le Iugement BN	1	[{"added": {}}]	7	1
214	2017-09-18 15:51:37.267901+00	24	XXI Le Monde BN	1	[{"added": {}}]	7	1
215	2017-09-20 05:13:20.249113+00	25	Correspondencias Palos del Tarot	1	[{"added": {}}]	7	1
216	2017-09-20 06:35:04.35915+00	26	Jodorowsky Alejandro - La Via Del Tarot-1	1	[{"added": {}}]	7	1
217	2017-09-20 06:35:13.484651+00	27	Jodorowsky Alejandro - La Via Del Tarot-2	1	[{"added": {}}]	7	1
218	2017-09-20 06:35:22.713652+00	28	La Numerología en el Tarot	1	[{"added": {}}]	7	1
219	2017-09-20 06:35:39.728653+00	29	Referencia Rápida- Arcano 0 - Le Mat	1	[{"added": {}}]	7	1
220	2017-09-20 06:35:48.770655+00	30	Los Colores en el Tarot	1	[{"added": {}}]	7	1
221	2017-09-20 06:36:03.286655+00	31	Referencia Rápida- Arcano I - Le Bateleur	1	[{"added": {}}]	7	1
222	2017-09-20 06:36:34.909659+00	32	Referencia Rápida- Arcano II - La Papesse - La Papisa	1	[{"added": {}}]	7	1
223	2017-09-20 06:36:54.260662+00	33	Referencia Rápida- Arcano III - Limperatrice - La Emperatriz	1	[{"added": {}}]	7	1
224	2017-09-20 06:37:09.001663+00	34	Referencia Rápida- Arcano IIII - LEmpereur - El Emperador	1	[{"added": {}}]	7	1
225	2017-09-20 06:37:19.414664+00	35	Referencia Rápida- Arcano V - Le Pape - El Papa	1	[{"added": {}}]	7	1
226	2017-09-20 06:37:35.442167+00	36	Referencia Rápida- Arcano VI - LAmoureux - El Enamorado	1	[{"added": {}}]	7	1
227	2017-09-20 06:37:48.870168+00	37	Referencia Rápida- Arcano VII - Le Chariot - El Carro	1	[{"added": {}}]	7	1
228	2017-09-20 06:38:03.726669+00	38	Referencia Rápida- Arcano VIII - La Justice- La Justicia	1	[{"added": {}}]	7	1
229	2017-09-20 06:38:13.02617+00	39	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	1	[{"added": {}}]	7	1
230	2017-09-20 06:38:40.842673+00	39	Referencia Rápida- Arcano VIIII - LHermite - El Ermitaño	2	[]	7	1
231	2017-09-20 06:39:03.078675+00	40	Referencia Rápida- Arcano X	1	[{"added": {}}]	7	1
232	2017-09-20 06:39:12.383676+00	41	Referencia Rápida- Arcano XI - La Force - La Fuerza	1	[{"added": {}}]	7	1
233	2017-09-20 06:39:22.583678+00	42	Referencia Rápida- Arcano XII - Le Pendu - El Colgado	1	[{"added": {}}]	7	1
234	2017-09-20 06:39:39.087681+00	43	Referencia Rápida- Arcano XIII - Arcano sin Nombre	1	[{"added": {}}]	7	1
235	2017-09-20 06:39:51.291681+00	44	Referencia Rápida- Arcano XIIII - Le Diable - El Diablo	1	[{"added": {}}]	7	1
236	2017-09-20 06:40:13.657184+00	45	Referencia Rápida- Arcano XIIII - Temperance - La Templanza	1	[{"added": {}}]	7	1
237	2017-09-20 06:40:34.774686+00	46	Referencia Rápida- Arcano XVI - La Maison Dieu - La Torre	1	[{"added": {}}]	7	1
238	2017-09-20 06:40:45.436187+00	47	Referencia Rápida- Arcano XVII - L Etoille - La Estrella	1	[{"added": {}}]	7	1
239	2017-09-20 06:40:56.129192+00	48	Referencia Rápida- Arcano XVIII - La Lune - La Luna	1	[{"added": {}}]	7	1
240	2017-09-20 06:41:17.69919+00	49	Referencia Rápida- Arcano XVIIII - Le Soleil - El Sol	1	[{"added": {}}]	7	1
241	2017-09-20 06:41:39.655193+00	50	Referencia Rápida- Arcano XX - Le Iugement - El Juicio	1	[{"added": {}}]	7	1
242	2017-09-20 06:41:50.145693+00	51	Referencia Rápida- Arcano XXI - Le Monde - El Mundo	1	[{"added": {}}]	7	1
243	2017-09-20 06:43:43.746706+00	52	Tarea- Ejercicios de Tarot – Semana 1	1	[{"added": {}}]	7	1
244	2017-09-20 06:43:53.371207+00	53	Tarea- Ejercicios de Tarot – Semana 2	1	[{"added": {}}]	7	1
245	2017-09-20 06:44:05.325708+00	54	Tarea- Ejercicios de Tarot – Semana 3	1	[{"added": {}}]	7	1
246	2017-09-20 06:44:14.40571+00	55	Tarea- Ejercicios de Tarot – Semana 4	1	[{"added": {}}]	7	1
247	2017-09-20 06:44:23.49521+00	56	Tarea- Ejercicios de Tarot – Semana 5	1	[{"added": {}}]	7	1
248	2017-09-20 06:44:46.733213+00	57	El Centro Emocional y Sus Nudos	1	[{"added": {}}]	7	1
249	2017-09-20 06:44:57.070715+00	58	El Centro Intelectual y sus Nudos	1	[{"added": {}}]	7	1
250	2017-09-20 06:45:06.331715+00	59	El Centro Sexual-Creativo y sus Nudos	1	[{"added": {}}]	7	1
251	2017-09-20 06:45:28.038218+00	60	Referencia Rápida - Tipo de Repetición Genealógica	1	[{"added": {}}]	7	1
252	2017-09-20 06:45:49.879221+00	61	Referencia Rapida- La Finalidad en el Arbol Genealógico- Trampa y Tesoro	1	[{"added": {}}]	7	1
253	2017-09-20 06:46:11.089722+00	62	Las Repeticiones en mis Centros	1	[{"added": {}}]	7	1
254	2017-09-20 06:46:35.851725+00	63	Referencia Rápida- Niveles de Conciencia	1	[{"added": {}}]	7	1
255	2017-09-20 06:46:46.870226+00	64	Símbolos para Analizar el Árbol Genealógico	1	[{"added": {}}]	7	1
256	2017-09-20 06:47:00.568727+00	65	Tu Arbol Genealógico	1	[{"added": {}}]	7	1
257	2017-09-20 06:47:26.670231+00	66	Alejandro-Jodorowsky-Manual-Psicomagia Consejos pa_	1	[{"added": {}}]	7	1
258	2017-09-20 06:47:36.029232+00	67	El Héroe de las Mil Caras	1	[{"added": {}}]	7	1
259	2017-09-20 06:47:45.068733+00	68	Jodorowski_Alejandro-_Psicomagia	1	[{"added": {}}]	7	1
260	2017-10-17 09:24:38.220138+00	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
261	2017-10-17 09:25:49.542625+00	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
262	2017-10-17 09:27:15.220611+00	33	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
263	2017-10-17 10:46:49.01428+00	143	¿Qué es la psicomagia 1	3		9	1
264	2017-10-17 10:46:49.025281+00	144	¿Qué es la psicomagia 2	3		9	1
265	2017-10-17 10:46:49.026781+00	145	¿Qué es la psicomagia 3	3		9	1
266	2017-10-17 10:46:49.028281+00	33	Actitud y Ética del Tarologo 1	3		9	1
267	2017-10-17 10:46:49.02978+00	34	Actitud y Ética del Tarologo 2	3		9	1
268	2017-10-17 10:46:49.030781+00	35	Actitud y Ética del Tarologo 3	3		9	1
269	2017-10-17 10:46:49.031781+00	36	Actitud y Ética del Tarologo 4	3		9	1
270	2017-10-17 10:46:49.03328+00	37	Actitud y Ética del Tarologo 5	3		9	1
271	2017-10-17 10:46:49.034281+00	38	Actitud y Ética del Tarologo 6	3		9	1
272	2017-10-17 10:46:49.034781+00	39	Actitud y Ética del Tarologo 7	3		9	1
273	2017-10-17 10:46:49.036281+00	40	Analizando los elementos simbolicos	3		9	1
274	2017-10-17 10:46:49.037281+00	41	Analogías, Símbolos, Metáforas y Mitos en el Tarot	3		9	1
275	2017-10-17 10:46:49.038281+00	42	Antecedentes	3		9	1
276	2017-10-17 10:46:49.039281+00	43	Así es una ceremonia del té japonesa	3		9	1
277	2017-10-17 10:46:49.040781+00	44	Auto-Lectura con los Arcanos Mayores	3		9	1
278	2017-10-17 10:46:49.04178+00	128	Bases y Fundamentos de la Psicomagia 2	3		9	1
279	2017-10-17 10:46:49.04278+00	129	Bases y Fundamentos de la Psicomagia 3	3		9	1
280	2017-10-17 10:46:49.043781+00	130	Bases y Fundamentos de la Psicomagia 4	3		9	1
281	2017-10-17 10:46:49.045281+00	127	Bases y Fundamentos Psicomagia 5	3		9	1
282	2017-10-17 10:46:49.046281+00	131	Bases y fundamentos psicomagia 6	3		9	1
283	2017-10-17 10:46:49.047281+00	82	Conclusiones sobre los Estados de Conciencia	3		9	1
284	2017-10-17 10:46:49.04828+00	83	Conflicto de Fracaso 1	3		9	1
285	2017-10-17 10:46:49.049281+00	84	Conflicto de Fracaso 2	3		9	1
286	2017-10-17 10:46:49.05028+00	85	Conflicto de Fracaso 3	3		9	1
287	2017-10-17 10:46:49.051281+00	86	Conflicto de Fracaso 4	3		9	1
288	2017-10-17 10:46:49.05278+00	45	Consideraciones sobre cómo leer el Tarot	3		9	1
289	2017-10-17 10:46:49.053781+00	46	Consideraciones sobre la Lectura del Tarot 1	3		9	1
290	2017-10-17 10:46:49.055281+00	47	Consideraciones sobre la Lectura del Tarot 2	3		9	1
291	2017-10-17 10:46:49.056281+00	87	Diferentes Tipos de Ego 1	3		9	1
292	2017-10-17 10:46:49.05778+00	88	Diferentes Tipos de Ego 2	3		9	1
293	2017-10-17 10:46:49.058781+00	48	Diferentes Visiones en las Lecturas de Tarot	3		9	1
294	2017-10-17 10:46:49.059781+00	89	Ejemplo de Análisis de las Repeticiones en el Árbol 1	3		9	1
295	2017-10-17 10:46:49.06078+00	90	Ejemplo de Análisis de las Repeticiones en el Árbol 2	3		9	1
296	2017-10-17 10:46:49.06178+00	91	Ejemplo de Análisis de las Repeticiones en el Árbol 3	3		9	1
297	2017-10-17 10:46:49.062781+00	92	Ejemplo de Análisis de las Repeticiones en el Árbol 4	3		9	1
298	2017-10-17 10:46:49.06378+00	93	El Abuso en los Cuatro Centros	3		9	1
299	2017-10-17 10:46:49.06478+00	94	El Destino que el Yo Genealógico ha establecido en ti	3		9	1
300	2017-10-17 10:46:49.066281+00	95	El Impacto De Tu Nombre 1	3		9	1
301	2017-10-17 10:46:49.06728+00	96	El Impacto De Tu Nombre 2	3		9	1
302	2017-10-17 10:46:49.06828+00	97	El Impacto De Tu Nombre 3	3		9	1
303	2017-10-17 10:46:49.069281+00	98	El Mito en el Árbol	3		9	1
304	2017-10-17 10:46:49.07078+00	99	El Proceso de Transformación	3		9	1
305	2017-10-17 10:46:49.072281+00	18	El Tarot como Guía	3		9	1
306	2017-10-17 10:46:49.07328+00	100	Encuentro, Concepción, Gestación y Nacimiento 1	3		9	1
307	2017-10-17 10:46:49.07478+00	101	Encuentro, Concepción, Gestación y Nacimiento 2	3		9	1
308	2017-10-17 10:46:49.07578+00	102	Encuentro, Concepción, Gestación y Nacimiento 3	3		9	1
309	2017-10-17 10:46:49.076781+00	103	Estructura de la Metagenealogía 1	3		9	1
310	2017-10-17 10:46:49.07778+00	104	Estructura de la Metagenealogía 2	3		9	1
311	2017-10-17 10:46:49.078781+00	105	Estructura de la Metagenealogía 3	3		9	1
312	2017-10-17 10:46:49.07978+00	106	Formas de Repeticion en el Arbol 1	3		9	1
313	2017-10-17 10:46:49.081281+00	107	Formas de Repetición en el Árbol 2	3		9	1
314	2017-10-17 10:46:49.082281+00	108	Identificando Mitos y Arquetipos en tu Árbol Genealógico	3		9	1
315	2017-10-17 10:46:49.08378+00	132	Introducción a la psicomagia 3	3		9	1
316	2017-10-17 10:46:49.084781+00	133	Introducción a la psicomagia 4	3		9	1
317	2017-10-17 10:46:49.08628+00	134	Introducción a la psicomagia 5	3		9	1
318	2017-10-17 10:46:49.087781+00	109	Introducción a los Núcleos y Nudos	3		9	1
319	2017-10-17 10:46:49.088781+00	17	La Barca en la que Navegaremos	3		9	1
320	2017-10-17 10:46:49.090281+00	19	La Condicion Divina 1	3		9	1
321	2017-10-17 10:46:49.09128+00	20	La Condicion Divina 2	3		9	1
322	2017-10-17 10:46:49.092781+00	21	La Configuración del Yo Testigo	3		9	1
323	2017-10-17 10:46:49.093781+00	22	La Dimension Transpersonal	3		9	1
324	2017-10-17 10:46:49.094781+00	49	Las Neuronas Espejos	3		9	1
325	2017-10-17 10:46:49.096281+00	23	Las Resistencias del Cerebro Reptil	3		9	1
326	2017-10-17 10:46:49.097281+00	50	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	3		9	1
327	2017-10-17 10:46:49.098281+00	51	Lectura Causas de la Situación Presente	3		9	1
328	2017-10-17 10:46:49.099281+00	52	Lectura Comienzo - Desarrollo - Resultado	3		9	1
329	2017-10-17 10:46:49.100281+00	58	Lectura con 3 cartas Sumando los Arcanos	3		9	1
330	2017-10-17 10:46:49.10178+00	59	Lectura con Interpretación de la Carta de Abajo	3		9	1
331	2017-10-17 10:46:49.10278+00	53	Lectura Conflicto - Solución	3		9	1
332	2017-10-17 10:46:49.103781+00	54	Lectura Conflicto entre 2 Personas y su Solución	3		9	1
333	2017-10-17 10:46:49.105281+00	60	Lectura de 3 Cartas con Pregunta	3		9	1
334	2017-10-17 10:46:49.10628+00	61	Lectura del Héroe o la Heroína	3		9	1
335	2017-10-17 10:46:49.107281+00	62	Lectura del Tarot en una Frase	3		9	1
336	2017-10-17 10:46:49.10878+00	55	Lectura El Tarot hace las Preguntas	3		9	1
337	2017-10-17 10:46:49.109781+00	56	Lectura El Trío Familiar	3		9	1
338	2017-10-17 10:46:49.110781+00	69	Lectura Gestual	3		9	1
339	2017-10-17 10:46:49.11178+00	57	Lectura Narcisista	3		9	1
340	2017-10-17 10:46:49.11328+00	63	Lectura sin Pregunta	3		9	1
341	2017-10-17 10:46:49.114281+00	64	Lecturas con 3 cartas	3		9	1
342	2017-10-17 10:46:49.11528+00	65	Lecturas con Arcanos Menores 0	3		9	1
343	2017-10-17 10:46:49.116281+00	66	Lecturas con Arcanos Menores 1	3		9	1
344	2017-10-17 10:46:49.11728+00	67	Lecturas con Arcanos Menores 2	3		9	1
345	2017-10-17 10:46:49.118781+00	68	Lecturas de Tarot - Ejemplos y Prácticas	3		9	1
346	2017-10-17 10:46:49.120281+00	70	Lenguaje Visual del Tarot	3		9	1
347	2017-10-17 10:46:49.12178+00	71	Los Arquetipos en el Tarot	3		9	1
348	2017-10-17 10:46:49.123282+00	72	Los Palos en el Tarot	3		9	1
349	2017-10-17 10:46:49.124781+00	24	Mensaje a Estudiantes 1	3		9	1
350	2017-10-17 10:46:49.125781+00	25	Mensaje a Estudiantes 2	3		9	1
351	2017-10-17 10:46:49.12728+00	26	Mensaje a Estudiantes 3	3		9	1
352	2017-10-17 10:46:49.128781+00	27	Metamundo La Escuela	3		9	1
353	2017-10-17 10:46:49.129781+00	28	Metamundo y la Expansion de la Conciencia	3		9	1
354	2017-10-17 10:46:49.130781+00	73	Mi Historia Personal con el Tarot	3		9	1
355	2017-10-17 10:46:49.131781+00	29	Mi Historia personal con el Tarot 1	3		9	1
356	2017-10-17 10:46:49.13328+00	30	Mi Historia personal con el Tarot 2	3		9	1
357	2017-10-17 10:46:49.134281+00	31	Mi Historia personal con el Tarot 3	3		9	1
358	2017-10-17 10:46:49.135281+00	110	Nivel de Conciencia Adolescente Romántico	3		9	1
359	2017-10-17 10:46:49.13628+00	111	Nivel de Conciencia Adulto Altruista	3		9	1
360	2017-10-17 10:46:49.13828+00	112	Nivel de Conciencia Adulto Aprovechador	3		9	1
361	2017-10-17 10:46:49.139781+00	113	Nivel de Conciencia Animal	3		9	1
362	2017-10-17 10:46:49.141781+00	114	Nivel de Conciencia Cósmico	3		9	1
363	2017-10-17 10:46:59.79528+00	115	Nivel de Conciencia Divino	3		9	1
364	2017-10-17 10:46:59.811778+00	116	Nivel de Conciencia Niño Consumidor	3		9	1
365	2017-10-17 10:46:59.813278+00	117	Nivel de Conciencia Planetario	3		9	1
366	2017-10-17 10:46:59.814778+00	118	Nivel de Conciencia Solar	3		9	1
367	2017-10-17 10:46:59.816279+00	119	Niveles de Conciencia	3		9	1
368	2017-10-17 10:46:59.817278+00	120	Núcleo y Nudo Bisexual	3		9	1
369	2017-10-17 10:46:59.818779+00	121	Núcleo y Nudo Incestuoso	3		9	1
370	2017-10-17 10:46:59.820279+00	122	Núcleo y Nudo Narcisista 1	3		9	1
371	2017-10-17 10:46:59.821778+00	123	Núcleo y Nudo Narcisista 2	3		9	1
372	2017-10-17 10:46:59.822779+00	124	Núcleo y Nudo Social	3		9	1
373	2017-10-17 10:46:59.824278+00	74	Observando Analogías	3		9	1
374	2017-10-17 10:46:59.825779+00	75	Ordenando el Mandala del Tarot	3		9	1
375	2017-10-17 10:46:59.826778+00	135	Percepción y realidad	3		9	1
376	2017-10-17 10:46:59.82778+00	76	Preparación para la Lectura de Tarot 1	3		9	1
377	2017-10-17 10:46:59.829279+00	77	Preparación para la Lectura de Tarot 2	3		9	1
378	2017-10-17 10:46:59.830278+00	78	Preparación para la Lectura de Tarot 3	3		9	1
379	2017-10-17 10:46:59.831779+00	79	Recibiendo al Consultante 1	3		9	1
380	2017-10-17 10:46:59.832778+00	80	Recibiendo al Consultante 2	3		9	1
381	2017-10-17 10:46:59.83378+00	136	Simbolos 4	3		9	1
382	2017-10-17 10:46:59.835279+00	139	Símbolos Números y Colores 1	3		9	1
383	2017-10-17 10:46:59.836278+00	140	Símbolos Números y Colores 2	3		9	1
384	2017-10-17 10:46:59.837278+00	141	Símbolos Números y Colores 3-A	3		9	1
385	2017-10-17 10:46:59.838279+00	142	Símbolos Números y Colores 3b	3		9	1
386	2017-10-17 10:46:59.839778+00	137	Sincronicidad 1	3		9	1
387	2017-10-17 10:46:59.840779+00	138	Sincronicidad 2	3		9	1
388	2017-10-17 10:46:59.842279+00	81	Teoría y Estructura del Tarot	3		9	1
389	2017-10-17 10:46:59.843279+00	125	Tipos de Arbol - Árbol mamímero	3		9	1
390	2017-10-17 10:46:59.84478+00	126	Tipos de Arbol - emocional	3		9	1
391	2017-10-17 10:46:59.845779+00	32	Viviéndonos como Conciencia	3		9	1
392	2017-10-17 10:47:25.232274+00	146	El Tarot Como guía	1	[{"added": {}}]	9	1
393	2017-10-17 10:47:37.858272+00	147	La Barca en la que navegaremos	1	[{"added": {}}]	9	1
394	2017-10-17 10:47:47.25827+00	148	La Condición Divina	1	[{"added": {}}]	9	1
395	2017-10-17 10:48:00.435768+00	149	La Condición Divina 2	1	[{"added": {}}]	9	1
396	2017-10-17 10:48:10.543767+00	150	La Configuración del Yo Testigo	1	[{"added": {}}]	9	1
397	2017-10-17 10:48:25.166263+00	151	La Dimensión Transpersonal	1	[{"added": {}}]	9	1
398	2017-10-17 10:49:18.444754+00	152	Las Resistencias del Cerebro Reptil	1	[{"added": {}}]	9	1
399	2017-10-17 10:49:44.499751+00	153	Mensaje a Estudiantes 1	1	[{"added": {}}]	9	1
400	2017-10-17 10:50:09.534746+00	154	Mensaje a Estudiantes 2	1	[{"added": {}}]	9	1
401	2017-10-17 10:50:22.592244+00	155	Mensaje a Estudiantes 3	1	[{"added": {}}]	9	1
402	2017-10-17 10:50:33.152741+00	156	MetaMundo La Escuela	1	[{"added": {}}]	9	1
403	2017-10-17 10:50:46.316739+00	157	Metamundo y la Expansión de la Conciencia	1	[{"added": {}}]	9	1
404	2017-10-17 10:50:58.516237+00	158	Mi Historia personal con el Tarot 1	1	[{"added": {}}]	9	1
405	2017-10-17 10:51:15.872734+00	159	Mi Historia personal con el Tarot 2	1	[{"added": {}}]	9	1
406	2017-10-17 10:51:36.76323+00	160	Mi Historia personal con el Tarot 3	1	[{"added": {}}]	9	1
407	2017-10-17 10:51:51.732728+00	161	Viviéndonos como Conciencia	1	[{"added": {}}]	9	1
408	2017-10-17 10:52:06.346225+00	162	Conclusiones sobre los Estados de Conciencia	1	[{"added": {}}]	9	1
409	2017-10-17 10:52:17.918724+00	163	Conflicto de Fracaso 1	1	[{"added": {}}]	9	1
410	2017-10-17 10:52:35.08522+00	164	Conflicto de Fracaso 2	1	[{"added": {}}]	9	1
411	2017-10-17 10:52:54.559218+00	165	Conflicto de Fracaso 3	1	[{"added": {}}]	9	1
412	2017-10-17 10:53:10.892215+00	166	Conflicto de Fracaso 4	1	[{"added": {}}]	9	1
413	2017-10-17 10:53:30.185211+00	167	Diferentes Tipos de Ego 1	1	[{"added": {}}]	9	1
414	2017-10-17 10:53:42.363708+00	168	Diferentes Tipos de Ego 2	1	[{"added": {}}]	9	1
415	2017-10-17 10:53:59.617205+00	169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	1	[{"added": {}}]	9	1
416	2017-10-17 10:54:15.012203+00	170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	1	[{"added": {}}]	9	1
417	2017-10-17 10:54:34.632705+00	171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	1	[{"added": {}}]	9	1
418	2017-10-17 10:54:48.860698+00	172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	1	[{"added": {}}]	9	1
419	2017-10-17 10:55:04.099195+00	173	El Abuso en los Cuatro Centros	1	[{"added": {}}]	9	1
420	2017-10-17 10:55:19.114192+00	174	El Destino que el Yo Genealógico ha establecido en ti.	1	[{"added": {}}]	9	1
421	2017-10-17 10:55:28.74619+00	175	El Impacto de tu nombre 1	1	[{"added": {}}]	9	1
422	2017-10-17 10:55:39.777188+00	176	El Impacto de tu nombre 2	1	[{"added": {}}]	9	1
423	2017-10-17 10:55:52.174686+00	177	El Impacto de tu nombre 3	1	[{"added": {}}]	9	1
424	2017-10-17 10:56:03.412684+00	178	El Mito en el Árbol	1	[{"added": {}}]	9	1
425	2017-10-17 10:56:14.073683+00	179	El Proceso de Transformación	1	[{"added": {}}]	9	1
426	2017-10-17 10:56:26.30368+00	180	Encuentro, Concepción, Gestación y Nacimiento 1	1	[{"added": {}}]	9	1
427	2017-10-17 10:56:36.529178+00	181	Encuentro, Concepción, Gestación y Nacimiento 2	1	[{"added": {}}]	9	1
428	2017-10-17 10:56:49.116677+00	182	Encuentro, Concepción, Gestación y Nacimiento 3	1	[{"added": {}}]	9	1
429	2017-10-17 10:56:59.336175+00	183	Estructura de la Metagenealogia 1	1	[{"added": {}}]	9	1
430	2017-10-17 10:57:09.758173+00	184	Estructura de la Metagenealogia 2	1	[{"added": {}}]	9	1
431	2017-10-17 10:57:21.839671+00	185	Estructura de la Metagenealogia 3	1	[{"added": {}}]	9	1
432	2017-10-17 10:57:38.476668+00	186	Formas de Repetición en el Árbol 1	1	[{"added": {}}]	9	1
433	2017-10-17 10:57:48.673666+00	187	Formas de Repetición en el Árbol 2	1	[{"added": {}}]	9	1
434	2017-10-17 10:58:03.670663+00	188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	1	[{"added": {}}]	9	1
435	2017-10-17 10:58:13.154161+00	189	Introducción a los Núcleos y Nudos	1	[{"added": {}}]	9	1
436	2017-10-17 10:58:27.410159+00	190	Nivel de Conciencia Adolescente Romántico	1	[{"added": {}}]	9	1
437	2017-10-17 10:58:44.346656+00	191	Nivel de Conciencia Adulto Altruista	1	[{"added": {}}]	9	1
438	2017-10-17 10:58:55.687155+00	192	Nivel de Conciencia Adulto Aprovechador	1	[{"added": {}}]	9	1
439	2017-10-17 10:59:37.509147+00	193	Nivel de Conciencia Animal	1	[{"added": {}}]	9	1
440	2017-10-17 10:59:48.225645+00	194	Nivel de Conciencia Cósmico	1	[{"added": {}}]	9	1
441	2017-10-17 10:59:59.176643+00	195	Nivel de Conciencia Divino	1	[{"added": {}}]	9	1
442	2017-10-17 11:00:09.939642+00	196	Nivel de Conciencia Niño Consumidor	1	[{"added": {}}]	9	1
443	2017-10-17 11:00:23.383139+00	197	Nivel de Conciencia Planetario	1	[{"added": {}}]	9	1
444	2017-10-17 11:00:32.951637+00	198	Nivel de Conciencia Solar	1	[{"added": {}}]	9	1
445	2017-10-17 11:00:43.077136+00	199	Niveles de Conciencia	1	[{"added": {}}]	9	1
446	2017-10-17 11:00:54.619134+00	200	Núcleo y Nudo Bisexual	1	[{"added": {}}]	9	1
447	2017-10-17 11:01:07.110631+00	201	Núcleo y Nudo Incestuoso	1	[{"added": {}}]	9	1
448	2017-10-17 11:01:16.42363+00	202	Núcleo y Nudo Narcisista 1	1	[{"added": {}}]	9	1
449	2017-10-17 11:01:27.132627+00	203	Núcleo y Nudo Narcisista 2	1	[{"added": {}}]	9	1
450	2017-10-17 11:01:40.821626+00	204	Núcleo y Nudo Social	1	[{"added": {}}]	9	1
451	2017-10-17 11:01:52.102623+00	205	Tipos de Árbol - Árbol Mamífero	1	[{"added": {}}]	9	1
452	2017-10-17 11:02:00.407623+00	206	Tipos de Árbol - Emocional	1	[{"added": {}}]	9	1
453	2017-10-17 11:02:59.677612+00	162	Conclusiones sobre los Estados de Conciencia	2	[{"changed": {"fields": ["category"]}}]	9	1
454	2017-10-17 11:03:14.891609+00	163	Conflicto de Fracaso 1	2	[{"changed": {"fields": ["category"]}}]	9	1
455	2017-10-17 11:03:20.101608+00	164	Conflicto de Fracaso 2	2	[{"changed": {"fields": ["category"]}}]	9	1
456	2017-10-17 11:03:25.012107+00	165	Conflicto de Fracaso 3	2	[{"changed": {"fields": ["category"]}}]	9	1
457	2017-10-17 11:03:31.244606+00	166	Conflicto de Fracaso 4	2	[{"changed": {"fields": ["category"]}}]	9	1
458	2017-10-17 11:03:36.580107+00	167	Diferentes Tipos de Ego 1	2	[{"changed": {"fields": ["category"]}}]	9	1
459	2017-10-17 11:03:51.309103+00	168	Diferentes Tipos de Ego 2	2	[{"changed": {"fields": ["category"]}}]	9	1
460	2017-10-17 11:03:58.700102+00	169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	2	[{"changed": {"fields": ["category"]}}]	9	1
461	2017-10-17 11:04:04.8181+00	170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	2	[{"changed": {"fields": ["category"]}}]	9	1
462	2017-10-17 11:04:13.698099+00	171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	2	[{"changed": {"fields": ["category"]}}]	9	1
463	2017-10-17 11:04:47.564593+00	172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	2	[{"changed": {"fields": ["category"]}}]	9	1
464	2017-10-17 11:04:59.413591+00	173	El Abuso en los Cuatro Centros	2	[{"changed": {"fields": ["category"]}}]	9	1
465	2017-10-17 11:05:09.57359+00	174	El Destino que el Yo Genealógico ha establecido en ti.	2	[{"changed": {"fields": ["category"]}}]	9	1
466	2017-10-17 11:05:16.112088+00	175	El Impacto de tu nombre 1	2	[{"changed": {"fields": ["category"]}}]	9	1
467	2017-10-17 11:05:21.612587+00	176	El Impacto de tu nombre 2	2	[{"changed": {"fields": ["category"]}}]	9	1
468	2017-10-17 11:05:27.959086+00	177	El Impacto de tu nombre 3	2	[{"changed": {"fields": ["category"]}}]	9	1
469	2017-10-17 11:05:35.586585+00	178	El Mito en el Árbol	2	[{"changed": {"fields": ["category"]}}]	9	1
470	2017-10-17 11:05:41.797585+00	180	Encuentro, Concepción, Gestación y Nacimiento 1	2	[{"changed": {"fields": ["category"]}}]	9	1
471	2017-10-17 11:05:47.905582+00	179	El Proceso de Transformación	2	[{"changed": {"fields": ["category"]}}]	9	1
472	2017-10-17 11:05:54.156582+00	181	Encuentro, Concepción, Gestación y Nacimiento 2	2	[{"changed": {"fields": ["category"]}}]	9	1
473	2017-10-17 11:06:01.55108+00	182	Encuentro, Concepción, Gestación y Nacimiento 3	2	[{"changed": {"fields": ["category"]}}]	9	1
474	2017-10-17 11:06:10.885579+00	183	Estructura de la Metagenealogia 1	2	[{"changed": {"fields": ["category"]}}]	9	1
475	2017-10-17 11:06:17.967078+00	184	Estructura de la Metagenealogia 2	2	[{"changed": {"fields": ["category"]}}]	9	1
476	2017-10-17 11:06:25.126076+00	185	Estructura de la Metagenealogia 3	2	[{"changed": {"fields": ["category"]}}]	9	1
477	2017-10-17 11:06:31.496575+00	186	Formas de Repetición en el Árbol 1	2	[{"changed": {"fields": ["category"]}}]	9	1
478	2017-10-17 11:06:39.031573+00	187	Formas de Repetición en el Árbol 2	2	[{"changed": {"fields": ["category"]}}]	9	1
479	2017-10-17 11:06:45.987572+00	188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	2	[{"changed": {"fields": ["category"]}}]	9	1
480	2017-10-17 11:06:52.355071+00	190	Nivel de Conciencia Adolescente Romántico	2	[{"changed": {"fields": ["category"]}}]	9	1
481	2017-10-17 11:06:59.373571+00	189	Introducción a los Núcleos y Nudos	2	[{"changed": {"fields": ["category"]}}]	9	1
482	2017-10-17 11:07:08.111069+00	191	Nivel de Conciencia Adulto Altruista	2	[{"changed": {"fields": ["category"]}}]	9	1
483	2017-10-17 11:07:23.122567+00	192	Nivel de Conciencia Adulto Aprovechador	2	[{"changed": {"fields": ["category"]}}]	9	1
484	2017-10-17 11:07:33.447064+00	193	Nivel de Conciencia Animal	2	[{"changed": {"fields": ["category"]}}]	9	1
485	2017-10-17 11:07:40.478563+00	194	Nivel de Conciencia Cósmico	2	[{"changed": {"fields": ["category"]}}]	9	1
486	2017-10-17 11:07:53.904561+00	195	Nivel de Conciencia Divino	2	[{"changed": {"fields": ["category"]}}]	9	1
487	2017-10-17 11:08:02.45556+00	196	Nivel de Conciencia Niño Consumidor	2	[{"changed": {"fields": ["category"]}}]	9	1
488	2017-10-17 11:08:12.697558+00	197	Nivel de Conciencia Planetario	2	[{"changed": {"fields": ["category"]}}]	9	1
489	2017-10-17 11:08:19.418556+00	198	Nivel de Conciencia Solar	2	[{"changed": {"fields": ["category"]}}]	9	1
490	2017-10-17 11:08:29.034555+00	199	Niveles de Conciencia	2	[{"changed": {"fields": ["category"]}}]	9	1
491	2017-10-17 11:08:35.436557+00	200	Núcleo y Nudo Bisexual	2	[{"changed": {"fields": ["category"]}}]	9	1
492	2017-10-17 11:08:41.891553+00	201	Núcleo y Nudo Incestuoso	2	[{"changed": {"fields": ["category"]}}]	9	1
493	2017-10-17 11:08:50.608051+00	202	Núcleo y Nudo Narcisista 1	2	[{"changed": {"fields": ["category"]}}]	9	1
494	2017-10-17 11:08:56.389049+00	203	Núcleo y Nudo Narcisista 2	2	[{"changed": {"fields": ["category"]}}]	9	1
495	2017-10-17 11:09:03.176549+00	204	Núcleo y Nudo Social	2	[{"changed": {"fields": ["category"]}}]	9	1
496	2017-10-17 11:09:09.182548+00	205	Tipos de Árbol - Árbol Mamífero	2	[{"changed": {"fields": ["category"]}}]	9	1
497	2017-10-17 11:09:16.794547+00	206	Tipos de Árbol - Emocional	2	[{"changed": {"fields": ["category"]}}]	9	1
498	2017-10-17 11:09:46.47054+00	207	Actitud y Ética del Tarologo 1	1	[{"added": {}}]	9	1
499	2017-10-17 11:10:03.456038+00	208	Actitud y Ética del Tarologo 2	1	[{"added": {}}]	9	1
500	2017-10-17 11:10:18.250535+00	209	Actitud y Ética del Tarologo 3	1	[{"added": {}}]	9	1
501	2017-10-17 11:10:30.446033+00	210	Actitud y Ética del Tarologo 4	1	[{"added": {}}]	9	1
502	2017-10-17 11:10:39.503032+00	211	Actitud y Ética del Tarologo 5	1	[{"added": {}}]	9	1
503	2017-10-17 11:10:51.73753+00	212	Actitud y Ética del Tarologo 6	1	[{"added": {}}]	9	1
504	2017-10-17 11:11:00.024528+00	213	Actitud y Ética del Tarologo 7	1	[{"added": {}}]	9	1
505	2017-10-17 11:11:11.808526+00	214	Analizando los Elementos Simbólicos	1	[{"added": {}}]	9	1
506	2017-10-17 11:11:21.672525+00	215	Analogías, Símbolos, Metáforas y Mitos en el Tarot	1	[{"added": {}}]	9	1
507	2017-10-17 11:11:41.834521+00	216	Antecedentes	1	[{"added": {}}]	9	1
508	2017-10-17 11:11:51.02002+00	217	Así es una ceremonia del te japonesa	1	[{"added": {}}]	9	1
509	2017-10-17 11:12:00.122017+00	218	Auto-Lectura con los Arcanos Mayores	1	[{"added": {}}]	9	1
510	2017-10-17 11:12:21.508515+00	219	Consideraciones sobre como leer el Tarot	1	[{"added": {}}]	9	1
511	2017-10-17 11:12:30.760013+00	220	Consideraciones sobre la Lectura del Tarot 1	1	[{"added": {}}]	9	1
512	2017-10-17 11:12:40.635513+00	221	Consideraciones sobre la Lectura del Tarot 2	1	[{"added": {}}]	9	1
513	2017-10-17 11:12:50.672509+00	222	Diferentes Visiones en las Lecturas de Tarot	1	[{"added": {}}]	9	1
514	2017-10-17 11:13:03.177506+00	223	Las Neuronas Espejo	1	[{"added": {}}]	9	1
515	2017-10-17 11:13:13.617505+00	224	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	1	[{"added": {}}]	9	1
516	2017-10-17 11:13:55.797998+00	225	Lectura Causas de la Situación Presente	1	[{"added": {}}]	9	1
517	2017-10-17 11:14:05.453997+00	226	Lectura Comienzo - Desarrollo - Resultado	1	[{"added": {}}]	9	1
518	2017-10-17 11:14:21.867993+00	227	Lectura Conflicto - Solución	1	[{"added": {}}]	9	1
519	2017-10-17 11:14:44.494493+00	228	Lectura Conflicto entre 2 Personas y su Solución	1	[{"added": {}}]	9	1
520	2017-10-17 11:14:53.628988+00	229	Lectura el Tarot hace las Preguntas	1	[{"added": {}}]	9	1
521	2017-10-17 11:15:02.714986+00	230	Lectura el Trio Familiar	1	[{"added": {}}]	9	1
522	2017-10-17 11:15:13.046984+00	231	Lectura Narcisista	1	[{"added": {}}]	9	1
523	2017-10-17 11:15:21.819982+00	232	Lectura con 3 cartas Sumando los Arcanos	1	[{"added": {}}]	9	1
524	2017-10-17 11:15:33.844981+00	233	Lectura con Interpretación de la Carta de Abajo	1	[{"added": {}}]	9	1
525	2017-10-17 11:15:46.630978+00	234	Lectura de 3 Cartas con Pregunta	1	[{"added": {}}]	9	1
526	2017-10-17 11:16:01.470976+00	235	Lectura del Héroes o la Heroína	1	[{"added": {}}]	9	1
527	2017-10-17 11:16:10.956974+00	236	Lectura del Tarot en una Frase	1	[{"added": {}}]	9	1
528	2017-10-17 11:16:21.232473+00	237	Lectura sin Pregunta	1	[{"added": {}}]	9	1
529	2017-10-17 11:16:28.785971+00	238	Lecturas con 3 Cartas	1	[{"added": {}}]	9	1
530	2017-10-17 11:16:36.21147+00	239	Lecturas con Arcanos Menores 0	1	[{"added": {}}]	9	1
531	2017-10-17 11:16:45.038968+00	240	Lecturas con Arcanos Menores 1	1	[{"added": {}}]	9	1
532	2017-10-17 11:16:56.858967+00	241	Lecturas con Arcanos Menores 2	1	[{"added": {}}]	9	1
533	2017-10-17 11:17:29.29496+00	242	Lecturas de Tarot - Ejemplos y Practicas	1	[{"added": {}}]	9	1
534	2017-10-17 11:17:36.552959+00	243	Lenguaje Gestual	1	[{"added": {}}]	9	1
535	2017-10-17 11:17:44.043958+00	244	Lenguaje Visual del Tarot	1	[{"added": {}}]	9	1
536	2017-10-17 11:17:53.851457+00	245	Los Arquetipos en el Tarot	1	[{"added": {}}]	9	1
537	2017-10-17 11:18:02.017456+00	246	Los Palos en el Tarot	1	[{"added": {}}]	9	1
538	2017-10-17 11:18:09.725954+00	247	Mi Historia Personal con el Tarot	1	[{"added": {}}]	9	1
539	2017-10-17 11:18:18.438453+00	248	Observando Analogías	1	[{"added": {}}]	9	1
540	2017-10-17 11:18:27.293951+00	249	Observando el Mándala del Tarot	1	[{"added": {}}]	9	1
541	2017-10-17 11:18:41.501448+00	250	Preparación para la Lectura del Tarot 1	1	[{"added": {}}]	9	1
542	2017-10-17 11:18:53.264447+00	251	Preparación para la Lectura del Tarot 2	1	[{"added": {}}]	9	1
543	2017-10-17 11:19:01.201445+00	252	Preparación para la Lectura del Tarot 3	1	[{"added": {}}]	9	1
544	2017-10-17 11:19:09.534443+00	253	Recibiendo al Consultante 1	1	[{"added": {}}]	9	1
545	2017-10-17 11:19:17.854942+00	254	Recibiendo al Consultante 2	1	[{"added": {}}]	9	1
546	2017-10-17 11:19:31.61494+00	255	Teoría y Estructura del Tarot	1	[{"added": {}}]	9	1
547	2017-10-17 11:19:50.836436+00	256	Bases y Fundamentos de la Psicomagia 1	1	[{"added": {}}]	9	1
548	2017-10-17 11:20:11.255933+00	257	Bases y Fundamentos de la Psicomagia 2	1	[{"added": {}}]	9	1
549	2017-10-17 11:20:23.491431+00	258	Bases y Fundamentos de la Psicomagia 3	1	[{"added": {}}]	9	1
550	2017-10-17 11:20:32.870429+00	259	Bases y Fundamentos de la Psicomagia 4	1	[{"added": {}}]	9	1
551	2017-10-17 11:20:48.030926+00	260	Bases y Fundamentos de la Psicomagia 5	1	[{"added": {}}]	9	1
552	2017-10-17 11:21:07.970923+00	261	Bases y Fundamentos de la Psicomagia 6	1	[{"added": {}}]	9	1
553	2017-10-17 11:21:16.338921+00	262	Introducción a la Psicomagia 3	1	[{"added": {}}]	9	1
554	2017-10-17 11:21:24.37292+00	263	Introducción a la Psicomagia 4	1	[{"added": {}}]	9	1
555	2017-10-17 11:21:32.335418+00	264	Introducción a la Psicomagia 5	1	[{"added": {}}]	9	1
556	2017-10-17 11:21:45.117416+00	265	Percepción y Realidad	1	[{"added": {}}]	9	1
557	2017-10-17 11:22:03.194413+00	266	Símbolos	1	[{"added": {}}]	9	1
558	2017-10-17 11:22:16.124911+00	267	Sincronicidad 1	1	[{"added": {}}]	9	1
559	2017-10-17 11:22:29.588908+00	268	Sincronicidad 2	1	[{"added": {}}]	9	1
560	2017-10-17 11:22:39.996406+00	269	Símbolos, Números y Colores 1	1	[{"added": {}}]	9	1
561	2017-10-17 11:22:52.089406+00	270	Símbolos, Números y Colores 2	1	[{"added": {}}]	9	1
562	2017-10-17 11:23:05.598903+00	271	Símbolos, Números y Colores 3A	1	[{"added": {}}]	9	1
563	2017-10-17 11:23:16.1314+00	272	Símbolos, Números y Colores 3B	1	[{"added": {}}]	9	1
564	2017-10-17 11:23:24.379399+00	273	¿Que es la Psicomagia? 1	1	[{"added": {}}]	9	1
565	2017-10-17 11:23:36.363397+00	274	¿Que es la Psicomagia? 2	1	[{"added": {}}]	9	1
566	2017-10-17 11:23:48.780394+00	275	¿Que es la Psicomagia? 3	1	[{"added": {}}]	9	1
567	2017-10-18 22:09:00.053895+00	2	TescaCEO	1	[{"added": {}}]	4	1
568	2017-10-20 21:08:38.574611+00	3	TescaTester	1	[{"added": {}}]	4	1
569	2017-10-20 21:11:05.655322+00	4	Cristobal	1	[{"added": {}}]	4	1
570	2017-11-22 05:48:02.508182+00	5	Adrianamexico	1	[{"added": {}}]	4	1
571	2017-11-22 20:18:54.426314+00	6	Gastonargentina	1	[{"added": {}}]	4	1
572	2017-11-22 20:18:59.183156+00	6	Gastonargentina	2	[]	4	1
573	2017-11-22 20:19:15.662674+00	7	Martiargentina	1	[{"added": {}}]	4	1
574	2017-11-28 22:23:55.345054+00	8	lorenamexico	1	[{"added": {}}]	4	1
575	2017-11-28 22:23:58.651347+00	8	lorenamexico	2	[]	4	1
576	2017-11-28 22:24:06.456851+00	9	valeriamexico	1	[{"added": {}}]	4	1
577	2017-11-28 22:24:10.138342+00	9	valeriamexico	2	[]	4	1
578	2017-11-28 22:24:31.892278+00	10	sandramexico	1	[{"added": {}}]	4	1
579	2017-11-28 22:25:09.918356+00	9	valeriamexico	2	[{"changed": {"fields": ["password"]}}]	4	1
580	2017-11-28 22:25:14.442416+00	9	valeriamexico	2	[]	4	1
581	2017-11-28 22:25:25.003404+00	11	Diegomexico	1	[{"added": {}}]	4	1
582	2017-11-28 22:25:32.254604+00	11	Diegomexico	2	[]	4	1
583	2017-11-28 22:25:42.810826+00	12	Lilianamexico	1	[{"added": {}}]	4	1
584	2017-11-28 23:08:53.705289+00	8	lorenamexico	2	[{"changed": {"fields": ["password"]}}]	4	1
585	2017-11-28 23:09:36.354242+00	9	valeriamexico	2	[{"changed": {"fields": ["password"]}}]	4	1
586	2017-11-28 23:09:46.3882+00	8	lorenamexico	2	[{"changed": {"fields": ["password"]}}]	4	1
587	2017-11-28 23:09:58.74529+00	10	sandramexico	2	[{"changed": {"fields": ["password"]}}]	4	1
588	2017-11-28 23:10:13.558219+00	11	Diegomexico	2	[{"changed": {"fields": ["password"]}}]	4	1
589	2017-11-28 23:10:31.222155+00	11	Diegomexico	2	[{"changed": {"fields": ["password"]}}]	4	1
590	2017-11-28 23:27:55.818208+00	11	Diegomexico	2	[{"changed": {"fields": ["password"]}}]	4	1
591	2017-11-28 23:28:17.376507+00	12	Lilianamexico	2	[{"changed": {"fields": ["password"]}}]	4	1
592	2017-11-29 21:23:33.772005+00	13	jaimemexico	1	[{"added": {}}]	4	1
593	2017-11-29 21:23:41.040775+00	13	jaimemexico	2	[]	4	1
594	2017-11-29 21:23:48.255282+00	14	julianacolombia	1	[{"added": {}}]	4	1
595	2017-12-05 02:06:17.563566+00	15	pamelamexico	1	[{"added": {}}]	4	1
596	2017-12-05 02:06:35.63125+00	15	pamelamexico	2	[{"changed": {"fields": ["password"]}}]	4	1
597	2017-12-05 02:07:49.708443+00	15	pamelamexico	2	[{"changed": {"fields": ["password"]}}]	4	1
598	2017-12-13 22:35:18.806283+00	16	dielkisfrancia	1	[{"added": {}}]	4	1
599	2018-01-04 19:37:45.783765+00	17	Itzli	1	[{"added": {}}]	4	1
600	2018-01-04 19:38:18.209978+00	17	Itzli	2	[{"changed": {"fields": ["is_staff", "is_superuser"]}}]	4	1
601	2018-01-16 05:36:34.368052+00	14	julianacolombia	2	[{"changed": {"fields": ["password"]}}]	4	1
602	2018-02-13 15:46:49.76972+00	17	Itzli	3		4	1
603	2018-04-04 08:07:23.596078+00	1	Card object	1	[{"added": {}}]	13	19
604	2018-04-04 08:07:42.159561+00	1	Card object	3		13	19
605	2018-04-04 20:06:24.171893+00	2	Card object	1	[{"added": {}}]	13	19
606	2018-04-04 20:06:49.869629+00	3	Card object	1	[{"added": {}}]	13	19
607	2018-04-04 20:07:13.328933+00	4	Card object	1	[{"added": {}}]	13	19
608	2018-04-04 20:07:59.168516+00	5	Card object	1	[{"added": {}}]	13	19
609	2018-04-04 20:08:37.055013+00	6	Card object	1	[{"added": {}}]	13	19
610	2018-04-04 20:09:03.175131+00	7	Card object	1	[{"added": {}}]	13	19
611	2018-04-04 20:09:27.636269+00	8	Card object	1	[{"added": {}}]	13	19
612	2018-04-04 20:09:49.441733+00	9	Card object	1	[{"added": {}}]	13	19
613	2018-04-04 20:10:25.071863+00	10	Card object	1	[{"added": {}}]	13	19
614	2018-04-04 20:11:02.096902+00	11	Card object	1	[{"added": {}}]	13	19
615	2018-04-04 20:11:52.321789+00	12	Card object	1	[{"added": {}}]	13	19
616	2018-04-04 20:24:32.871539+00	13	Card object	1	[{"added": {}}]	13	19
617	2018-04-04 20:25:12.404533+00	14	Card object	1	[{"added": {}}]	13	19
618	2018-04-04 20:25:41.401199+00	15	Card object	1	[{"added": {}}]	13	19
619	2018-04-04 20:26:07.825282+00	16	Card object	1	[{"added": {}}]	13	19
620	2018-04-04 20:26:35.28211+00	17	Card object	1	[{"added": {}}]	13	19
621	2018-04-04 20:28:04.855595+00	17	Card object	2	[{"changed": {"fields": ["name"]}}]	13	19
622	2018-04-04 20:28:26.338651+00	18	Card object	1	[{"added": {}}]	13	19
623	2018-04-04 20:28:48.495115+00	19	Card object	1	[{"added": {}}]	13	19
624	2018-04-04 20:29:20.687906+00	20	Card object	1	[{"added": {}}]	13	19
625	2018-04-04 20:29:43.722793+00	21	Card object	1	[{"added": {}}]	13	19
626	2018-04-04 20:30:07.289443+00	22	Card object	1	[{"added": {}}]	13	19
627	2018-04-04 20:50:32.127563+00	1	Week object	1	[{"added": {}}]	14	19
628	2018-04-04 21:34:28.251778+00	1	Response object	1	[{"added": {}}]	12	19
629	2018-04-04 21:34:56.857094+00	1	Question object	1	[{"added": {}}]	11	19
630	2018-04-04 21:35:03.382957+00	1	Question object	2	[]	11	19
631	2018-04-04 21:36:30.158746+00	2	Question object	1	[{"added": {}}]	11	19
632	2018-04-04 21:37:10.152363+00	3	Question object	1	[{"added": {}}]	11	19
633	2018-04-04 21:37:44.923115+00	4	Question object	1	[{"added": {}}]	11	19
634	2018-04-04 21:37:54.433526+00	4	Question object	2	[{"changed": {"fields": ["status"]}}]	11	19
635	2018-05-12 21:52:39.132745+00	1	Question object	3		11	18
636	2018-05-12 21:52:39.142197+00	2	Question object	3		11	18
637	2018-05-12 21:52:39.143943+00	3	Question object	3		11	18
638	2018-05-12 21:52:39.145666+00	4	Question object	3		11	18
639	2018-05-13 18:46:33.080866+00	5	Question object	1	[{"added": {}}]	11	19
640	2018-05-13 18:47:55.263871+00	6	Question object	1	[{"added": {}}]	11	19
641	2018-05-13 18:49:05.322021+00	7	Question object	1	[{"added": {}}]	11	19
642	2018-05-13 18:49:37.179733+00	8	Question object	1	[{"added": {}}]	11	19
643	2018-05-13 18:50:16.604794+00	9	Question object	1	[{"added": {}}]	11	19
644	2018-05-13 18:53:50.395084+00	10	Question object	1	[{"added": {}}]	11	19
645	2018-05-13 19:14:56.249012+00	9	Question object	3		11	19
646	2018-05-13 19:14:56.251828+00	10	Question object	3		11	19
647	2018-05-17 08:57:33.04591+00	1	Subscriber object	1	[{"added": {}}]	15	1
648	2018-05-17 08:57:44.119767+00	2	Subscriber object	1	[{"added": {}}]	15	1
649	2018-05-17 08:57:51.623436+00	3	Subscriber object	1	[{"added": {}}]	15	1
650	2018-05-17 08:58:03.941384+00	4	Subscriber object	1	[{"added": {}}]	15	1
651	2018-05-17 08:58:16.796588+00	5	Subscriber object	1	[{"added": {}}]	15	1
652	2018-05-17 08:58:22.995556+00	5	Subscriber object	2	[{"changed": {"fields": ["user"]}}]	15	1
653	2018-05-17 08:58:31.373576+00	5	Subscriber object	2	[{"changed": {"fields": ["user"]}}]	15	1
654	2018-05-17 08:58:58.904349+00	6	Subscriber object	1	[{"added": {}}]	15	1
655	2018-05-17 08:59:53.205765+00	7	Subscriber object	1	[{"added": {}}]	15	1
656	2018-05-17 08:59:59.836274+00	8	Subscriber object	1	[{"added": {}}]	15	1
657	2018-05-17 09:00:05.417113+00	9	Subscriber object	1	[{"added": {}}]	15	1
658	2018-05-17 09:00:10.994755+00	10	Subscriber object	1	[{"added": {}}]	15	1
659	2018-05-17 09:00:24.359769+00	11	Subscriber object	1	[{"added": {}}]	15	1
660	2018-05-17 09:00:31.392493+00	12	Subscriber object	1	[{"added": {}}]	15	1
661	2018-05-17 09:00:38.234239+00	13	Subscriber object	1	[{"added": {}}]	15	1
662	2018-05-17 09:00:46.441975+00	14	Subscriber object	1	[{"added": {}}]	15	1
663	2018-05-17 09:00:52.572965+00	15	Subscriber object	1	[{"added": {}}]	15	1
664	2018-05-17 09:00:58.936239+00	16	Subscriber object	1	[{"added": {}}]	15	1
665	2018-05-17 09:01:10.909618+00	17	Subscriber object	1	[{"added": {}}]	15	1
666	2018-05-22 02:46:49.583275+00	15	Subscriber object	2	[{"changed": {"fields": ["grade"]}}]	15	1
667	2018-05-22 08:15:19.813969+00	207	Actitud y Ética del Tarologo 1	2	[{"changed": {"fields": ["status"]}}]	9	1
668	2018-05-22 08:34:06.91233+00	208	Actitud y Ética del Tarologo 2	2	[{"changed": {"fields": ["status"]}}]	9	1
669	2018-05-22 08:34:06.929412+00	209	Actitud y Ética del Tarologo 3	2	[{"changed": {"fields": ["status"]}}]	9	1
670	2018-05-22 08:34:06.932854+00	210	Actitud y Ética del Tarologo 4	2	[{"changed": {"fields": ["status"]}}]	9	1
671	2018-05-22 08:34:06.936371+00	211	Actitud y Ética del Tarologo 5	2	[{"changed": {"fields": ["status"]}}]	9	1
672	2018-05-22 08:34:06.939836+00	212	Actitud y Ética del Tarologo 6	2	[{"changed": {"fields": ["status"]}}]	9	1
673	2018-05-22 08:34:06.943366+00	213	Actitud y Ética del Tarologo 7	2	[{"changed": {"fields": ["status"]}}]	9	1
674	2018-05-22 08:34:06.946914+00	214	Analizando los Elementos Simbólicos	2	[{"changed": {"fields": ["status"]}}]	9	1
675	2018-05-22 08:34:06.950233+00	215	Analogías, Símbolos, Metáforas y Mitos en el Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
676	2018-05-22 08:34:06.953719+00	216	Antecedentes	2	[{"changed": {"fields": ["status"]}}]	9	1
677	2018-05-22 08:34:06.957274+00	217	Así es una ceremonia del te japonesa	2	[{"changed": {"fields": ["status"]}}]	9	1
678	2018-05-22 08:34:06.960771+00	218	Auto-Lectura con los Arcanos Mayores	2	[{"changed": {"fields": ["status"]}}]	9	1
679	2018-05-22 08:34:06.964171+00	256	Bases y Fundamentos de la Psicomagia 1	2	[{"changed": {"fields": ["status"]}}]	9	1
680	2018-05-22 08:34:06.967771+00	257	Bases y Fundamentos de la Psicomagia 2	2	[{"changed": {"fields": ["status"]}}]	9	1
681	2018-05-22 08:34:06.971049+00	258	Bases y Fundamentos de la Psicomagia 3	2	[{"changed": {"fields": ["status"]}}]	9	1
682	2018-05-22 08:34:06.974521+00	259	Bases y Fundamentos de la Psicomagia 4	2	[{"changed": {"fields": ["status"]}}]	9	1
683	2018-05-22 08:34:06.97821+00	260	Bases y Fundamentos de la Psicomagia 5	2	[{"changed": {"fields": ["status"]}}]	9	1
684	2018-05-22 08:34:06.981635+00	261	Bases y Fundamentos de la Psicomagia 6	2	[{"changed": {"fields": ["status"]}}]	9	1
685	2018-05-22 08:34:06.984922+00	162	Conclusiones sobre los Estados de Conciencia	2	[{"changed": {"fields": ["status"]}}]	9	1
686	2018-05-22 08:34:06.98927+00	163	Conflicto de Fracaso 1	2	[{"changed": {"fields": ["status"]}}]	9	1
687	2018-05-22 08:34:06.99266+00	164	Conflicto de Fracaso 2	2	[{"changed": {"fields": ["status"]}}]	9	1
688	2018-05-22 08:34:06.996374+00	165	Conflicto de Fracaso 3	2	[{"changed": {"fields": ["status"]}}]	9	1
689	2018-05-22 08:34:06.999842+00	166	Conflicto de Fracaso 4	2	[{"changed": {"fields": ["status"]}}]	9	1
690	2018-05-22 08:34:07.003497+00	219	Consideraciones sobre como leer el Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
691	2018-05-22 08:34:07.007026+00	220	Consideraciones sobre la Lectura del Tarot 1	2	[{"changed": {"fields": ["status"]}}]	9	1
692	2018-05-22 08:34:07.010418+00	221	Consideraciones sobre la Lectura del Tarot 2	2	[{"changed": {"fields": ["status"]}}]	9	1
693	2018-05-22 08:34:07.013978+00	167	Diferentes Tipos de Ego 1	2	[{"changed": {"fields": ["status"]}}]	9	1
694	2018-05-22 08:34:07.017436+00	168	Diferentes Tipos de Ego 2	2	[{"changed": {"fields": ["status"]}}]	9	1
695	2018-05-22 08:34:07.021037+00	222	Diferentes Visiones en las Lecturas de Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
696	2018-05-22 08:34:07.024375+00	169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	2	[{"changed": {"fields": ["status"]}}]	9	1
697	2018-05-22 08:34:07.027872+00	170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	2	[{"changed": {"fields": ["status"]}}]	9	1
698	2018-05-22 08:34:07.031196+00	171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	2	[{"changed": {"fields": ["status"]}}]	9	1
699	2018-05-22 08:34:07.034621+00	172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	2	[{"changed": {"fields": ["status"]}}]	9	1
700	2018-05-22 08:34:07.038199+00	173	El Abuso en los Cuatro Centros	2	[{"changed": {"fields": ["status"]}}]	9	1
701	2018-05-22 08:34:07.041473+00	174	El Destino que el Yo Genealógico ha establecido en ti.	2	[{"changed": {"fields": ["status"]}}]	9	1
702	2018-05-22 08:34:07.0449+00	175	El Impacto de tu nombre 1	2	[{"changed": {"fields": ["status"]}}]	9	1
703	2018-05-22 08:34:07.048264+00	176	El Impacto de tu nombre 2	2	[{"changed": {"fields": ["status"]}}]	9	1
704	2018-05-22 08:34:07.051597+00	177	El Impacto de tu nombre 3	2	[{"changed": {"fields": ["status"]}}]	9	1
705	2018-05-22 08:34:07.054944+00	178	El Mito en el Árbol	2	[{"changed": {"fields": ["status"]}}]	9	1
706	2018-05-22 08:34:07.058428+00	179	El Proceso de Transformación	2	[{"changed": {"fields": ["status"]}}]	9	1
707	2018-05-22 08:34:07.062017+00	146	El Tarot Como guía	2	[{"changed": {"fields": ["status"]}}]	9	1
708	2018-05-22 08:34:07.065491+00	180	Encuentro, Concepción, Gestación y Nacimiento 1	2	[{"changed": {"fields": ["status"]}}]	9	1
709	2018-05-22 08:34:07.068953+00	181	Encuentro, Concepción, Gestación y Nacimiento 2	2	[{"changed": {"fields": ["status"]}}]	9	1
710	2018-05-22 08:34:07.072242+00	182	Encuentro, Concepción, Gestación y Nacimiento 3	2	[{"changed": {"fields": ["status"]}}]	9	1
711	2018-05-22 08:34:07.075601+00	183	Estructura de la Metagenealogia 1	2	[{"changed": {"fields": ["status"]}}]	9	1
712	2018-05-22 08:34:07.078866+00	184	Estructura de la Metagenealogia 2	2	[{"changed": {"fields": ["status"]}}]	9	1
713	2018-05-22 08:34:07.082069+00	185	Estructura de la Metagenealogia 3	2	[{"changed": {"fields": ["status"]}}]	9	1
714	2018-05-22 08:34:07.085606+00	186	Formas de Repetición en el Árbol 1	2	[{"changed": {"fields": ["status"]}}]	9	1
715	2018-05-22 08:34:07.08901+00	187	Formas de Repetición en el Árbol 2	2	[{"changed": {"fields": ["status"]}}]	9	1
716	2018-05-22 08:34:07.092387+00	188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	2	[{"changed": {"fields": ["status"]}}]	9	1
717	2018-05-22 08:34:07.095567+00	262	Introducción a la Psicomagia 3	2	[{"changed": {"fields": ["status"]}}]	9	1
718	2018-05-22 08:34:07.099027+00	263	Introducción a la Psicomagia 4	2	[{"changed": {"fields": ["status"]}}]	9	1
719	2018-05-22 08:34:07.102765+00	264	Introducción a la Psicomagia 5	2	[{"changed": {"fields": ["status"]}}]	9	1
720	2018-05-22 08:34:07.106202+00	189	Introducción a los Núcleos y Nudos	2	[{"changed": {"fields": ["status"]}}]	9	1
721	2018-05-22 08:34:07.109432+00	147	La Barca en la que navegaremos	2	[{"changed": {"fields": ["status"]}}]	9	1
722	2018-05-22 08:34:07.112842+00	148	La Condición Divina	2	[{"changed": {"fields": ["status"]}}]	9	1
723	2018-05-22 08:34:07.116179+00	149	La Condición Divina 2	2	[{"changed": {"fields": ["status"]}}]	9	1
724	2018-05-22 08:34:07.119565+00	150	La Configuración del Yo Testigo	2	[{"changed": {"fields": ["status"]}}]	9	1
725	2018-05-22 08:34:07.123166+00	151	La Dimensión Transpersonal	2	[{"changed": {"fields": ["status"]}}]	9	1
726	2018-05-22 08:34:07.126927+00	223	Las Neuronas Espejo	2	[{"changed": {"fields": ["status"]}}]	9	1
727	2018-05-22 08:34:07.130339+00	152	Las Resistencias del Cerebro Reptil	2	[{"changed": {"fields": ["status"]}}]	9	1
728	2018-05-22 08:34:07.133911+00	224	Lectura 4 Pasos para Encauzar mi Proceso Transformativo	2	[{"changed": {"fields": ["status"]}}]	9	1
729	2018-05-22 08:34:07.137256+00	225	Lectura Causas de la Situación Presente	2	[{"changed": {"fields": ["status"]}}]	9	1
730	2018-05-22 08:34:07.140732+00	226	Lectura Comienzo - Desarrollo - Resultado	2	[{"changed": {"fields": ["status"]}}]	9	1
731	2018-05-22 08:34:07.144813+00	232	Lectura con 3 cartas Sumando los Arcanos	2	[{"changed": {"fields": ["status"]}}]	9	1
732	2018-05-22 08:34:07.148377+00	228	Lectura Conflicto entre 2 Personas y su Solución	2	[{"changed": {"fields": ["status"]}}]	9	1
733	2018-05-22 08:34:07.151875+00	227	Lectura Conflicto - Solución	2	[{"changed": {"fields": ["status"]}}]	9	1
734	2018-05-22 08:34:07.155314+00	233	Lectura con Interpretación de la Carta de Abajo	2	[{"changed": {"fields": ["status"]}}]	9	1
735	2018-05-22 08:34:07.158708+00	234	Lectura de 3 Cartas con Pregunta	2	[{"changed": {"fields": ["status"]}}]	9	1
736	2018-05-22 08:34:07.162349+00	235	Lectura del Héroes o la Heroína	2	[{"changed": {"fields": ["status"]}}]	9	1
737	2018-05-22 08:34:07.165824+00	236	Lectura del Tarot en una Frase	2	[{"changed": {"fields": ["status"]}}]	9	1
738	2018-05-22 08:34:07.169285+00	229	Lectura el Tarot hace las Preguntas	2	[{"changed": {"fields": ["status"]}}]	9	1
739	2018-05-22 08:34:07.172644+00	230	Lectura el Trio Familiar	2	[{"changed": {"fields": ["status"]}}]	9	1
740	2018-05-22 08:34:07.176056+00	231	Lectura Narcisista	2	[{"changed": {"fields": ["status"]}}]	9	1
741	2018-05-22 08:34:07.179394+00	238	Lecturas con 3 Cartas	2	[{"changed": {"fields": ["status"]}}]	9	1
742	2018-05-22 08:34:07.182715+00	239	Lecturas con Arcanos Menores 0	2	[{"changed": {"fields": ["status"]}}]	9	1
743	2018-05-22 08:34:07.186201+00	240	Lecturas con Arcanos Menores 1	2	[{"changed": {"fields": ["status"]}}]	9	1
744	2018-05-22 08:34:07.189736+00	241	Lecturas con Arcanos Menores 2	2	[{"changed": {"fields": ["status"]}}]	9	1
745	2018-05-22 08:34:07.193188+00	242	Lecturas de Tarot - Ejemplos y Practicas	2	[{"changed": {"fields": ["status"]}}]	9	1
746	2018-05-22 08:34:07.196567+00	237	Lectura sin Pregunta	2	[{"changed": {"fields": ["status"]}}]	9	1
747	2018-05-22 08:34:07.200127+00	243	Lenguaje Gestual	2	[{"changed": {"fields": ["status"]}}]	9	1
748	2018-05-22 08:34:07.203584+00	244	Lenguaje Visual del Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
749	2018-05-22 08:34:07.207024+00	245	Los Arquetipos en el Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
750	2018-05-22 08:34:07.210379+00	246	Los Palos en el Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
751	2018-05-22 08:34:07.213587+00	153	Mensaje a Estudiantes 1	2	[{"changed": {"fields": ["status"]}}]	9	1
752	2018-05-22 08:34:07.216974+00	154	Mensaje a Estudiantes 2	2	[{"changed": {"fields": ["status"]}}]	9	1
753	2018-05-22 08:34:07.220367+00	155	Mensaje a Estudiantes 3	2	[{"changed": {"fields": ["status"]}}]	9	1
754	2018-05-22 08:34:07.223673+00	156	MetaMundo La Escuela	2	[{"changed": {"fields": ["status"]}}]	9	1
755	2018-05-22 08:34:07.227089+00	157	Metamundo y la Expansión de la Conciencia	2	[{"changed": {"fields": ["status"]}}]	9	1
756	2018-05-22 08:34:07.230366+00	247	Mi Historia Personal con el Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
757	2018-05-22 08:34:07.233797+00	158	Mi Historia personal con el Tarot 1	2	[{"changed": {"fields": ["status"]}}]	9	1
758	2018-05-22 08:34:07.237444+00	159	Mi Historia personal con el Tarot 2	2	[{"changed": {"fields": ["status"]}}]	9	1
759	2018-05-22 08:34:07.241297+00	160	Mi Historia personal con el Tarot 3	2	[{"changed": {"fields": ["status"]}}]	9	1
760	2018-05-22 08:34:07.244844+00	190	Nivel de Conciencia Adolescente Romántico	2	[{"changed": {"fields": ["status"]}}]	9	1
761	2018-05-22 08:34:07.24838+00	191	Nivel de Conciencia Adulto Altruista	2	[{"changed": {"fields": ["status"]}}]	9	1
762	2018-05-22 08:34:07.251712+00	192	Nivel de Conciencia Adulto Aprovechador	2	[{"changed": {"fields": ["status"]}}]	9	1
763	2018-05-22 08:34:07.255095+00	193	Nivel de Conciencia Animal	2	[{"changed": {"fields": ["status"]}}]	9	1
764	2018-05-22 08:34:07.258482+00	194	Nivel de Conciencia Cósmico	2	[{"changed": {"fields": ["status"]}}]	9	1
765	2018-05-22 08:34:07.261896+00	195	Nivel de Conciencia Divino	2	[{"changed": {"fields": ["status"]}}]	9	1
766	2018-05-22 08:34:07.265547+00	196	Nivel de Conciencia Niño Consumidor	2	[{"changed": {"fields": ["status"]}}]	9	1
767	2018-05-22 08:34:43.273261+00	197	Nivel de Conciencia Planetario	2	[{"changed": {"fields": ["status"]}}]	9	1
768	2018-05-22 08:34:43.27713+00	198	Nivel de Conciencia Solar	2	[{"changed": {"fields": ["status"]}}]	9	1
769	2018-05-22 08:34:43.280608+00	199	Niveles de Conciencia	2	[{"changed": {"fields": ["status"]}}]	9	1
770	2018-05-22 08:34:43.284112+00	200	Núcleo y Nudo Bisexual	2	[{"changed": {"fields": ["status"]}}]	9	1
771	2018-05-22 08:34:43.287408+00	201	Núcleo y Nudo Incestuoso	2	[{"changed": {"fields": ["status"]}}]	9	1
772	2018-05-22 08:34:43.290903+00	202	Núcleo y Nudo Narcisista 1	2	[{"changed": {"fields": ["status"]}}]	9	1
773	2018-05-22 08:34:43.294314+00	203	Núcleo y Nudo Narcisista 2	2	[{"changed": {"fields": ["status"]}}]	9	1
774	2018-05-22 08:34:43.297504+00	204	Núcleo y Nudo Social	2	[{"changed": {"fields": ["status"]}}]	9	1
775	2018-05-22 08:34:43.300889+00	248	Observando Analogías	2	[{"changed": {"fields": ["status"]}}]	9	1
776	2018-05-22 08:34:43.304037+00	249	Observando el Mándala del Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
777	2018-05-22 08:34:43.307379+00	265	Percepción y Realidad	2	[{"changed": {"fields": ["status"]}}]	9	1
778	2018-05-22 08:34:43.310631+00	250	Preparación para la Lectura del Tarot 1	2	[{"changed": {"fields": ["status"]}}]	9	1
779	2018-05-22 08:34:43.313942+00	251	Preparación para la Lectura del Tarot 2	2	[{"changed": {"fields": ["status"]}}]	9	1
780	2018-05-22 08:34:43.317432+00	252	Preparación para la Lectura del Tarot 3	2	[{"changed": {"fields": ["status"]}}]	9	1
781	2018-05-22 08:34:43.320674+00	273	¿Que es la Psicomagia? 1	2	[{"changed": {"fields": ["status"]}}]	9	1
782	2018-05-22 08:34:43.323989+00	274	¿Que es la Psicomagia? 2	2	[{"changed": {"fields": ["status"]}}]	9	1
783	2018-05-22 08:34:43.327216+00	275	¿Que es la Psicomagia? 3	2	[{"changed": {"fields": ["status"]}}]	9	1
784	2018-05-22 08:34:43.330513+00	253	Recibiendo al Consultante 1	2	[{"changed": {"fields": ["status"]}}]	9	1
785	2018-05-22 08:34:43.334167+00	254	Recibiendo al Consultante 2	2	[{"changed": {"fields": ["status"]}}]	9	1
786	2018-05-22 08:34:43.337614+00	266	Símbolos	2	[{"changed": {"fields": ["status"]}}]	9	1
787	2018-05-22 08:34:43.341031+00	269	Símbolos, Números y Colores 1	2	[{"changed": {"fields": ["status"]}}]	9	1
788	2018-05-22 08:34:43.344419+00	270	Símbolos, Números y Colores 2	2	[{"changed": {"fields": ["status"]}}]	9	1
789	2018-05-22 08:34:43.347896+00	271	Símbolos, Números y Colores 3A	2	[{"changed": {"fields": ["status"]}}]	9	1
790	2018-05-22 08:34:43.351261+00	272	Símbolos, Números y Colores 3B	2	[{"changed": {"fields": ["status"]}}]	9	1
791	2018-05-22 08:34:43.354749+00	267	Sincronicidad 1	2	[{"changed": {"fields": ["status"]}}]	9	1
792	2018-05-22 08:34:43.358126+00	268	Sincronicidad 2	2	[{"changed": {"fields": ["status"]}}]	9	1
793	2018-05-22 08:34:43.361688+00	255	Teoría y Estructura del Tarot	2	[{"changed": {"fields": ["status"]}}]	9	1
794	2018-05-22 08:34:43.365018+00	205	Tipos de Árbol - Árbol Mamífero	2	[{"changed": {"fields": ["status"]}}]	9	1
795	2018-05-22 08:34:43.368345+00	206	Tipos de Árbol - Emocional	2	[{"changed": {"fields": ["status"]}}]	9	1
796	2018-05-22 08:34:43.371841+00	161	Viviéndonos como Conciencia	2	[{"changed": {"fields": ["status"]}}]	9	1
797	2018-05-22 08:35:05.766965+00	276	Analizando los elementos simbólicos	1	[{"added": {}}]	9	1
798	2018-05-22 08:35:34.716049+00	277	INTRO 0- La barca en que navegaremos	1	[{"added": {}}]	9	1
799	2018-05-22 08:35:54.105239+00	278	INTRO 1-Tarot como guìa	1	[{"added": {}}]	9	1
800	2018-05-22 08:36:17.785055+00	279	INTRO 2-La condicion divina1	1	[{"added": {}}]	9	1
801	2018-05-22 08:36:46.812729+00	280	INTRO 3- Condicion divina 2	1	[{"added": {}}]	9	1
802	2018-05-22 08:37:08.567932+00	281	INTRO 4- Configuración del yo testigo	1	[{"added": {}}]	9	1
803	2018-05-22 08:37:35.081952+00	282	INTRO 5- La dimensión transpersonal	1	[{"added": {}}]	9	1
804	2018-05-22 08:37:52.029554+00	283	INTRO 6- Las resistencias del Cerebro Reptil	1	[{"added": {}}]	9	1
805	2018-05-22 08:38:08.032762+00	284	Metamundo La Escuela	1	[{"added": {}}]	9	1
806	2018-05-22 08:38:27.26285+00	285	Metamundo y la ex de la conciencia	1	[{"added": {}}]	9	1
807	2018-05-22 08:38:41.254491+00	286	Mi historia personal 1	1	[{"added": {}}]	9	1
808	2018-05-22 08:38:56.544891+00	287	Mi historia personal 2	1	[{"added": {}}]	9	1
809	2018-05-22 08:39:14.72795+00	288	Viviendonos como conciencia	1	[{"added": {}}]	9	1
810	2018-05-22 08:39:45.650057+00	289	Actitud y Etica del Tarologo 4	1	[{"added": {}}]	9	1
811	2018-05-22 08:40:02.516099+00	290	Actitud y Etica del tarot 2	1	[{"added": {}}]	9	1
812	2018-05-22 08:40:20.3058+00	291	Actitud y etica del tarólogo 3	1	[{"added": {}}]	9	1
813	2018-05-22 08:40:41.463498+00	292	Actitud y ètica del tarólogo 5	1	[{"added": {}}]	9	1
814	2018-05-22 08:40:54.390589+00	293	Actitud y ética del tarot	1	[{"added": {}}]	9	1
815	2018-05-22 08:41:10.411332+00	294	Etica y Actitud del tarólogo 7	1	[{"added": {}}]	9	1
816	2018-05-22 08:41:26.597983+00	295	Etica y actitud del Tarologo 6	1	[{"added": {}}]	9	1
817	2018-05-22 08:41:39.605109+00	296	Integración Psiquica del Tarot	1	[{"added": {}}]	9	1
818	2018-05-22 08:42:31.041874+00	297	Mi Historia con el tarot 3	1	[{"added": {}}]	9	1
819	2018-05-22 08:44:14.50669+00	292	Actitud y ètica del tarólogo 5	2	[{"changed": {"fields": ["category"]}}]	9	1
820	2018-05-22 08:44:18.866817+00	293	Actitud y ética del tarot	2	[{"changed": {"fields": ["category"]}}]	9	1
821	2018-05-22 08:48:30.521469+00	291	Actitud y etica del tarólogo 3	2	[{"changed": {"fields": ["image"]}}]	9	1
822	2018-05-22 08:49:39.42412+00	289	Actitud y Etica del Tarologo 4	2	[{"changed": {"fields": ["image"]}}]	9	1
823	2018-05-22 08:49:43.767997+00	292	Actitud y ètica del tarólogo 5	2	[{"changed": {"fields": ["image"]}}]	9	1
824	2018-05-22 08:49:49.40746+00	293	Actitud y ética del tarot	2	[{"changed": {"fields": ["image"]}}]	9	1
825	2018-05-22 08:49:54.895118+00	290	Actitud y Etica del tarot 2	2	[{"changed": {"fields": ["image"]}}]	9	1
826	2018-05-22 08:50:40.393406+00	295	Etica y actitud del Tarologo 6	2	[{"changed": {"fields": ["image"]}}]	9	1
827	2018-05-22 08:50:43.892106+00	294	Etica y Actitud del tarólogo 7	2	[{"changed": {"fields": ["image"]}}]	9	1
828	2018-05-22 08:50:47.098526+00	296	Integración Psiquica del Tarot	2	[{"changed": {"fields": ["image"]}}]	9	1
829	2018-05-22 08:50:50.22856+00	297	Mi Historia con el tarot 3	2	[{"changed": {"fields": ["image"]}}]	9	1
830	2018-05-22 08:50:53.570601+00	276	Analizando los elementos simbólicos	2	[{"changed": {"fields": ["image"]}}]	9	1
831	2018-05-22 08:52:00.899908+00	277	INTRO 0- La barca en que navegaremos	2	[{"changed": {"fields": ["image"]}}]	9	1
832	2018-05-22 08:52:04.286641+00	278	INTRO 1-Tarot como guìa	2	[{"changed": {"fields": ["image"]}}]	9	1
833	2018-05-22 08:52:07.050023+00	279	INTRO 2-La condicion divina1	2	[{"changed": {"fields": ["image"]}}]	9	1
834	2018-05-22 08:52:09.649367+00	280	INTRO 3- Condicion divina 2	2	[{"changed": {"fields": ["image"]}}]	9	1
835	2018-05-22 08:52:12.624246+00	281	INTRO 4- Configuración del yo testigo	2	[{"changed": {"fields": ["image"]}}]	9	1
836	2018-05-22 08:52:15.461726+00	282	INTRO 5- La dimensión transpersonal	2	[{"changed": {"fields": ["image"]}}]	9	1
837	2018-05-22 08:52:18.267594+00	283	INTRO 6- Las resistencias del Cerebro Reptil	2	[{"changed": {"fields": ["image"]}}]	9	1
838	2018-05-22 08:52:21.36016+00	284	Metamundo La Escuela	2	[{"changed": {"fields": ["image"]}}]	9	1
839	2018-05-22 08:52:23.990974+00	285	Metamundo y la ex de la conciencia	2	[{"changed": {"fields": ["image"]}}]	9	1
840	2018-05-22 08:52:26.640798+00	286	Mi historia personal 1	2	[{"changed": {"fields": ["image"]}}]	9	1
841	2018-05-22 08:52:29.247514+00	287	Mi historia personal 2	2	[{"changed": {"fields": ["image"]}}]	9	1
842	2018-05-22 08:52:32.198416+00	288	Viviendonos como conciencia	2	[{"changed": {"fields": ["image"]}}]	9	1
843	2018-05-22 08:56:07.717717+00	276	Analizando los elementos simbólicos	2	[{"changed": {"fields": ["image"]}}]	9	1
844	2018-05-22 08:56:11.832214+00	277	INTRO 0- La barca en que navegaremos	2	[{"changed": {"fields": ["image"]}}]	9	1
845	2018-05-22 08:56:15.958816+00	278	INTRO 1-Tarot como guìa	2	[{"changed": {"fields": ["image"]}}]	9	1
846	2018-05-22 08:56:20.431784+00	279	INTRO 2-La condicion divina1	2	[{"changed": {"fields": ["image"]}}]	9	1
847	2018-05-22 08:56:24.977777+00	280	INTRO 3- Condicion divina 2	2	[{"changed": {"fields": ["image"]}}]	9	1
848	2018-05-22 08:56:29.11778+00	281	INTRO 4- Configuración del yo testigo	2	[{"changed": {"fields": ["image"]}}]	9	1
849	2018-05-22 08:56:32.94424+00	282	INTRO 5- La dimensión transpersonal	2	[{"changed": {"fields": ["image"]}}]	9	1
850	2018-05-22 08:56:37.108462+00	283	INTRO 6- Las resistencias del Cerebro Reptil	2	[{"changed": {"fields": ["image"]}}]	9	1
851	2018-05-22 08:56:41.249552+00	284	Metamundo La Escuela	2	[{"changed": {"fields": ["image"]}}]	9	1
852	2018-05-22 08:56:45.299037+00	285	Metamundo y la ex de la conciencia	2	[{"changed": {"fields": ["image"]}}]	9	1
853	2018-05-22 08:56:49.431246+00	286	Mi historia personal 1	2	[{"changed": {"fields": ["image"]}}]	9	1
854	2018-05-22 08:56:53.4589+00	287	Mi historia personal 2	2	[{"changed": {"fields": ["image"]}}]	9	1
855	2018-05-22 08:56:58.384275+00	288	Viviendonos como conciencia	2	[{"changed": {"fields": ["image"]}}]	9	1
856	2018-05-22 08:58:17.69296+00	291	Actitud y etica del tarólogo 3	2	[{"changed": {"fields": ["image"]}}]	9	1
857	2018-05-22 08:58:21.364421+00	289	Actitud y Etica del Tarologo 4	2	[{"changed": {"fields": ["image"]}}]	9	1
858	2018-05-22 08:58:25.320249+00	292	Actitud y ètica del tarólogo 5	2	[{"changed": {"fields": ["image"]}}]	9	1
859	2018-05-22 08:58:28.714018+00	293	Actitud y ética del tarot	2	[{"changed": {"fields": ["image"]}}]	9	1
860	2018-05-22 08:58:32.170362+00	290	Actitud y Etica del tarot 2	2	[{"changed": {"fields": ["image"]}}]	9	1
861	2018-05-22 08:58:35.722962+00	295	Etica y actitud del Tarologo 6	2	[{"changed": {"fields": ["image"]}}]	9	1
862	2018-05-22 08:58:39.394442+00	294	Etica y Actitud del tarólogo 7	2	[{"changed": {"fields": ["image"]}}]	9	1
863	2018-05-22 08:58:43.155998+00	296	Integración Psiquica del Tarot	2	[{"changed": {"fields": ["image"]}}]	9	1
864	2018-05-22 08:58:47.188921+00	297	Mi Historia con el tarot 3	2	[{"changed": {"fields": ["image"]}}]	9	1
865	2018-05-22 12:45:25.546112+00	2	Subscriber object	2	[{"changed": {"fields": ["grade"]}}]	15	18
866	2018-05-22 13:07:33.430407+00	20	rita_pirotto	1	[{"added": {}}]	4	18
867	2018-05-22 13:07:59.602281+00	20	rita_pirotto	2	[]	4	18
868	2018-05-22 19:12:36.294392+00	162	Conclusiones sobre los Estados de Conciencia	2	[{"changed": {"fields": ["status"]}}]	9	1
869	2018-05-22 19:12:36.298713+00	163	Conflicto de Fracaso 1	2	[{"changed": {"fields": ["status"]}}]	9	1
870	2018-05-22 19:12:36.302201+00	164	Conflicto de Fracaso 2	2	[{"changed": {"fields": ["status"]}}]	9	1
871	2018-05-22 19:12:36.305685+00	165	Conflicto de Fracaso 3	2	[{"changed": {"fields": ["status"]}}]	9	1
872	2018-05-22 19:12:36.309131+00	166	Conflicto de Fracaso 4	2	[{"changed": {"fields": ["status"]}}]	9	1
873	2018-05-22 19:12:36.312644+00	167	Diferentes Tipos de Ego 1	2	[{"changed": {"fields": ["status"]}}]	9	1
936	2018-05-23 18:03:00.749442+00	23	andres.lema	1	[{"added": {}}]	4	18
874	2018-05-22 19:12:36.316044+00	168	Diferentes Tipos de Ego 2	2	[{"changed": {"fields": ["status"]}}]	9	1
875	2018-05-22 19:12:36.324754+00	169	Ejemplo de Análisis de las Repeticiones en el Árbol 1	2	[{"changed": {"fields": ["status"]}}]	9	1
876	2018-05-22 19:12:36.32821+00	170	Ejemplo de Análisis de las Repeticiones en el Árbol 2	2	[{"changed": {"fields": ["status"]}}]	9	1
877	2018-05-22 19:12:36.331662+00	171	Ejemplo de Análisis de las Repeticiones en el Árbol 3	2	[{"changed": {"fields": ["status"]}}]	9	1
878	2018-05-22 19:12:36.335927+00	172	Ejemplo de Análisis de las Repeticiones en el Árbol 4	2	[{"changed": {"fields": ["status"]}}]	9	1
879	2018-05-22 19:12:36.339227+00	173	El Abuso en los Cuatro Centros	2	[{"changed": {"fields": ["status"]}}]	9	1
880	2018-05-22 19:12:36.342966+00	174	El Destino que el Yo Genealógico ha establecido en ti.	2	[{"changed": {"fields": ["status"]}}]	9	1
881	2018-05-22 19:12:36.346321+00	175	El Impacto de tu nombre 1	2	[{"changed": {"fields": ["status"]}}]	9	1
882	2018-05-22 19:12:36.3498+00	176	El Impacto de tu nombre 2	2	[{"changed": {"fields": ["status"]}}]	9	1
883	2018-05-22 19:12:36.353122+00	177	El Impacto de tu nombre 3	2	[{"changed": {"fields": ["status"]}}]	9	1
884	2018-05-22 19:12:36.356595+00	178	El Mito en el Árbol	2	[{"changed": {"fields": ["status"]}}]	9	1
885	2018-05-22 19:12:36.359855+00	179	El Proceso de Transformación	2	[{"changed": {"fields": ["status"]}}]	9	1
886	2018-05-22 19:12:36.363243+00	180	Encuentro, Concepción, Gestación y Nacimiento 1	2	[{"changed": {"fields": ["status"]}}]	9	1
887	2018-05-22 19:12:36.366554+00	181	Encuentro, Concepción, Gestación y Nacimiento 2	2	[{"changed": {"fields": ["status"]}}]	9	1
888	2018-05-22 19:12:36.369922+00	182	Encuentro, Concepción, Gestación y Nacimiento 3	2	[{"changed": {"fields": ["status"]}}]	9	1
889	2018-05-22 19:12:36.373101+00	183	Estructura de la Metagenealogia 1	2	[{"changed": {"fields": ["status"]}}]	9	1
890	2018-05-22 19:12:36.376354+00	184	Estructura de la Metagenealogia 2	2	[{"changed": {"fields": ["status"]}}]	9	1
891	2018-05-22 19:12:36.379685+00	185	Estructura de la Metagenealogia 3	2	[{"changed": {"fields": ["status"]}}]	9	1
892	2018-05-22 19:12:36.383029+00	186	Formas de Repetición en el Árbol 1	2	[{"changed": {"fields": ["status"]}}]	9	1
893	2018-05-22 19:12:36.386344+00	187	Formas de Repetición en el Árbol 2	2	[{"changed": {"fields": ["status"]}}]	9	1
894	2018-05-22 19:12:36.389769+00	188	Identificando Mitos y Arquetipo en tu Árbol Genealógico	2	[{"changed": {"fields": ["status"]}}]	9	1
895	2018-05-22 19:12:36.393092+00	189	Introducción a los Núcleos y Nudos	2	[{"changed": {"fields": ["status"]}}]	9	1
896	2018-05-22 19:12:36.396465+00	190	Nivel de Conciencia Adolescente Romántico	2	[{"changed": {"fields": ["status"]}}]	9	1
897	2018-05-22 19:12:36.399768+00	191	Nivel de Conciencia Adulto Altruista	2	[{"changed": {"fields": ["status"]}}]	9	1
898	2018-05-22 19:12:36.403036+00	192	Nivel de Conciencia Adulto Aprovechador	2	[{"changed": {"fields": ["status"]}}]	9	1
899	2018-05-22 19:12:36.406326+00	193	Nivel de Conciencia Animal	2	[{"changed": {"fields": ["status"]}}]	9	1
900	2018-05-22 19:12:36.409892+00	194	Nivel de Conciencia Cósmico	2	[{"changed": {"fields": ["status"]}}]	9	1
901	2018-05-22 19:12:36.413856+00	195	Nivel de Conciencia Divino	2	[{"changed": {"fields": ["status"]}}]	9	1
902	2018-05-22 19:12:36.417457+00	196	Nivel de Conciencia Niño Consumidor	2	[{"changed": {"fields": ["status"]}}]	9	1
903	2018-05-22 19:12:36.420872+00	197	Nivel de Conciencia Planetario	2	[{"changed": {"fields": ["status"]}}]	9	1
904	2018-05-22 19:12:36.424165+00	198	Nivel de Conciencia Solar	2	[{"changed": {"fields": ["status"]}}]	9	1
905	2018-05-22 19:12:36.427474+00	199	Niveles de Conciencia	2	[{"changed": {"fields": ["status"]}}]	9	1
906	2018-05-22 19:12:36.43085+00	200	Núcleo y Nudo Bisexual	2	[{"changed": {"fields": ["status"]}}]	9	1
907	2018-05-22 19:12:36.434167+00	201	Núcleo y Nudo Incestuoso	2	[{"changed": {"fields": ["status"]}}]	9	1
908	2018-05-22 19:12:36.437498+00	202	Núcleo y Nudo Narcisista 1	2	[{"changed": {"fields": ["status"]}}]	9	1
909	2018-05-22 19:12:36.440897+00	203	Núcleo y Nudo Narcisista 2	2	[{"changed": {"fields": ["status"]}}]	9	1
910	2018-05-22 19:12:36.444109+00	204	Núcleo y Nudo Social	2	[{"changed": {"fields": ["status"]}}]	9	1
911	2018-05-22 19:12:36.447415+00	205	Tipos de Árbol - Árbol Mamífero	2	[{"changed": {"fields": ["status"]}}]	9	1
912	2018-05-22 19:12:36.450802+00	206	Tipos de Árbol - Emocional	2	[{"changed": {"fields": ["status"]}}]	9	1
913	2018-05-22 19:12:36.454165+00	256	Bases y Fundamentos de la Psicomagia 1	2	[{"changed": {"fields": ["status"]}}]	9	1
914	2018-05-22 19:12:36.457691+00	257	Bases y Fundamentos de la Psicomagia 2	2	[{"changed": {"fields": ["status"]}}]	9	1
915	2018-05-22 19:12:36.461194+00	258	Bases y Fundamentos de la Psicomagia 3	2	[{"changed": {"fields": ["status"]}}]	9	1
916	2018-05-22 19:12:36.464672+00	259	Bases y Fundamentos de la Psicomagia 4	2	[{"changed": {"fields": ["status"]}}]	9	1
917	2018-05-22 19:12:36.46811+00	260	Bases y Fundamentos de la Psicomagia 5	2	[{"changed": {"fields": ["status"]}}]	9	1
918	2018-05-22 19:12:36.471433+00	261	Bases y Fundamentos de la Psicomagia 6	2	[{"changed": {"fields": ["status"]}}]	9	1
919	2018-05-22 19:12:36.474777+00	262	Introducción a la Psicomagia 3	2	[{"changed": {"fields": ["status"]}}]	9	1
920	2018-05-22 19:12:36.478113+00	263	Introducción a la Psicomagia 4	2	[{"changed": {"fields": ["status"]}}]	9	1
921	2018-05-22 19:12:36.481403+00	264	Introducción a la Psicomagia 5	2	[{"changed": {"fields": ["status"]}}]	9	1
922	2018-05-22 19:12:36.484825+00	265	Percepción y Realidad	2	[{"changed": {"fields": ["status"]}}]	9	1
923	2018-05-22 19:12:36.490626+00	273	¿Que es la Psicomagia? 1	2	[{"changed": {"fields": ["status"]}}]	9	1
924	2018-05-22 19:12:36.494179+00	274	¿Que es la Psicomagia? 2	2	[{"changed": {"fields": ["status"]}}]	9	1
925	2018-05-22 19:12:36.498026+00	275	¿Que es la Psicomagia? 3	2	[{"changed": {"fields": ["status"]}}]	9	1
926	2018-05-22 19:12:36.501442+00	266	Símbolos	2	[{"changed": {"fields": ["status"]}}]	9	1
927	2018-05-22 19:12:36.504855+00	269	Símbolos, Números y Colores 1	2	[{"changed": {"fields": ["status"]}}]	9	1
928	2018-05-22 19:12:36.508353+00	270	Símbolos, Números y Colores 2	2	[{"changed": {"fields": ["status"]}}]	9	1
929	2018-05-22 19:12:36.511716+00	271	Símbolos, Números y Colores 3A	2	[{"changed": {"fields": ["status"]}}]	9	1
930	2018-05-22 19:12:36.515201+00	272	Símbolos, Números y Colores 3B	2	[{"changed": {"fields": ["status"]}}]	9	1
931	2018-05-22 19:12:36.518852+00	267	Sincronicidad 1	2	[{"changed": {"fields": ["status"]}}]	9	1
932	2018-05-22 19:12:36.522329+00	268	Sincronicidad 2	2	[{"changed": {"fields": ["status"]}}]	9	1
933	2018-05-23 18:00:12.906546+00	21	alejandra.azurica	1	[{"added": {}}]	4	18
934	2018-05-23 18:00:34.925112+00	21	alejandra.azurica	2	[]	4	18
935	2018-05-23 18:02:24.373009+00	22	anabella.platero	1	[{"added": {}}]	4	18
937	2018-05-23 18:04:57.183983+00	24	loreley.martinez	1	[{"added": {}}]	4	18
938	2018-05-23 18:06:03.859926+00	25	christian.bartoli	1	[{"added": {}}]	4	18
939	2018-05-23 18:08:02.05795+00	25	christian.bartoli	2	[{"changed": {"fields": ["password"]}}]	4	18
940	2018-05-23 18:09:53.609442+00	26	danae.sosa	1	[{"added": {}}]	4	18
941	2018-05-23 18:14:38.84531+00	27	jorgelina.ruso	1	[{"added": {}}]	4	18
942	2018-05-23 18:16:50.267982+00	28	juanita.ghiterman	1	[{"added": {}}]	4	18
943	2018-05-23 18:22:43.346067+00	29	gabriela.lopez	1	[{"added": {}}]	4	18
944	2018-05-23 18:23:54.946031+00	30	katia.ciprino	1	[{"added": {}}]	4	18
945	2018-05-23 18:24:54.670556+00	31	laura.dutra	1	[{"added": {}}]	4	18
946	2018-05-23 18:30:09.041912+00	32	marcos.cretan	1	[{"added": {}}]	4	18
947	2018-05-23 18:31:21.533696+00	33	maria.martinez	1	[{"added": {}}]	4	18
948	2018-05-23 18:32:46.907648+00	34	maria.natalia.martinez	1	[{"added": {}}]	4	18
949	2018-05-23 18:33:59.681888+00	35	natalia.acevedo	1	[{"added": {}}]	4	18
950	2018-05-24 04:49:31.97885+00	18	Subscriber object	1	[{"added": {}}]	15	1
951	2018-05-24 04:49:49.454008+00	19	Subscriber object	1	[{"added": {}}]	15	1
952	2018-05-24 04:49:59.29892+00	20	Subscriber object	1	[{"added": {}}]	15	1
953	2018-05-24 04:51:45.95704+00	21	Subscriber object	1	[{"added": {}}]	15	1
954	2018-05-24 04:51:54.015131+00	22	Subscriber object	1	[{"added": {}}]	15	1
955	2018-05-24 04:52:03.41404+00	23	Subscriber object	1	[{"added": {}}]	15	1
956	2018-05-24 04:53:24.832878+00	24	Subscriber object	1	[{"added": {}}]	15	1
957	2018-05-24 04:53:34.767631+00	25	Subscriber object	1	[{"added": {}}]	15	1
958	2018-05-24 04:53:54.524562+00	26	Subscriber object	1	[{"added": {}}]	15	1
959	2018-05-24 04:54:04.661849+00	27	Subscriber object	1	[{"added": {}}]	15	1
960	2018-05-24 04:54:11.386615+00	28	Subscriber object	1	[{"added": {}}]	15	1
961	2018-05-24 04:54:23.177727+00	29	Subscriber object	1	[{"added": {}}]	15	1
962	2018-05-24 04:54:32.751844+00	30	Subscriber object	1	[{"added": {}}]	15	1
963	2018-05-24 04:59:52.291774+00	36	Maria.Esther.Martinez	1	[{"added": {}}]	4	1
964	2018-05-24 05:32:01.961378+00	36	Maria.Esther.Martinez	3		4	1
965	2018-05-24 05:32:33.750908+00	37	noemia.naranja	1	[{"added": {}}]	4	1
966	2018-05-24 05:32:44.959959+00	38	rocio.muñoz	1	[{"added": {}}]	4	1
967	2018-05-24 05:33:50.704934+00	39	rosana.ciccarino	1	[{"added": {}}]	4	1
968	2018-05-24 05:34:02.95587+00	40	sabrina.bado	1	[{"added": {}}]	4	1
969	2018-05-24 05:34:15.391657+00	41	katia.lima	1	[{"added": {}}]	4	1
970	2018-05-24 06:14:16.622237+00	42	segio.ganim	1	[{"added": {}}]	4	1
971	2018-05-24 06:14:39.708881+00	43	silvia.diorno	1	[{"added": {}}]	4	1
972	2018-05-24 06:14:49.535526+00	44	tess.mirabal	1	[{"added": {}}]	4	1
973	2018-05-24 06:15:05.293354+00	45	victor.morales	1	[{"added": {}}]	4	1
974	2018-05-24 06:15:28.530501+00	46	yordana.gonzales	1	[{"added": {}}]	4	1
975	2018-05-24 06:15:59.241397+00	47	teresita.lahis	1	[{"added": {}}]	4	1
976	2018-05-24 06:16:09.897274+00	48	cecilia.hermida	1	[{"added": {}}]	4	1
977	2018-05-24 06:16:27.650273+00	49	andrea.castagnola	1	[{"added": {}}]	4	1
978	2018-05-24 06:16:38.656216+00	50	elizabeth.bak	1	[{"added": {}}]	4	1
979	2018-05-24 06:44:25.652015+00	31	Subscriber object	1	[{"added": {}}]	15	1
980	2018-05-24 06:44:34.934928+00	32	Subscriber object	1	[{"added": {}}]	15	1
981	2018-05-24 06:44:42.352601+00	33	Subscriber object	1	[{"added": {}}]	15	1
982	2018-05-24 06:44:55.667097+00	34	Subscriber object	1	[{"added": {}}]	15	1
983	2018-05-24 06:45:09.781864+00	35	Subscriber object	1	[{"added": {}}]	15	1
984	2018-05-24 06:45:18.159114+00	36	Subscriber object	1	[{"added": {}}]	15	1
985	2018-05-24 06:45:26.439222+00	37	Subscriber object	1	[{"added": {}}]	15	1
986	2018-05-24 06:45:34.44208+00	38	Subscriber object	1	[{"added": {}}]	15	1
987	2018-05-24 06:45:41.536056+00	39	Subscriber object	1	[{"added": {}}]	15	1
988	2018-05-24 06:45:53.062945+00	40	Subscriber object	1	[{"added": {}}]	15	1
989	2018-05-24 06:46:08.062433+00	41	Subscriber object	1	[{"added": {}}]	15	1
990	2018-05-24 06:46:14.930369+00	42	Subscriber object	1	[{"added": {}}]	15	1
991	2018-05-24 06:46:21.559471+00	43	Subscriber object	1	[{"added": {}}]	15	1
992	2018-05-24 06:46:26.934244+00	44	Subscriber object	1	[{"added": {}}]	15	1
993	2018-05-24 06:46:32.748958+00	45	Subscriber object	1	[{"added": {}}]	15	1
994	2018-05-24 06:46:38.234267+00	46	Subscriber object	1	[{"added": {}}]	15	1
995	2018-05-24 06:46:45.53274+00	47	Subscriber object	1	[{"added": {}}]	15	1
996	2018-05-24 09:34:22.183905+00	15	Subscriber object	2	[{"changed": {"fields": ["grade"]}}]	15	1
997	2018-05-24 09:35:37.865793+00	13	Subscriber object	2	[{"changed": {"fields": ["grade"]}}]	15	1
998	2018-05-24 10:56:14.135282+00	286	Mi historia personal 1	2	[{"changed": {"fields": ["category"]}}]	9	1
999	2018-05-24 10:56:19.848026+00	287	Mi historia personal 2	2	[{"changed": {"fields": ["category"]}}]	9	1
1000	2018-05-24 10:56:25.279293+00	276	Analizando los elementos simbólicos	2	[{"changed": {"fields": ["category"]}}]	9	1
1001	2018-05-24 10:58:03.781522+00	277	La barca en que Navegaremos	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1002	2018-05-24 10:58:03.78542+00	278	Tarot como guìa	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1003	2018-05-24 10:58:03.789039+00	279	La condicion divina1	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1004	2018-05-24 10:58:03.792504+00	280	Condicion divina 2	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1005	2018-05-24 10:58:03.795853+00	281	Configuración del yo testigo	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1006	2018-05-24 10:58:03.799435+00	282	La dimensión Transpersonal	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1007	2018-05-24 10:58:03.80288+00	283	Las resistencias del Cerebro Reptil	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1008	2018-05-24 10:58:03.806384+00	284	Metamundo la Escuela	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1009	2018-05-24 10:58:03.809761+00	285	Metamundo y la expresion de la conciencia	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1010	2018-05-24 10:58:03.813153+00	288	Viviendonos como conciencia	2	[{"changed": {"fields": ["order_number"]}}]	9	1
1011	2018-05-24 10:58:39.399214+00	280	La condición divina 2	2	[{"changed": {"fields": ["name"]}}]	9	1
1012	2018-05-24 10:58:39.403441+00	279	La condición divina 1	2	[{"changed": {"fields": ["name"]}}]	9	1
1013	2018-05-24 11:01:11.634347+00	291	Etica y actitud del Tarologo 3	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1014	2018-05-24 11:01:11.639239+00	289	Ética y actitud del Tarologo 4	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1015	2018-05-24 11:01:11.64281+00	292	Ética y actitud del Tarologo 5	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1016	2018-05-24 11:01:11.646392+00	293	Ética y actitud del Tarologo 1	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1017	2018-05-24 11:01:11.650783+00	290	Etica y actitud del Tarologo 2	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1018	2018-05-24 11:01:11.654445+00	276	Analizando los elementos simbólicos	2	[{"changed": {"fields": ["order_number"]}}]	9	1
1019	2018-05-24 11:01:11.658096+00	295	Ética y actitud del Tarologo 6	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1020	2018-05-24 11:01:11.661732+00	294	Ética y Actitud del tarólogo 7	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1021	2018-05-24 11:01:11.665082+00	296	Integración Psiquica del Tarot	2	[{"changed": {"fields": ["order_number"]}}]	9	1
1022	2018-05-24 11:01:11.668468+00	297	Mi historia con el Tarot 3	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1023	2018-05-24 11:01:11.672119+00	286	Mi historia con el Tarot 1	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1024	2018-05-24 11:01:11.675482+00	287	Mi historia con el Tarot 2	2	[{"changed": {"fields": ["name", "order_number"]}}]	9	1
1025	2018-05-24 11:02:56.939871+00	276	Analizando los elementos simbólicos	2	[{"changed": {"fields": ["image"]}}]	9	1
1026	2018-05-24 11:02:56.9447+00	294	Ética y Actitud del tarólogo 7	2	[{"changed": {"fields": ["image"]}}]	9	1
1027	2018-05-24 11:02:56.948223+00	295	Ética y actitud del Tarologo 6	2	[{"changed": {"fields": ["image"]}}]	9	1
1028	2018-05-24 11:02:56.951872+00	292	Ética y actitud del Tarologo 5	2	[{"changed": {"fields": ["image"]}}]	9	1
1029	2018-05-24 11:02:56.955295+00	289	Ética y actitud del Tarologo 4	2	[{"changed": {"fields": ["image"]}}]	9	1
1030	2018-05-24 11:02:56.958867+00	291	Etica y actitud del Tarologo 3	2	[{"changed": {"fields": ["image"]}}]	9	1
1031	2018-05-24 11:02:56.962328+00	290	Etica y actitud del Tarologo 2	2	[{"changed": {"fields": ["image"]}}]	9	1
1032	2018-05-24 11:02:56.965904+00	293	Ética y actitud del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
1033	2018-05-24 11:02:56.969326+00	296	Integración Psiquica del Tarot	2	[{"changed": {"fields": ["image"]}}]	9	1
1034	2018-05-24 11:02:56.972553+00	297	Mi historia con el Tarot 3	2	[{"changed": {"fields": ["image"]}}]	9	1
1035	2018-05-24 11:02:56.975932+00	287	Mi historia con el Tarot 2	2	[{"changed": {"fields": ["image"]}}]	9	1
1036	2018-05-24 11:02:56.979222+00	286	Mi historia con el Tarot 1	2	[{"changed": {"fields": ["image"]}}]	9	1
1037	2018-05-24 11:05:11.967681+00	276	Analizando los elementos simbólicos	2	[{"changed": {"fields": ["image"]}}]	9	1
1038	2018-05-24 11:05:11.971622+00	294	Ética y Actitud del tarólogo 7	2	[{"changed": {"fields": ["image"]}}]	9	1
1039	2018-05-24 11:05:11.974986+00	295	Ética y actitud del Tarologo 6	2	[{"changed": {"fields": ["image"]}}]	9	1
1040	2018-05-24 11:05:11.978336+00	292	Ética y actitud del Tarologo 5	2	[{"changed": {"fields": ["image"]}}]	9	1
1041	2018-05-24 11:05:11.981794+00	289	Ética y actitud del Tarologo 4	2	[{"changed": {"fields": ["image"]}}]	9	1
1042	2018-05-24 11:05:11.985191+00	291	Etica y actitud del Tarologo 3	2	[{"changed": {"fields": ["image"]}}]	9	1
1043	2018-05-24 11:05:11.988663+00	290	Etica y actitud del Tarologo 2	2	[{"changed": {"fields": ["image"]}}]	9	1
1044	2018-05-24 11:05:11.992214+00	293	Ética y actitud del Tarologo 1	2	[{"changed": {"fields": ["image"]}}]	9	1
1045	2018-05-24 11:05:11.995625+00	296	Integración Psiquica del Tarot	2	[{"changed": {"fields": ["image"]}}]	9	1
1046	2018-05-24 11:05:11.998996+00	297	Mi historia con el Tarot 3	2	[{"changed": {"fields": ["image"]}}]	9	1
1047	2018-05-24 11:05:12.002503+00	287	Mi historia con el Tarot 2	2	[{"changed": {"fields": ["image"]}}]	9	1
1048	2018-05-24 11:05:12.005872+00	286	Mi historia con el Tarot 1	2	[{"changed": {"fields": ["image"]}}]	9	1
1049	2018-05-24 11:05:57.236911+00	285	Metamundo y la expresion de la conciencia	2	[{"changed": {"fields": ["image"]}}]	9	1
1050	2018-05-24 11:05:57.241369+00	288	Viviendonos como conciencia	2	[{"changed": {"fields": ["image"]}}]	9	1
1051	2018-05-24 11:05:57.244711+00	283	Las resistencias del Cerebro Reptil	2	[{"changed": {"fields": ["image"]}}]	9	1
1052	2018-05-24 11:05:57.248287+00	282	La dimensión Transpersonal	2	[{"changed": {"fields": ["image"]}}]	9	1
1053	2018-05-24 11:05:57.251955+00	281	Configuración del yo testigo	2	[{"changed": {"fields": ["image"]}}]	9	1
1054	2018-05-24 11:05:57.255339+00	280	La condición divina 2	2	[{"changed": {"fields": ["image"]}}]	9	1
1055	2018-05-24 11:05:57.258838+00	279	La condición divina 1	2	[{"changed": {"fields": ["image"]}}]	9	1
1056	2018-05-24 11:05:57.262301+00	278	Tarot como guìa	2	[{"changed": {"fields": ["image"]}}]	9	1
1057	2018-05-24 11:05:57.265905+00	277	La barca en que Navegaremos	2	[{"changed": {"fields": ["image"]}}]	9	1
1058	2018-05-24 11:05:57.269384+00	284	Metamundo la Escuela	2	[{"changed": {"fields": ["image"]}}]	9	1
1059	2018-05-27 04:31:15.562888+00	281	Configuración del yo testigo	2	[{"changed": {"fields": ["link"]}}]	9	1
1060	2018-05-27 04:31:42.995528+00	277	La barca en que Navegaremos	2	[{"changed": {"fields": ["link"]}}]	9	1
1061	2018-05-27 04:32:24.77941+00	279	La condición divina 1	2	[{"changed": {"fields": ["link"]}}]	9	1
1062	2018-05-27 04:32:42.517533+00	280	La condición divina 2	2	[{"changed": {"fields": ["link"]}}]	9	1
1063	2018-05-27 04:33:05.320137+00	282	La dimensión Transpersonal	2	[{"changed": {"fields": ["link"]}}]	9	1
1064	2018-05-27 04:33:25.062153+00	283	Las resistencias del Cerebro Reptil	2	[{"changed": {"fields": ["link"]}}]	9	1
1065	2018-05-27 04:33:45.181134+00	284	Metamundo la Escuela	2	[{"changed": {"fields": ["link"]}}]	9	1
1066	2018-05-27 04:34:08.741767+00	285	Metamundo y la expresion de la conciencia	2	[{"changed": {"fields": ["link"]}}]	9	1
1067	2018-05-27 04:34:28.183253+00	278	Tarot como guìa	2	[{"changed": {"fields": ["link"]}}]	9	1
1068	2018-05-27 04:34:52.7126+00	288	Viviendonos como conciencia	2	[{"changed": {"fields": ["link"]}}]	9	1
1069	2018-05-27 04:35:57.428057+00	276	Analizando los elementos simbólicos	2	[{"changed": {"fields": ["link"]}}]	9	1
1070	2018-05-27 04:36:31.792149+00	293	Ética y actitud del Tarologo 1	2	[{"changed": {"fields": ["link"]}}]	9	1
1071	2018-05-27 04:36:56.751116+00	290	Etica y actitud del Tarologo 2	2	[{"changed": {"fields": ["link"]}}]	9	1
1072	2018-05-27 04:37:14.267268+00	291	Etica y actitud del Tarologo 3	2	[{"changed": {"fields": ["link"]}}]	9	1
1073	2018-05-27 04:37:37.270136+00	289	Ética y actitud del Tarologo 4	2	[{"changed": {"fields": ["link"]}}]	9	1
1074	2018-05-27 04:37:54.366978+00	292	Ética y actitud del Tarologo 5	2	[{"changed": {"fields": ["link"]}}]	9	1
1075	2018-05-27 04:38:12.113977+00	295	Ética y actitud del Tarologo 6	2	[{"changed": {"fields": ["link"]}}]	9	1
1076	2018-05-27 04:38:33.41768+00	294	Ética y Actitud del tarólogo 7	2	[{"changed": {"fields": ["link"]}}]	9	1
1077	2018-05-27 04:38:52.823457+00	296	Integración Psiquica del Tarot	2	[{"changed": {"fields": ["link"]}}]	9	1
1078	2018-05-27 04:39:14.614536+00	286	Mi historia con el Tarot 1	2	[{"changed": {"fields": ["link"]}}]	9	1
1079	2018-05-27 04:39:27.222631+00	287	Mi historia con el Tarot 2	2	[{"changed": {"fields": ["link"]}}]	9	1
1080	2018-05-27 04:39:45.90263+00	297	Mi historia con el Tarot 3	2	[{"changed": {"fields": ["link"]}}]	9	1
1081	2018-05-28 19:44:26.064957+00	51	lorena.zunino	1	[{"added": {}}]	4	1
1082	2018-05-28 19:45:01.839874+00	52	margot.peña	1	[{"added": {}}]	4	1
1083	2018-05-28 19:45:12.523907+00	53	silvia.bidegain	1	[{"added": {}}]	4	1
1084	2018-05-28 19:45:36.457572+00	48	Subscriber object	1	[{"added": {}}]	15	1
1085	2018-05-28 19:45:44.22853+00	49	Subscriber object	1	[{"added": {}}]	15	1
1086	2018-05-28 19:45:55.56423+00	50	Subscriber object	1	[{"added": {}}]	15	1
1087	2018-05-29 17:40:54.255153+00	21	alejandra.azurica	3		4	18
1088	2018-05-29 17:40:54.271124+00	20	rita_pirotto	3		4	18
1089	2018-05-29 17:42:25.326319+00	54	rita.pirotto	1	[{"added": {}}]	4	18
1090	2018-05-29 17:43:31.208151+00	55	alejandra.zurica	1	[{"added": {}}]	4	18
1091	2018-05-29 17:44:38.699151+00	51	Subscriber object	1	[{"added": {}}]	15	18
1092	2018-05-29 17:45:54.440237+00	52	Subscriber object	1	[{"added": {}}]	15	18
1093	2018-05-29 22:35:14.322359+00	56	andrea.martinez	1	[{"added": {}}]	4	18
1094	2018-05-29 22:51:56.66554+00	57	nora.rodriguez	1	[{"added": {}}]	4	18
1095	2018-05-29 22:52:56.022249+00	58	ruben.fistemberg	1	[{"added": {}}]	4	18
1096	2018-05-29 22:54:40.103237+00	59	virginia.moreira	1	[{"added": {}}]	4	18
1097	2018-05-29 23:08:29.483602+00	53	Subscriber object	1	[{"added": {}}]	15	18
1098	2018-05-29 23:08:47.420793+00	54	Subscriber object	1	[{"added": {}}]	15	18
1099	2018-05-29 23:08:59.967893+00	55	Subscriber object	1	[{"added": {}}]	15	18
1100	2018-05-29 23:09:35.105702+00	56	Subscriber object	1	[{"added": {}}]	15	18
1101	2018-05-31 20:07:01.844157+00	60	valeria.macagno	1	[{"added": {}}]	4	18
1102	2018-05-31 20:10:47.693618+00	60	valeria.macagno	2	[]	4	18
1103	2018-05-31 20:11:12.453355+00	61	raquel.meyer	1	[{"added": {}}]	4	18
1104	2018-05-31 20:13:39.676906+00	24	loreley.martinez	3		4	18
1105	2018-05-31 20:14:00.815001+00	62	loreley.martinez	1	[{"added": {}}]	4	18
1106	2018-05-31 20:14:34.090222+00	57	Subscriber object	1	[{"added": {}}]	15	18
1107	2018-05-31 20:14:54.027399+00	58	Subscriber object	1	[{"added": {}}]	15	18
1108	2018-05-31 20:15:05.848924+00	59	Subscriber object	1	[{"added": {}}]	15	18
1109	2018-06-01 08:24:25.441287+00	44	Referencia Rápida- Arcano XV - Le Diable - El Diablo	2	[{"changed": {"fields": ["name"]}}]	7	1
1110	2018-06-01 08:25:15.434223+00	40	Referencia Rápida- Arcano X – La Roue de Fortune – La Rueda de la Fortuna	2	[{"changed": {"fields": ["name"]}}]	7	1
1111	2018-06-01 15:54:02.337205+00	60	Subscriber object	1	[{"added": {}}]	15	18
1112	2018-06-01 20:54:06.008178+00	30	Los Colores en el Tarot	2	[{"changed": {"fields": ["link"]}}]	7	1
1113	2018-06-03 16:55:55.818447+00	11	Diegomexico	2	[]	4	18
1114	2018-06-03 16:57:53.9476+00	64	jessica.bauer	1	[{"added": {}}]	4	18
1115	2018-06-03 16:59:26.834327+00	65	adriana.burgueño	1	[{"added": {}}]	4	18
1116	2018-06-03 17:00:13.76965+00	61	Subscriber object	1	[{"added": {}}]	15	18
1117	2018-06-03 17:01:22.400909+00	62	Subscriber object	1	[{"added": {}}]	15	18
1118	2018-06-04 04:25:17.960276+00	11	Diegomexico	3		4	18
1119	2018-06-04 04:28:19.482463+00	66	DIegomexico	1	[{"added": {}}]	4	18
1120	2018-06-04 04:29:11.696731+00	63	Subscriber object	1	[{"added": {}}]	15	18
1121	2018-06-04 04:30:38.890772+00	63	Subscriber object	3		15	18
1122	2018-06-04 04:39:18.917121+00	64	Subscriber object	1	[{"added": {}}]	15	18
1123	2018-06-04 04:52:06.201104+00	28	juanita.ghiterman	3		4	18
1124	2018-06-04 04:54:15.118126+00	67	juanita.ghiterman	1	[{"added": {}}]	4	18
1125	2018-06-04 04:55:02.503828+00	65	Subscriber object	1	[{"added": {}}]	15	18
1126	2018-06-06 09:36:06.985605+00	69	viviana.chumino	1	[{"added": {}}]	4	18
1127	2018-06-06 09:36:43.896392+00	70	alejandra.heuer	1	[{"added": {}}]	4	18
1128	2018-06-06 09:37:32.651406+00	71	laura.lapitz	1	[{"added": {}}]	4	18
1129	2018-06-06 09:42:51.35411+00	72	ines.cabral	1	[{"added": {}}]	4	18
1130	2018-06-06 09:47:01.763683+00	66	Subscriber object	1	[{"added": {}}]	15	18
1131	2018-06-06 09:47:16.226117+00	67	Subscriber object	1	[{"added": {}}]	15	18
1132	2018-06-06 09:47:56.20204+00	68	Subscriber object	1	[{"added": {}}]	15	18
1133	2018-06-06 09:48:05.218106+00	69	Subscriber object	1	[{"added": {}}]	15	18
1134	2018-06-06 09:49:44.364012+00	73	laura.otero	1	[{"added": {}}]	4	18
1135	2018-06-06 09:50:25.037861+00	70	Subscriber object	1	[{"added": {}}]	15	18
1136	2018-06-07 01:16:07.288429+00	66	DIegomexico	3		4	18
1137	2018-06-07 01:16:23.666561+00	74	Diegomexico	1	[{"added": {}}]	4	18
1138	2018-06-07 01:16:59.222806+00	71	Subscriber object	1	[{"added": {}}]	15	18
1139	2018-06-07 01:17:12.770274+00	71	Subscriber object	2	[{"changed": {"fields": ["grade"]}}]	15	18
1140	2018-06-12 15:48:24.607003+00	49	andrea.castagnola	3		4	18
1141	2018-06-12 15:49:35.61653+00	75	andrea.castagnola	1	[{"added": {}}]	4	18
1142	2018-06-12 15:49:55.502994+00	72	Subscriber object	1	[{"added": {}}]	15	18
1143	2018-06-13 05:18:52.183546+00	76	cecilia.arbeleche	1	[{"added": {}}]	4	18
1144	2018-06-13 05:19:21.514372+00	77	fabiana.camino	1	[{"added": {}}]	4	18
1145	2018-06-13 05:19:53.557857+00	78	johann.hagobian	1	[{"added": {}}]	4	18
1146	2018-06-13 05:21:08.763134+00	79	jorge.bermudez	1	[{"added": {}}]	4	18
1147	2018-06-13 05:21:26.376895+00	80	laura.rinaldi	1	[{"added": {}}]	4	18
1148	2018-06-13 05:21:44.775906+00	81	leonardo.luzardo	1	[{"added": {}}]	4	18
1149	2018-06-13 05:22:03.284879+00	82	ruth.odini	1	[{"added": {}}]	4	18
1150	2018-06-13 05:22:20.231032+00	83	ivan.sanchez	1	[{"added": {}}]	4	18
1151	2018-06-13 05:22:42.247254+00	73	Subscriber object	1	[{"added": {}}]	15	18
1152	2018-06-13 05:22:54.449951+00	74	Subscriber object	1	[{"added": {}}]	15	18
1153	2018-06-13 05:23:14.727344+00	75	Subscriber object	1	[{"added": {}}]	15	18
1154	2018-06-13 05:23:37.577563+00	76	Subscriber object	1	[{"added": {}}]	15	18
1155	2018-06-13 05:24:02.060564+00	77	Subscriber object	1	[{"added": {}}]	15	18
1156	2018-06-13 05:24:20.207202+00	78	Subscriber object	1	[{"added": {}}]	15	18
1157	2018-06-13 05:24:36.002297+00	79	Subscriber object	1	[{"added": {}}]	15	18
1158	2018-06-13 05:26:08.983742+00	84	ivan.sanchez2	1	[{"added": {}}]	4	18
1159	2018-06-13 05:26:12.70307+00	80	Subscriber object	1	[{"added": {}}]	15	18
1160	2018-06-13 20:12:21.804488+00	298	Introducción a la lectura de tarot 1	1	[{"added": {}}]	9	1
1161	2018-06-13 20:13:46.773457+00	299	Introducción a la lectura de tarot 2 y 3	1	[{"added": {}}]	9	1
1162	2018-06-13 20:14:27.248438+00	300	Preparación a la Lectura del Tarot 1	1	[{"added": {}}]	9	1
1163	2018-06-13 20:15:07.632617+00	301	Preparación a la Lectura del Tarot 2	1	[{"added": {}}]	9	1
1164	2018-06-13 20:15:31.986135+00	302	Preparación a la Lectura del Tarot 3	1	[{"added": {}}]	9	1
1165	2018-06-13 20:17:07.431908+00	298	Introducción a la lectura de tarot 1	2	[{"changed": {"fields": ["image"]}}]	9	1
1166	2018-06-13 20:17:07.435673+00	299	Introducción a la lectura de tarot 2 y 3	2	[{"changed": {"fields": ["image"]}}]	9	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1166, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
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
11	tarot	question
12	tarot	response
13	tarot	card
14	tarot	week
15	catalog	subscriber
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-08-30 08:20:56.302353+00
2	auth	0001_initial	2017-08-30 08:20:56.529854+00
3	admin	0001_initial	2017-08-30 08:20:56.587353+00
4	admin	0002_logentry_remove_auto_add	2017-08-30 08:20:56.601354+00
5	contenttypes	0002_remove_content_type_name	2017-08-30 08:20:56.643359+00
6	auth	0002_alter_permission_name_max_length	2017-08-30 08:20:56.651854+00
7	auth	0003_alter_user_email_max_length	2017-08-30 08:20:56.666853+00
8	auth	0004_alter_user_username_opts	2017-08-30 08:20:56.679853+00
9	auth	0005_alter_user_last_login_null	2017-08-30 08:20:56.693354+00
10	auth	0006_require_contenttypes_0002	2017-08-30 08:20:56.696353+00
11	auth	0007_alter_validators_add_error_messages	2017-08-30 08:20:56.70986+00
12	auth	0008_alter_user_username_max_length	2017-08-30 08:20:56.735854+00
13	sessions	0001_initial	2017-08-30 08:20:56.774353+00
14	catalog	0001_initial	2017-08-30 09:02:34.731627+00
15	catalog	0002_docs_kind	2017-09-04 08:07:03.915176+00
16	catalog	0003_auto_20170904_0309	2017-09-04 08:09:48.878193+00
17	catalog	0004_category_title	2017-09-09 09:56:13.839955+00
18	catalog	0005_category_image	2017-09-09 10:16:14.415212+00
19	catalog	0006_remove_category_image	2017-09-18 13:46:01.596211+00
20	catalog	0007_videos_image	2017-09-28 13:39:02.813244+00
21	tarot	0001_initial	2018-04-04 07:45:23.366863+00
22	tarot	0002_auto_20180404_0408	2018-04-04 09:08:45.502326+00
23	tarot	0003_auto_20180404_1530	2018-04-04 20:31:03.354768+00
24	tarot	0004_auto_20180512_1533	2018-05-12 20:33:48.571702+00
25	catalog	0008_subscriber	2018-05-16 08:27:19.960879+00
26	catalog	0009_videos_status	2018-05-16 08:27:20.015135+00
27	catalog	0010_videos_order_number	2018-05-24 10:49:23.15704+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
410e9g1dwubtdswrmpiaqr25kv8k1obg	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-09-13 09:02:16.807125+00
gt2qbnxv90wd3esayhwi43od6maplk3k	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-09-28 04:36:50.232612+00
b72n3rdfup4gbm9hlilo64d821imhzip	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-02 15:02:03.064919+00
bqtxp7x858nbbzzydfu550jqgxoimq7w	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-19 08:00:31.923654+00
9a3xo8w733slxssouhyf8t3r2jgvbl3t	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-24 08:20:32.179564+00
v3o79i3sehfgvn3nw38nti2mpah6zlue	YWQxMzFmOTg1Yjc1NGVhNTFkZTEzODVjMGJmYThlNzA5Mjc0ODc2Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OTFiMzVmMjUwMWYyNDc5M2EzNGQ2YzcwMDQ3YzMxYzE0YzdmODJhIn0=	2017-10-31 09:07:24.641317+00
lznngbrgk7xr2875xkjg31h9iv9iro89	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-01 21:48:12.522365+00
1235ukc130lwq4wpx8mwf7rzrmd06kyl	MDhmNzNlYTU5MjQ1OTJhZDlhMjI3MTg2Y2IxYzE0MmFjOTI3Zjk5Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDAzYWI1Mjc0OGYxNTFkNWY1NjEzNTgxYWEyNTNmY2Q5MWQ2NDEwYiIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-12-13 05:58:41.282715+00
6s7y0sb4m6eupqfs11m931l7k6m9n32j	ZTExMDlmYmE5NGRkMWI2NjlhZThiYzE0MTc4MDU1YTc4MDBmNjgwNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkNWUzYzFkZDkzMjVlMjJmOGEwMzA5ODk4NGUxMTYyOGMwYTgzYTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2017-11-01 22:22:08.706535+00
edkug8bgqrlao7aus40vmsyo6kqpaqxn	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-01 22:36:16.556665+00
850ruw47o5d6rwjr7zz42lvek8tc6jyv	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-03 10:59:37.173526+00
06h1fmmbddwjht0cpg04baes5voc8ubb	YjZjZDNhNDZiZGEwZTRmOTBlZmZlMWFlODdhZWVkZWQxYTg4NTU1OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-03 18:59:22.729973+00
k3d75isfnlu25g11lfkcv3ne5k668qjg	YjZjZDNhNDZiZGEwZTRmOTBlZmZlMWFlODdhZWVkZWQxYTg4NTU1OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-03 19:01:46.645721+00
efv8qpmd0t3k6jk1sc3veka5ogzjws0t	NjBhYWQwOGNmYmQ4ZmFkZDMyNzJiMThlMjJiYjZlMzc5YjZlMzMxZTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg3MGZiZjM5NDFlYmUzOGI3NDgyMGM4M2NmNTU2NTdkNjUzYTEwMmEiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-03 21:07:32.415406+00
7mgdfy949o38kpedrz8qq8yxf4qualty	MWY1ZDJmM2NjYTA3ZTY0NmVlMzc0MDViOGQ4ZWY2OTE2ZWViZGRiMDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9oYXNoIjoiM2VjMmVjOGRjYTE4MzliMmVjZDYxNWQzZTQwYWMzOTE5M2VkYzNmYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-03 21:52:51.483813+00
o0o14vfmjk6acfpd83w82g8pt1uptxbc	YmY2YjMxOWNkYTA4MjE3MjBiM2U5ZTBiMWMxMDExYzdlODUwNzliMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNlYzJlYzhkY2ExODM5YjJlY2Q2MTVkM2U0MGFjMzkxOTNlZGMzZmMiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-03 22:11:00.67202+00
aocuas9aoirv8lkwyybopl8qrs9lsefz	NzQyMjk4OGIxZWViYTFkYmVmZjA2NjY3ZDcxN2Y2NTc0OGZmMWZjNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRkNWUzYzFkZDkzMjVlMjJmOGEwMzA5ODk4NGUxMTYyOGMwYTgzYTMiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-21 04:54:29.375709+00
ta6zgizje9p7urv0fbp6aac2lg8mke37	YjZjZDNhNDZiZGEwZTRmOTBlZmZlMWFlODdhZWVkZWQxYTg4NTU1OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-21 12:40:53.458648+00
0q0l33eqk37zqo067fb9uq8q7dmuc599	YjZjZDNhNDZiZGEwZTRmOTBlZmZlMWFlODdhZWVkZWQxYTg4NTU1OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-21 13:01:47.596681+00
n37arm81bt7oavnzhxvyz6ahzzdoq4y0	NzEwYTQ4OTIzYjNmZDE5MTU2ODgzODY0MmQxOWE2ZjA5MGE3ZGVmODp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9oYXNoIjoiYjRhMjJmNzczY2JiMzVmZTYzMmQ3NTVhZjE4ZjVkNWU1OGQ4M2ViMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-06 05:51:53.184896+00
hwqjgj5j9vi6pzppvo4r48y1bpszgj4l	YjZjZDNhNDZiZGEwZTRmOTBlZmZlMWFlODdhZWVkZWQxYTg4NTU1OTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-06 20:34:20.499786+00
gr2n6d6sn9sxmnaccqhpikau38fbhcj7	YjAzODg4YWE3ZTVkMWFjMGY0NTczMjA1ZmE0YzQ1MTU4ZThmZjMzZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2017-12-11 02:37:11.849279+00
wy6td4e6sfme1utvcqrg7n9agsg7626x	MDhmNzNlYTU5MjQ1OTJhZDlhMjI3MTg2Y2IxYzE0MmFjOTI3Zjk5Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDAzYWI1Mjc0OGYxNTFkNWY1NjEzNTgxYWEyNTNmY2Q5MWQ2NDEwYiIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-12-12 23:25:17.513235+00
nbxjzp2b3bpcj0a1hrh9ieipb0hsswqb	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2017-12-12 23:25:41.027127+00
8pkz3hxvr0czoa31dh2f5dpzl9gu7wdn	ZjMwYWJjNzlhYmVkOWEwOWNlNDhjNGFhMWI0OWQ0ZmJhZGYzMjZmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWIwYTE0YWE5OWYyYTExZThkNjlmZDk0NTYyZDEyNjU3YjRiMjcwZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9	2018-01-10 00:52:11.401792+00
5fp3y6jxjq1rwsvtajd0qi3wvur13p08	ZjMwYWJjNzlhYmVkOWEwOWNlNDhjNGFhMWI0OWQ0ZmJhZGYzMjZmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWIwYTE0YWE5OWYyYTExZThkNjlmZDk0NTYyZDEyNjU3YjRiMjcwZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9	2017-12-12 23:26:06.64712+00
kgs3nq7pcjf3zicdrvnfy7c6difvqdtd	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2017-12-13 01:38:04.576191+00
5tkrj9agpx66p179atkc8ty63xezz2tn	YjU5YTAzNzQ4NDlmODA5M2JmYmY5NzI4M2M0ZTI5MGVjNDA2ZTU5ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWZjZmNiZTVkYmMxMGI3NzY3OTE3MmNmNDIwZWQ0YTQwODhhNDQ1NCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2017-12-13 03:13:49.222348+00
lz3wy0sjf8b85ewz9ezryr2es1d3c81d	YmMwZjEzZjBlY2ViNGJkNTZjMTI4Y2ZiZDk1YzlhNGU4MmVhZGFjZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmZiMDgxZDYzMDJkZjljOThmYjdjMDZkZmVjZTQyODM2M2JlZjNhOCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9	2017-12-12 23:30:16.912143+00
bym2ghvqgez17k39jfkcbvlephcol4rd	NzZmZjRmZmQxZDc1MDYzODczZjc4OTg3OTFlNzQ3Mzc0Mjg5NmYzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM0MThhZmFhZTkwNjhkZWIwOTA0ZjJkYjg2MmQwNWI3Mjk1NmQyOCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=	2017-12-13 14:56:04.905515+00
fafg8nx5xebjmac8ikulmgvlfgcd9o9e	MDhmNzNlYTU5MjQ1OTJhZDlhMjI3MTg2Y2IxYzE0MmFjOTI3Zjk5Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDAzYWI1Mjc0OGYxNTFkNWY1NjEzNTgxYWEyNTNmY2Q5MWQ2NDEwYiIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-12-13 23:05:22.766883+00
54w7jb8fqfczc23loalxau0bbq3ruc1i	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-12 23:31:36.47041+00
5sspsx9uv1df2wfablscgrw3udcxlk1x	YjU5YTAzNzQ4NDlmODA5M2JmYmY5NzI4M2M0ZTI5MGVjNDA2ZTU5ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWZjZmNiZTVkYmMxMGI3NzY3OTE3MmNmNDIwZWQ0YTQwODhhNDQ1NCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2017-12-13 00:09:11.024873+00
7xez84es97xmv8yytao00y0h9i2tllxo	YjU5YTAzNzQ4NDlmODA5M2JmYmY5NzI4M2M0ZTI5MGVjNDA2ZTU5ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWZjZmNiZTVkYmMxMGI3NzY3OTE3MmNmNDIwZWQ0YTQwODhhNDQ1NCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2017-12-13 01:22:25.747188+00
12rv9t999dfz26927r9h5a1ki9yqr5uz	ZjMwYWJjNzlhYmVkOWEwOWNlNDhjNGFhMWI0OWQ0ZmJhZGYzMjZmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWIwYTE0YWE5OWYyYTExZThkNjlmZDk0NTYyZDEyNjU3YjRiMjcwZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9	2017-12-15 03:06:47.43224+00
zvntu1831sw9v4zju4ajj2lcsonozgq7	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2017-12-15 19:43:41.683187+00
oo9ztxncodcucplp1a6iwrs2dusez28a	ZGIwNmE2ODlmNWNhMTI3OTMxZTZmN2IxMDA0ZDc0MjUzMDgzY2Y4ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjRhMjJmNzczY2JiMzVmZTYzMmQ3NTVhZjE4ZjVkNWU1OGQ4M2ViMCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=	2017-12-17 19:18:53.979033+00
xl5od35dw2ujdsfrn55rfonrkv5hwocl	MDhmNzNlYTU5MjQ1OTJhZDlhMjI3MTg2Y2IxYzE0MmFjOTI3Zjk5Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDAzYWI1Mjc0OGYxNTFkNWY1NjEzNTgxYWEyNTNmY2Q5MWQ2NDEwYiIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-12-18 00:32:38.662911+00
a3c3lnpaoykf0x2v2p4yf5dt1rjhopkd	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-19 02:07:49.714751+00
c2zz0y6dw15wcvw9xszh6sjygol1j9b6	ZTY2M2Y3OWYyMmI1NzEyYjYzMzA5MzcxODIxN2Q3OTNmYjFiOGNiMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDkyZDkxMjUzOGEyOTdmN2IzY2E5ZmIzMGY4MzQ2NTE4MTgzMGZkOCIsIl9hdXRoX3VzZXJfaWQiOiIxNSJ9	2017-12-19 02:44:01.29369+00
o029qpqdw8czeik66zjuzuexvroqat4m	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-23 21:49:27.71788+00
ed2gd5yjikbwq3y12sk0jkeorcm2oie2	MzlkNWU0ZjAxNTE4NGNiZmM4OTIzOGY4ZmUxZDQ3NWJlZmVhNWM2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2UwMTE2NDJhNzdjYzYxNmI4ZDY2ZjdiMTI2NTEzM2E2ZmM2MzNmNyIsIl9hdXRoX3VzZXJfaWQiOiIxMyJ9	2017-12-24 05:55:33.148858+00
1chaqrlugux4mdhjyr7t8zys7704vwln	MDhmNzNlYTU5MjQ1OTJhZDlhMjI3MTg2Y2IxYzE0MmFjOTI3Zjk5Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDAzYWI1Mjc0OGYxNTFkNWY1NjEzNTgxYWEyNTNmY2Q5MWQ2NDEwYiIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-12-27 03:55:45.627923+00
8uxdpfgleessbxted3zvpk47974g3wbm	MzlkNWU0ZjAxNTE4NGNiZmM4OTIzOGY4ZmUxZDQ3NWJlZmVhNWM2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2UwMTE2NDJhNzdjYzYxNmI4ZDY2ZjdiMTI2NTEzM2E2ZmM2MzNmNyIsIl9hdXRoX3VzZXJfaWQiOiIxMyJ9	2017-12-27 15:47:56.834931+00
0ns8vzapmlizoerftl8nr96donkcfpra	MzlkNWU0ZjAxNTE4NGNiZmM4OTIzOGY4ZmUxZDQ3NWJlZmVhNWM2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2UwMTE2NDJhNzdjYzYxNmI4ZDY2ZjdiMTI2NTEzM2E2ZmM2MzNmNyIsIl9hdXRoX3VzZXJfaWQiOiIxMyJ9	2017-12-27 17:24:26.352205+00
c1yoor8tr9yok0g2r4g9peinfd5kvd68	ODkwZjg0MGRkN2E2NjQ4Y2EwZGYxODgzMTRlYTU4YTM0OTQ4MDZhNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzljY2I4YTk0YzE4ODJiZTA4MTg4ZDgxNjkxZWE5YmNmN2MzMjM4YyIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9	2017-12-28 15:40:51.35567+00
fh458t0nina4p0gbhvuumgm4gc18s66d	MDhmNzNlYTU5MjQ1OTJhZDlhMjI3MTg2Y2IxYzE0MmFjOTI3Zjk5Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDAzYWI1Mjc0OGYxNTFkNWY1NjEzNTgxYWEyNTNmY2Q5MWQ2NDEwYiIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-12-28 23:31:05.754381+00
ffdzdsadewrpuplllfwjyq8d4z6yq8za	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-05-31 09:02:28.373755+00
q7s2h3l3u1jj5uhuh2q76cj3bzqmaxxy	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-02-09 21:50:57.742903+00
rtd86ve7ouuppq0iouvss8dixgeqij9h	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-06-20 03:44:54.581573+00
ty9j42l2b7si4p76g8abugimltabh75g	NjNhN2YxODkzMGFhOTk5ZTVmNDE1ZGEyM2VlZGZlYjAzN2VhOGIxMjp7Il9hdXRoX3VzZXJfaWQiOiI2MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTllZjY4YjQ3ZDg2ZmI4NzRlODRiYmJhNjhhOTE3MjIxOWU3NTZmNiJ9	2018-06-25 23:09:22.377986+00
aoz2zxp2axbdbid9hi7ijsprqyjtelry	YmMwZjEzZjBlY2ViNGJkNTZjMTI4Y2ZiZDk1YzlhNGU4MmVhZGFjZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmZiMDgxZDYzMDJkZjljOThmYjdjMDZkZmVjZTQyODM2M2JlZjNhOCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9	2018-02-12 01:59:25.869523+00
pdc4w3o0bwqje3fzqa3nf1ygmgfd3o4t	OGYwYmVmMjZkNDA5OWIxY2IyMjhlNTU4NjI1Yzk1ZTRkOWIwZmNmYTp7Il9hdXRoX3VzZXJfaWQiOiI1MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhmMjE3M2Q1ZTg0YmQzNzdiMDgxZDZjMTgwYjg5NzcxZWE5YzFiOSJ9	2018-06-14 20:35:55.041503+00
f6c61y4f3csyajiq20ivszu6dl4csz3a	YjAzODg4YWE3ZTVkMWFjMGY0NTczMjA1ZmE0YzQ1MTU4ZThmZjMzZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-03-22 15:45:03.73811+00
utmnt6x3yqu5kcfhw3jklosohvuir6zw	NThmMmE5NmEyZDc2YWQxZmFkMGNiOTI4MTBjODU3ZmYzNGEyMjI5ZDp7Il9hdXRoX3VzZXJfaWQiOiIzMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGNkZjc5MTQxOGVjNjZhYzdjZDc4MTliMGNjYzQ0N2VhY2U3ZWQ2ZSJ9	2018-06-26 10:36:17.343983+00
mm3g4hes57m7w6h25igj4l4xeg4trs01	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-04-18 20:32:36.862689+00
i8d2j9qicack6hetsoinpbvtrdzb2n28	ZmMzZTQ0OTQzOGMxZWY1ZTliYWM2ZDU5M2IwMWMwODdmYjQ1NmIxNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjdjZGNhZDI1NmI3ZTZmZDgyMTljNDgxY2YzMzM5NjRmYmI1NGM2ZiJ9	2018-06-07 15:43:40.831364+00
nvtbhdgsbrnifiwhyy0k1tt9wgf8z722	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-05-08 20:41:22.394448+00
ycxh493j3l1i71gffvwi6ymn2ko3h83q	ZGU1OWUxYmU2MTA2NDVhYTMwYTZiNGI3MTUyODYxNTMwMTc3NzIyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2VjMmVjOGRjYTE4MzliMmVjZDYxNWQzZTQwYWMzOTE5M2VkYzNmYyIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2018-01-11 22:00:45.154287+00
ezeutc6u41bouo1od0zqjiah9nm0dtee	YjAzODg4YWE3ZTVkMWFjMGY0NTczMjA1ZmE0YzQ1MTU4ZThmZjMzZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-02-28 16:41:56.46597+00
d69ju40qqt02wv9f13ny109pqkxix2ah	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-06-05 19:30:11.593038+00
qhpqqc57d0e50ace40v2wrl0rxv8aih3	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-03-23 05:02:41.286128+00
sc2az29dzywko34l80inrxgg35q81o07	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-04-18 20:38:42.417806+00
i2tuhhd3a1i9z832m0y3hwrtwh1qga6x	ZTU5ODg0MDk2NjNmMmRlNTJjM2NmZWE0YWI4ZTkzNzNmYWE1YTBjZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5YTc4OTI5OGJiZTgwMWE3ZWVkZWYzZTVlNDIzYWViMTA5MWQ5OTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2018-06-06 18:08:02.066762+00
od5ehoyawwcj3gsesy4q2rses16os88z	ZWM1ODAyMzhjYTNlNTQ5NjYzNWI3OTVjZGIwNGVhZjQ2M2I3YTczZjp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-04-21 06:25:17.707906+00
6ded475n0nz2lgptxtgnoh6x0cu25gmp	YmEwYmYxZTBiMDRiMjczN2U1ZWM0MTcwMzI1YTI4ZmE2ZjYyM2RiNDp7Il9hdXRoX3VzZXJfaWQiOiI0NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGQxZThkYmY4MWYyZWFkZDU0NTQ5MjExOTFmNjg4ODc1NjU4ZjY4NCJ9	2018-06-14 20:46:50.266352+00
640o8t18j7l4tmb1jytnbk3p4q71v0uz	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-05-08 20:47:10.378295+00
x0fccx5zno7k2p2ow7a37d23wf8i6b0t	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-27 18:45:22.472731+00
eeekkjg0sajleedfixdwirqbzsfqu65f	OTViMDE4ZjYxYzgyZGY0NDQ1Y2ExMWI1MzgxMmFiYTkxNjk0NDgwOTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjlhNzg5Mjk4YmJlODAxYTdlZWRlZjNlNWU0MjNhZWIxMDkxZDk5OCJ9	2018-06-18 04:50:11.454971+00
kianqv5703y7s669lnfzfww5c22inr4r	ZjZhNjFkZmI5OTc4N2UxMzJjMTg0ZjA5ZjViOGFkZDgzY2RhMzg0Njp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjY3ZWJkYzBjOTQxMDBmMGFlZDVjZjI4YTYyYjYzZTcyZTI2NjQ3NiJ9	2018-06-12 22:13:15.941516+00
5zgzmc2n150t93acecwb2uuqjrif41ah	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-02-28 22:07:36.510264+00
j5icxxu9gscoxdeo3vu679ucweu5f3br	MDU2NGMzZGQzMmFiMWM2YWI1ODg2YmExYzkzZGIxNDMyN2E2YTlkZTp7Il9hdXRoX3VzZXJfaWQiOiI2MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA2MjIyMDgxMmI3ZjBjYTMzNTgwOGVlNDc5YzA1MGU3ZmZiMDdhYyJ9	2018-06-14 21:22:01.034447+00
kvj24tx7jwajn8nz8balmbakifh3ywyk	NmMxY2FjMTczN2MxMWRjMjhlMThiYmViMjFjMGQ2NTg0NjIzZWVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjlhNzg5Mjk4YmJlODAxYTdlZWRlZjNlNWU0MjNhZWIxMDkxZDk5OCIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2018-03-23 06:52:49.60162+00
m5hmgakxxsqyqs97yu7onu19fkwcbzvv	YzY5MGYxYmE5NTRmNjIyMDY0YmYyZTgzMDE5ZjRiZjMyN2I5ZWJlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzBmYmYzOTQxZWJlMzhiNzQ4MjBjODNjZjU1NjU3ZDY1M2ExMDJhIn0=	2018-04-18 20:53:01.839846+00
65n6ew5qv1t8434wthp207hxpax12ot8	NjYzNTRmMzY4YzBlZDU1OTY5YzNlMWVjOTliNTRjNTdiOTBiNTgxNjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg3MGZiZjM5NDFlYmUzOGI3NDgyMGM4M2NmNTU2NTdkNjUzYTEwMmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-06-06 22:58:17.981334+00
q8imw92sbjow8gyrpkquzfrn299lhi0z	ZWM1ODAyMzhjYTNlNTQ5NjYzNWI3OTVjZGIwNGVhZjQ2M2I3YTczZjp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-04-21 23:51:56.75249+00
tlzw1bqgpggl3yefok6ws7nxbh7pkiiw	MzhmODMxYTVjMTg1NGFmODgyY2I0NjEwZGU4N2RlZjQxNGU0ZTIzNjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGI5MWU2ZDliOTU2N2M2Yzc4Njg5NGRiMjE0YmRlMjFmNTc2NzViYiJ9	2018-06-18 13:34:47.254225+00
6sd37rt4yi4rx38xmh197joogc6byysu	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-08 20:52:07.186493+00
9beffhut3k7a9eqb374bo93fcawh39nu	ZTM2YjdkMGQ4ZTRiY2JkNTQwMjE1NjMwNzM3MjE2YWJlMjEyMjAyNDp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWI0OGZkYjlmZmEyNWFjOTZhOGJiNjlhMGZmZmRjM2IxYTAyZmE1YiJ9	2018-06-26 13:23:13.733731+00
daywi9weu8y1z85wnlfeb4lla86vmnny	N2M3Zjg1MDJjZjdhNzhkOGEwMWQ0ZGJlOGRhYzkzNmFkNWVhZWVjZTp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2YxNDBjMDEwYWQ3MmJiZWRmNTRmNWZhYWQ3NTI1NmM5ODg3ZjhmYiJ9	2018-06-12 22:39:17.310847+00
7wtjolmrejl2p75dlqj1rhgi75oi77nz	ODkwZjg0MGRkN2E2NjQ4Y2EwZGYxODgzMTRlYTU4YTM0OTQ4MDZhNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzljY2I4YTk0YzE4ODJiZTA4MTg4ZDgxNjkxZWE5YmNmN2MzMjM4YyIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9	2018-01-12 16:47:06.159036+00
ocq1xc9kx5ji0mlm8vyrih1nexyiu0is	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-03-08 17:12:07.3615+00
77p5tae9qi8cqpvzpceb1zyn3d31ihow	YjZhNjk2MDg3MDhjMjJkYTY0ZDgzZWU3MjAwYzBiYzEzOGQ0MTUzMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjY3Y2RjYWQyNTZiN2U2ZmQ4MjE5YzQ4MWNmMzMzOTY0ZmJiNTRjNmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMiJ9	2018-06-07 09:38:18.317379+00
dmimkj32t12vzczry5jba0ttpjsx1ez2	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-03-23 17:50:32.58495+00
2522fx4lbi67cmsjugug0vdu55rylkx0	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-04-18 21:08:19.438489+00
dpw55xofmaeihnd3474fl56qwkpyz0kz	ZWM1ODAyMzhjYTNlNTQ5NjYzNWI3OTVjZGIwNGVhZjQ2M2I3YTczZjp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-04-28 17:13:24.689383+00
4dpc5azyn0r8dqyzcl2qz1zt2km2qxr8	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-08 20:54:41.630327+00
vkfq6uo3cjrh2sw25il5i5jsjjk7u32i	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-05-28 21:30:55.976835+00
hcric1gvd49p3g7zxj6161bs64dfktmg	NmMxY2FjMTczN2MxMWRjMjhlMThiYmViMjFjMGQ2NTg0NjIzZWVkNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjlhNzg5Mjk4YmJlODAxYTdlZWRlZjNlNWU0MjNhZWIxMDkxZDk5OCIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9	2018-05-30 22:57:59.764103+00
q2mj1ts35mhqx3qlk559snmy0dvua57q	YjAzODg4YWE3ZTVkMWFjMGY0NTczMjA1ZmE0YzQ1MTU4ZThmZjMzZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGQ1ZTNjMWRkOTMyNWUyMmY4YTAzMDk4OTg0ZTExNjI4YzBhODNhMyIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-01-18 18:40:36.440684+00
z0g0u22u1g3ouh2w9n6z87a80yk9mjh3	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-03-10 23:55:16.43035+00
apgyjnxaq8u5wblb0ifrlbifyksjzsxe	YmFjODZkYTNkNzc5NmU5YmRjNDQ5YjkzMDY1MzM0ZTU0YjU5MjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiI1OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTM0MDkxMmUwZjZhZDRkNjVkNWE1YzkxOTcyODQzYTUxMDE5ZGJlZCJ9	2018-06-14 21:58:37.483308+00
utkhsz1gpv7e9mc24qw2b213pt9uco8b	YmMwZjEzZjBlY2ViNGJkNTZjMTI4Y2ZiZDk1YzlhNGU4MmVhZGFjZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmZiMDgxZDYzMDJkZjljOThmYjdjMDZkZmVjZTQyODM2M2JlZjNhOCIsIl9hdXRoX3VzZXJfaWQiOiIxMSJ9	2018-03-30 03:46:57.434464+00
ruv3ucnwmy9ehhnlt6eple23330q01m3	ZTM2YjdkMGQ4ZTRiY2JkNTQwMjE1NjMwNzM3MjE2YWJlMjEyMjAyNDp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWI0OGZkYjlmZmEyNWFjOTZhOGJiNjlhMGZmZmRjM2IxYTAyZmE1YiJ9	2018-06-20 19:19:38.191766+00
fwuy5f4ikged8b0qesehazg574s738f0	ZWM1ODAyMzhjYTNlNTQ5NjYzNWI3OTVjZGIwNGVhZjQ2M2I3YTczZjp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-05-08 16:26:29.582099+00
9ri24redicysnyxi2cq2uooigzhicyec	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-08 20:55:14.136325+00
gqo50h20huazzgpddfidmy925kb6jmp3	N2E3ZTEyNjI3ZGU4MWQyNWJiMmY5MzkwNTI1YWNiMWU5MDBlNTljZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI4NzBmYmYzOTQxZWJlMzhiNzQ4MjBjODNjZjU1NjU3ZDY1M2ExMDJhIn0=	2018-06-10 04:27:18.13593+00
4et30bzrattwzz5c9r3gzl51vg6e7mh7	MDU2NGMzZGQzMmFiMWM2YWI1ODg2YmExYzkzZGIxNDMyN2E2YTlkZTp7Il9hdXRoX3VzZXJfaWQiOiI2MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA2MjIyMDgxMmI3ZjBjYTMzNTgwOGVlNDc5YzA1MGU3ZmZiMDdhYyJ9	2018-06-14 22:12:47.878689+00
gx9hb9nb91nzev9vvnqrla8gaddfafhz	ZDU0MTUzMTk2YjcwYjI0NGVkZjhlNzExMDk2MzYzYzc0ZjA4OGQ4MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-05-08 20:38:12.609327+00
k2ed8jq5uxm98ogg988l23q7uigsyxjg	ZWUzMmRhNDk3NjA5MDMwZDMxMDViNzEyNzM5ZTc3ZDYyZDVjMDVhNzp7Il9hdXRoX3VzZXJfaWQiOiI2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg3ZGM4YjVjY2QyMTgxNjIzZjFiY2QzYjY0NGQ3NjRjMTJjOGZjMCJ9	2018-06-26 18:58:54.551851+00
4nzlnszdy40e4qkayals6ec7h8z88fit	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-08 20:56:36.371072+00
lscada1hrvriszclywhm92hq83a6p1re	YzY5MGYxYmE5NTRmNjIyMDY0YmYyZTgzMDE5ZjRiZjMyN2I5ZWJlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzBmYmYzOTQxZWJlMzhiNzQ4MjBjODNjZjU1NjU3ZDY1M2ExMDJhIn0=	2018-05-29 19:46:07.485712+00
f1u88qooeft2xptcnkl1tfpj1he4qd2g	YjNkMmYyOTIxZTZlNmEwYWRjN2Y3ZTk1OGQ4ZDk0NGI5MzNiZTUyNzp7Il9hdXRoX3VzZXJfaWQiOiI1NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTk3OWQ5NzBhYTAyYzJiNjJmMDA4OGU2YTk1YTJmOTgwMjc5ZWJjNyJ9	2018-06-15 00:02:06.587025+00
rzsm3pmf9gy1jpaa48yv704hn5e8oadz	YTkxMGIzOTgxYWI4MGI3MWM4YzY4ZjkzOTc0NGQ2OTFlM2UxN2I5ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCIsIl9hdXRoX3VzZXJfaWQiOiIxOSJ9	2018-04-06 03:12:28.491467+00
x270ybq5in099r6voxeg6e7dkqa4imje	NGZiMGQ5YmFlNTdkZDFkZWE4NWI1ZGM5ODk5N2ZkZmU2YTY3ZGI5ZDp7Il9hdXRoX3VzZXJfaWQiOiI2OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTBkOTA1ZjNjNmFmNjQzMTViMzVkYTc0MGQwNDM1MTE1MGE1YzRiMiJ9	2018-06-18 20:09:35.128512+00
u68b95gfvurxi65nftept20izh1e9c6u	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-05-08 21:07:59.055816+00
lbtxn330cuov6v8typ26hges7j3srrtv	OWQ2ZWQ5MTcwMGJkN2VlNGZhNDFmZWI3MjQxZDEyNjhmZjc5MzNhYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGEzZDU2NzIxYmEwYWQxYzUyYmNmYTI4YzZiZjdmY2Q0ZjY1ZjY1In0=	2018-05-29 20:31:10.71399+00
0ciql123dlcmsft6845vv7ukn3725l93	OGYwNWYxMGJjOTJjYjFmZGM3MWI5NThkNzg2OWRhZjY1YTcyY2IzOTp7Il9hdXRoX3VzZXJfaWQiOiI1MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjRjNjFlY2QxNWJkOGI1MjM4YTkzMzE5OTk3ODY2ZDk4YWUxMWNlNSJ9	2018-06-26 19:18:38.058366+00
pdc1l2gurkotqt86m0f3lkegrn2r344i	MzlkNWU0ZjAxNTE4NGNiZmM4OTIzOGY4ZmUxZDQ3NWJlZmVhNWM2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2UwMTE2NDJhNzdjYzYxNmI4ZDY2ZjdiMTI2NTEzM2E2ZmM2MzNmNyIsIl9hdXRoX3VzZXJfaWQiOiIxMyJ9	2018-01-20 18:18:04.358591+00
mjmxe5gc1pin0v9x02zq7j051w5tcfu4	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-03-14 22:32:43.324082+00
djv0zc7oevcq1m56b9glp08qkto8f2za	M2ZkNTZhOGQ5YTBiMzIyOWIzZjZlNDkzMDcxMGMyMjM2N2Q5MzM1Zjp7Il9hdXRoX3VzZXJfaWQiOiIyNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGVhN2IzNTIzZmIwOGJmYTY4MjEyOTE0MTQ0OTk2NGEyNzZiYTY2NSJ9	2018-06-13 12:13:06.167371+00
6468dok8obud4gkmqkbihr7l4e6ymrm4	YTkxMGIzOTgxYWI4MGI3MWM4YzY4ZjkzOTc0NGQ2OTFlM2UxN2I5ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCIsIl9hdXRoX3VzZXJfaWQiOiIxOSJ9	2018-04-18 06:34:51.176448+00
8f2o93c0x2pilj0sjj9kvqhvnlp1fgbb	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-08 21:08:13.597324+00
ytpwini4jd8vco8smygwnjg4arnc3s1n	YzY5MGYxYmE5NTRmNjIyMDY0YmYyZTgzMDE5ZjRiZjMyN2I5ZWJlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzBmYmYzOTQxZWJlMzhiNzQ4MjBjODNjZjU1NjU3ZDY1M2ExMDJhIn0=	2018-05-29 20:33:30.50647+00
7ishmf1q9ch1jp5snxna3h79zcvl1qmx	MDNmZDFjYWE4YmQ4MDBlNjZmMjBiMGJmNDk0NWI0MWQ3YTA4ODQ2ZDp7Il9hdXRoX3VzZXJfaWQiOiI2NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjg0MWM0ZWIyODJiZTAxZDU4YzNiN2VlNThhYjc1NzFjNTg1MWMyOSJ9	2018-06-18 21:18:12.41771+00
2qjkp06utkw5vdhlck2gsai4kugvyyvi	MzhhZWQwMGU0MDcyNjc2YjdjY2U1MDkzNWI1NjQ3ZGMwNjBmMGM2Nzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGEyMmY3NzNjYmIzNWZlNjMyZDc1NWFmMThmNWQ1ZTU4ZDgzZWIwIn0=	2018-06-26 21:06:37.870462+00
5ox1s6sveshvvxn4rdpjulpq2fvzxmtv	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-04-18 06:49:35.96219+00
rb16nbn2jdpbzzspdpivikc8x4q1tmts	ZjZhNjFkZmI5OTc4N2UxMzJjMTg0ZjA5ZjViOGFkZDgzY2RhMzg0Njp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjY3ZWJkYzBjOTQxMDBmMGFlZDVjZjI4YTYyYjYzZTcyZTI2NjQ3NiJ9	2018-06-13 13:41:03.325854+00
25zg0o26pcinjcq9ji9p3tl70gqnguk9	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-05-08 21:15:39.378361+00
kbbmy6sw2i7luwicshhz12p2m0qz12d7	ZTRhZjkzMmJhNjZkOGQwZmMwZDA0NDQzYmI4NTZhMzQ3MDY2MjNlNzp7Il9hdXRoX3VzZXJfaWQiOiI1MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmExNjliODcxY2M4YjEzZDdhZmM4YjU0MWNjYWM0OTJhNzU2OGI2YSJ9	2018-06-20 23:13:52.929371+00
hp8b7qfqr2gp6898x050mwdcatwij4ju	NDJiNWJhMWVkMDUxNzYzNmM1ZDQxODMwNGM0NzQ3NzEwZWE1OWI5Yzp7Il9hdXRoX3VzZXJfaWQiOiI3NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmI2NDVhOGE0NzRmNzU3NWU2ODA4MzI1MGExNWI3NGJjMjMwYjE2MyJ9	2018-06-27 03:05:05.680597+00
mmahaxkbebvggmlmdyqu6yjjy95tqlk7	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-08 23:25:18.069571+00
bod5fxflzih8cc2zzffg2qi3piiyxfdl	MjViYzIxMjJiNGJkZmNkZjkxMTBlNWMyNTNlMmY0YjJiNzRjNzBjODp7Il9hdXRoX3VzZXJfaWQiOiIzNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjcxNDU5ZDIwZGY5NWI1YjYyMzhhOWNlOWZiYzZlYzJiNGZjMzgxZiJ9	2018-06-15 02:32:19.163153+00
224axkv5m1iphjknczw75q1dqt030iqp	OTViMDE4ZjYxYzgyZGY0NDQ1Y2ExMWI1MzgxMmFiYTkxNjk0NDgwOTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjlhNzg5Mjk4YmJlODAxYTdlZWRlZjNlNWU0MjNhZWIxMDkxZDk5OCJ9	2018-06-27 05:06:30.980408+00
mm9wcjy4ovoednwb12rztwkbxmevyr7y	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-08 23:45:08.952928+00
1xqykh65zbe1wzzvgmo2578qnd3rtjyq	MTE0ODIwOTBhYzlkMzBkNTY0ZDE4YWE0NTQ1ZDhkYzE4ZjgxZmFiYjp7Il9hdXRoX3VzZXJfaWQiOiI1MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDg1MTdiZTc4YTIwNTFiNjAzMDI1YmJiN2VlN2ZjZjM5ODdjNTM2NiJ9	2018-06-15 02:56:26.398797+00
fw4a94w1f3gln32etqtfgsv5ncmsecjf	YzY5MGYxYmE5NTRmNjIyMDY0YmYyZTgzMDE5ZjRiZjMyN2I5ZWJlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzBmYmYzOTQxZWJlMzhiNzQ4MjBjODNjZjU1NjU3ZDY1M2ExMDJhIn0=	2018-06-15 08:22:15.746457+00
3funj4po0pl7wcdar5mu3ryd553msj3a	MTM3NDljYmQ3NDViNzkxZjI5ZjA4MjRiOWY2NGRmNmNmODFiYjZhMzp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDRkMTgyM2U0OTlkOTM0MTliYjdiZDVkNzkxMmU4NGExZTJiMjJiMyJ9	2018-06-13 17:12:53.685652+00
tc60pllc7s6n6z9za4hc24riv6v23uxf	ZTM2YjdkMGQ4ZTRiY2JkNTQwMjE1NjMwNzM3MjE2YWJlMjEyMjAyNDp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWI0OGZkYjlmZmEyNWFjOTZhOGJiNjlhMGZmZmRjM2IxYTAyZmE1YiJ9	2018-06-19 11:12:39.235817+00
m12ix2iepdxufs6qgl49adxnokc9abuq	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-05-23 23:54:08.396448+00
azmev821rf0ddu1loms7c3wd3d21xwap	MzkwMjgzNzcwZWRmNTkyOGVlMWRkMWFlNmYzMjBiY2U1MDQwMTZiMjp7Il9hdXRoX3VzZXJfaWQiOiI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmRjNjg1ZjBhNmFiYmFjMzNkMGQxNTcxMTk0NTYzMDg4NGJhNmQ4MyJ9	2018-06-13 17:16:28.076688+00
g8xb8stn148mkzf6vly6ui9s8gnediw7	MDU2NGMzZGQzMmFiMWM2YWI1ODg2YmExYzkzZGIxNDMyN2E2YTlkZTp7Il9hdXRoX3VzZXJfaWQiOiI2MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjA2MjIyMDgxMmI3ZjBjYTMzNTgwOGVlNDc5YzA1MGU3ZmZiMDdhYyJ9	2018-06-15 10:22:17.584425+00
ip73rvllvv8a4bps97xjkz45hcs4pkaf	NThmMjAwYTlhNjU5OWNhY2I4Y2M4MWUwODYzNjA4MGQ0NzMyYzBmNzp7Il9hdXRoX3VzZXJfaWQiOiI3NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTRmODE4NjU3Y2U0MzRmNzkzMjFhZWY5MTZlNzExZGQ1MDgzNDEwZCJ9	2018-06-21 01:19:29.697003+00
izw1bew88n5yxz618k7vt83yra292u2y	MzkwMjgzNzcwZWRmNTkyOGVlMWRkMWFlNmYzMjBiY2U1MDQwMTZiMjp7Il9hdXRoX3VzZXJfaWQiOiI0MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmRjNjg1ZjBhNmFiYmFjMzNkMGQxNTcxMTk0NTYzMDg4NGJhNmQ4MyJ9	2018-06-19 14:05:47.60243+00
h2q57kq1ks7hvhzh2rwjc1vbaspw9ihl	YzY5MGYxYmE5NTRmNjIyMDY0YmYyZTgzMDE5ZjRiZjMyN2I5ZWJlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzBmYmYzOTQxZWJlMzhiNzQ4MjBjODNjZjU1NjU3ZDY1M2ExMDJhIn0=	2018-06-27 18:19:46.067177+00
pgbadp8y1snzqsbgs23mlxksgyiwf4aq	YWI0YTZkNjdlYjdkZDI5ZDM1OWRkYzU0OGVjNjRlNmJlNmU2MzNhNTp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDdkMDNkNjdkMjQ0ZjNjMjU5MjA1YTk1ODk1N2FiNjNkNmI4YTM4NCJ9	2018-05-24 14:54:32.304452+00
q9n2m932zqgvqvzzmc981u2fipm6mwr3	MjViYzIxMjJiNGJkZmNkZjkxMTBlNWMyNTNlMmY0YjJiNzRjNzBjODp7Il9hdXRoX3VzZXJfaWQiOiIzNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjcxNDU5ZDIwZGY5NWI1YjYyMzhhOWNlOWZiYzZlYzJiNGZjMzgxZiJ9	2018-06-13 17:23:13.732055+00
52b5yf99xskfllul9xlw37o2ydyfazmd	MDZhNWQwYTVhOWUyYTA4YTczZThmOTM2YzA2OTIwYTRjODIxMDMwMTp7Il9hdXRoX3VzZXJfaWQiOiI4MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNmI1YmFiN2Y2Mjg0ZjRiMDg3ZTI1NTY1ZTUyMjYzYmI5NjIwNjgyOCJ9	2018-06-27 19:45:02.147209+00
0uk3gwnjtd3mz7a1ggl1jw20dfctej83	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-05-25 23:06:33.524866+00
n96i71br7inwuqfhbqeypmjemxg3jynr	MzhmODMxYTVjMTg1NGFmODgyY2I0NjEwZGU4N2RlZjQxNGU0ZTIzNjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGI5MWU2ZDliOTU2N2M2Yzc4Njg5NGRiMjE0YmRlMjFmNTc2NzViYiJ9	2018-06-13 17:55:14.909809+00
mv15z9k88ccgb4kj2pnq3uz6xvhkwx1m	OGYwYmVmMjZkNDA5OWIxY2IyMjhlNTU4NjI1Yzk1ZTRkOWIwZmNmYTp7Il9hdXRoX3VzZXJfaWQiOiI1MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDhmMjE3M2Q1ZTg0YmQzNzdiMDgxZDZjMTgwYjg5NzcxZWE5YzFiOSJ9	2018-06-15 12:03:51.924637+00
vcvluwn3kxz8e3etzq7i3dn8qo50atvu	NGYzNjliMGMwNTFhZWIyZGJmMzY0ZTFhM2IyYTI1ZmY5Mjg4NWE1Njp7Il9hdXRoX3VzZXJfaWQiOiI3MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTk5ZWExYTBmYmUwZWEzZDhmMmQwMzgyZmM1MmIxZmQzYTI3YzE0OSJ9	2018-06-21 02:17:38.116768+00
gvi6uaxy3zi952l90oe6lvfdgto6a29a	MmU5NDM0NjhhMjY5ZjE1M2FjYjQzNTRmZjVmZTg3ZjBmMmVjODFiODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDVlM2MxZGQ5MzI1ZTIyZjhhMDMwOTg5ODRlMTE2MjhjMGE4M2EzIn0=	2018-06-27 19:55:57.374543+00
ca0uj75bdrfnrcyskrtmcs19c9iog3oi	OWQ2ZWQ5MTcwMGJkN2VlNGZhNDFmZWI3MjQxZDEyNjhmZjc5MzNhYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGEzZDU2NzIxYmEwYWQxYzUyYmNmYTI4YzZiZjdmY2Q0ZjY1ZjY1In0=	2018-05-26 19:39:22.504593+00
rhc5x0h0y06im4l0t0h7vqgyux1cf7zi	ZGU1OWUxYmU2MTA2NDVhYTMwYTZiNGI3MTUyODYxNTMwMTc3NzIyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2VjMmVjOGRjYTE4MzliMmVjZDYxNWQzZTQwYWMzOTE5M2VkYzNmYyIsIl9hdXRoX3VzZXJfaWQiOiI0In0=	2018-01-26 00:05:06.307196+00
iorhz8b9vyrg9psf3xx727jcxqrx8t96	ZTRhZjkzMmJhNjZkOGQwZmMwZDA0NDQzYmI4NTZhMzQ3MDY2MjNlNzp7Il9hdXRoX3VzZXJfaWQiOiI1MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmExNjliODcxY2M4YjEzZDdhZmM4YjU0MWNjYWM0OTJhNzU2OGI2YSJ9	2018-06-21 11:57:23.365301+00
dsy40f0l9rgid3lwum4gx64hyojzp7fx	NWQ1MzAwM2ExMmJjZGRhYWE5NWVjNTVkNjc5NzJhOTQ1M2FmOTU2Mjp7Il9hdXRoX3VzZXJfaWQiOiI1NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDFhZGM5ZjFkZjViZDE3NzQ4OTk4ZTE4ZjZkYTIzMWYzZWM4NmVlZCJ9	2018-06-20 00:02:23.678642+00
trd0z0xi64sxgjy0z5upcf4nzp1qp1et	NzcxZWI1OTg4NmNmMGYzOWRmNDM3NTRlY2IxMGQ4MDlkNzc2ZjM3Yzp7Il9hdXRoX3VzZXJfaWQiOiI0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODI4YmY5NmI3ZjBlNDg2NzVkZDUwY2I0YTdmMDg2OTdkODdhOWFjYiJ9	2018-06-27 23:49:51.443846+00
zkx9oxczjk945nh3f7cw6tohgkvg8iie	OWQ2ZWQ5MTcwMGJkN2VlNGZhNDFmZWI3MjQxZDEyNjhmZjc5MzNhYzp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOGEzZDU2NzIxYmEwYWQxYzUyYmNmYTI4YzZiZjdmY2Q0ZjY1ZjY1In0=	2018-06-21 15:04:32.577912+00
8difuedonqvaifwok6hr7je025y9gvkk	ZThiZGM2YTgwMzljZDNmNjcwOTZhYTc2OGRmODcwM2E0OGY4ZDZmZTp7Il9hdXRoX3VzZXJfaWQiOiI1NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjc1Mjk4YzhkOWMwYmZhZmYwODM3OTlmMDM1MDZhNjBjOTNkYmQ1OCJ9	2018-06-15 13:46:11.054103+00
7o9rza31pr1l222qstrvz7udgeq418a0	MjViYzIxMjJiNGJkZmNkZjkxMTBlNWMyNTNlMmY0YjJiNzRjNzBjODp7Il9hdXRoX3VzZXJfaWQiOiIzNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjcxNDU5ZDIwZGY5NWI1YjYyMzhhOWNlOWZiYzZlYzJiNGZjMzgxZiJ9	2018-06-20 00:22:26.210415+00
5prvccm0pz7o8y8gftqcjkiy9pntqc3s	NTgyMmE0ZDJmNzYxMjIyOWZiMDE5MzY1MGM2NTBmOTFkOWM5YWRmZTp7Il9hdXRoX3VzZXJfaWQiOiI3NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjIzYjYzZmViZGQ1YzI4NjQ2MDg1MTdlZmFjZDkzZjQ1Yjg0M2Q2MSJ9	2018-06-27 23:52:39.636296+00
l9wb9gltjrp7wok65m1e1iosdrms6dd1	OGYwNWYxMGJjOTJjYjFmZGM3MWI5NThkNzg2OWRhZjY1YTcyY2IzOTp7Il9hdXRoX3VzZXJfaWQiOiI1MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjRjNjFlY2QxNWJkOGI1MjM4YTkzMzE5OTk3ODY2ZDk4YWUxMWNlNSJ9	2018-06-13 19:12:19.162358+00
3zjifcwhhx92f9aqtd86yc90sc15xrlh	MTE0ODIwOTBhYzlkMzBkNTY0ZDE4YWE0NTQ1ZDhkYzE4ZjgxZmFiYjp7Il9hdXRoX3VzZXJfaWQiOiI1MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDg1MTdiZTc4YTIwNTFiNjAzMDI1YmJiN2VlN2ZjZjM5ODdjNTM2NiJ9	2018-06-15 14:51:36.96775+00
hj0v13uxq3o00gsgxcha4gvbliirau1a	ZWZiMjEyMjAzZjIzZWM5ODljYzllM2MwODJmNWYzYmJkZjYxY2M4Njp7Il9hdXRoX3VzZXJfaWQiOiI2NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTlhMjY1ZTVkMmU1ZTQwYjdhM2Q4OTIxMzUzNjlkZGRlNjE3MDllMiJ9	2018-06-21 16:26:28.919725+00
rb9qztnfg9f6towe73z67i5b06zi7yzy	ZWFkNThhMDBiN2YxZjRiOGFhZTM3MDY4NTVmNTY2YWM0YmZiODc1MDp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGExN2Y4MTEyZjY5Yjg1Y2MwMWUwNzlmNjg2ZTNlZDg2OTA5ZWFmMyJ9	2018-06-20 03:00:04.036618+00
jdhxqagci81ju576oa23wa4myui9h9v5	NDc3MzA0Mzc1ZGM0NTdiNmNmZTFmMDU0YWFkY2JhOTNjOTg5NTkwYTp7Il9hdXRoX3VzZXJfaWQiOiI4MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM5MDIxMDdjOWQ3ZDUyYTRmMWMzYzFlZGJlMTZiOTIxZjMyYmZjOSJ9	2018-06-28 00:31:58.887264+00
ddekermuv9q3jew7bdc2d0tkv5o1s123	YmEwYmYxZTBiMDRiMjczN2U1ZWM0MTcwMzI1YTI4ZmE2ZjYyM2RiNDp7Il9hdXRoX3VzZXJfaWQiOiI0NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGQxZThkYmY4MWYyZWFkZDU0NTQ5MjExOTFmNjg4ODc1NjU4ZjY4NCJ9	2018-06-13 19:20:14.983133+00
dp6ms8s1jyi6y88kowtn2cajjtb6bcdm	NGYzNjliMGMwNTFhZWIyZGJmMzY0ZTFhM2IyYTI1ZmY5Mjg4NWE1Njp7Il9hdXRoX3VzZXJfaWQiOiI3MiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTk5ZWExYTBmYmUwZWEzZDhmMmQwMzgyZmM1MmIxZmQzYTI3YzE0OSJ9	2018-06-21 20:08:34.968771+00
5mbx1hzo59rekifihmyi43fvkgkmzox4	ZmE4NWM0NzllM2VlNmRiNjg3MjJjZTExNGZjYTZiYTg0YzY3MzQ0ZDp7Il9hdXRoX3VzZXJfaWQiOiIzMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGQyMmYzZGU3ZTNjZDNmMzI2MTllODAwNGJjOGI1N2ZmZTMxYWMzOCJ9	2018-06-28 03:22:06.980229+00
6emvkxre50olv6qahsxhhj3x9xh5onmu	YjU5YTAzNzQ4NDlmODA5M2JmYmY5NzI4M2M0ZTI5MGVjNDA2ZTU5ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWZjZmNiZTVkYmMxMGI3NzY3OTE3MmNmNDIwZWQ0YTQwODhhNDQ1NCIsIl9hdXRoX3VzZXJfaWQiOiIxMiJ9	2018-01-27 18:36:50.182001+00
8xdx2aulh1vo1bgx9mwk0x0w3nmey5je	MzhmODMxYTVjMTg1NGFmODgyY2I0NjEwZGU4N2RlZjQxNGU0ZTIzNjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGI5MWU2ZDliOTU2N2M2Yzc4Njg5NGRiMjE0YmRlMjFmNTc2NzViYiJ9	2018-06-15 15:45:10.72497+00
ldr6sqgl1sfyj6176qeycj67wphvmvsl	MGNjMmNmOGU5NmFiYTc2NjJkNWQ4NzE3YWFiODA5MjQxYzJjMGQxOTp7Il9hdXRoX3VzZXJfaWQiOiIzNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWU0MDcyYjk4YzNkNGU2NmM5ZjQ5ZWU5ZjlmOGEwMTM1MTQ1YTg2YyJ9	2018-06-23 00:34:59.598308+00
cfdibjjti7urfoo1njjnc92k7ep4xpz9	ODU5OGRmZDYyYTBkNzhmYjBiNjJlN2Q5ODEzNmZlMGVkNjhlNzFjZjp7Il9hdXRoX3VzZXJfaWQiOiI0NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjBiOTA0NGM4ZGY3ZmNiMWY4M2IzMDIyYmY3Y2JjMjQ0ZGE3YjQ4OSJ9	2018-06-13 21:47:26.50212+00
99nm4k9nq93jgmgqwr165312w2pv5ziw	NThmMjAwYTlhNjU5OWNhY2I4Y2M4MWUwODYzNjA4MGQ0NzMyYzBmNzp7Il9hdXRoX3VzZXJfaWQiOiI3NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTRmODE4NjU3Y2U0MzRmNzkzMjFhZWY5MTZlNzExZGQ1MDgzNDEwZCJ9	2018-06-21 23:05:08.604814+00
r7ryfcba88qlyfctxsc5cftkts1gxqta	ZTM2YjdkMGQ4ZTRiY2JkNTQwMjE1NjMwNzM3MjE2YWJlMjEyMjAyNDp7Il9hdXRoX3VzZXJfaWQiOiI0MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWI0OGZkYjlmZmEyNWFjOTZhOGJiNjlhMGZmZmRjM2IxYTAyZmE1YiJ9	2018-06-13 21:56:56.076872+00
6j11q1tmcu3i847gqnoz06ng9zyc4428	ZWZiMjEyMjAzZjIzZWM5ODljYzllM2MwODJmNWYzYmJkZjYxY2M4Njp7Il9hdXRoX3VzZXJfaWQiOiI2NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTlhMjY1ZTVkMmU1ZTQwYjdhM2Q4OTIxMzUzNjlkZGRlNjE3MDllMiJ9	2018-06-21 23:58:28.763755+00
17azxjt6gxje95xuodv5u23n3xhdu9o7	YzY5MGYxYmE5NTRmNjIyMDY0YmYyZTgzMDE5ZjRiZjMyN2I5ZWJlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzBmYmYzOTQxZWJlMzhiNzQ4MjBjODNjZjU1NjU3ZDY1M2ExMDJhIn0=	2018-06-15 20:53:28.173652+00
b1xqpvk9erxx7s4ssl2wzlo7sbphjz0h	MTM3NDljYmQ3NDViNzkxZjI5ZjA4MjRiOWY2NGRmNmNmODFiYjZhMzp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDRkMTgyM2U0OTlkOTM0MTliYjdiZDVkNzkxMmU4NGExZTJiMjJiMyJ9	2018-06-14 00:01:46.271543+00
e8urn5916x3sltc1aowrdytol9zfvlm4	ZWFkNThhMDBiN2YxZjRiOGFhZTM3MDY4NTVmNTY2YWM0YmZiODc1MDp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGExN2Y4MTEyZjY5Yjg1Y2MwMWUwNzlmNjg2ZTNlZDg2OTA5ZWFmMyJ9	2018-06-22 02:17:09.733646+00
9seyni8lakl3qsk19v93we3q6p8vgjs7	Y2RlYzBkNDAxZDA1MWI2ZmE0YWI4OTdjMjBmNjg2ZmU2NDg3MWZiYjp7Il9hdXRoX3VzZXJfaWQiOiI3MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDcwZTI3MjNmOTE1OTY3ZTZlZTkxNzUxZTNiNjQ2N2QzYzMzZGI4YSJ9	2018-06-22 08:03:08.766328+00
2qrwou079yxzllvivn3gca9djlx8p334	ODk0YmUyMGNhZjE5MWZlYmIzYzYwMWM0YjUzYWEzOTMwYjJhMDE1Nzp7Il9hdXRoX3VzZXJfaWQiOiI0NSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTI3ZDhlOTcwMzJiZjJmMmMwN2FkM2UzY2UxZWUwMDhhNmQwM2Q2NSJ9	2018-06-14 00:17:38.946806+00
puinptj106zx31fyr4b3spknlgn9zhr6	NzcxZWI1OTg4NmNmMGYzOWRmNDM3NTRlY2IxMGQ4MDlkNzc2ZjM3Yzp7Il9hdXRoX3VzZXJfaWQiOiI0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODI4YmY5NmI3ZjBlNDg2NzVkZDUwY2I0YTdmMDg2OTdkODdhOWFjYiJ9	2018-06-17 01:38:38.343814+00
k79amr4oglgcn2rfcr4lv1trwl0sy1oh	ZWFkNThhMDBiN2YxZjRiOGFhZTM3MDY4NTVmNTY2YWM0YmZiODc1MDp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGExN2Y4MTEyZjY5Yjg1Y2MwMWUwNzlmNjg2ZTNlZDg2OTA5ZWFmMyJ9	2018-06-22 14:54:44.647658+00
7zieu6g6tgusfh2p8npuyvundlorn70e	ZjMwYWJjNzlhYmVkOWEwOWNlNDhjNGFhMWI0OWQ0ZmJhZGYzMjZmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWIwYTE0YWE5OWYyYTExZThkNjlmZDk0NTYyZDEyNjU3YjRiMjcwZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9	2018-01-29 20:55:01.438908+00
pn3lhfwhir0o94t0mumsg8qhaw0vt41s	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-30 05:36:34.380596+00
pxnfxedco3hawocyrdxqkt5fh8hpfw3e	MTM3NDljYmQ3NDViNzkxZjI5ZjA4MjRiOWY2NGRmNmNmODFiYjZhMzp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDRkMTgyM2U0OTlkOTM0MTliYjdiZDVkNzkxMmU4NGExZTJiMjJiMyJ9	2018-06-14 01:15:20.564862+00
fxf1vq3eped1w2jubnynarhneosy2cba	MzhmODMxYTVjMTg1NGFmODgyY2I0NjEwZGU4N2RlZjQxNGU0ZTIzNjp7Il9hdXRoX3VzZXJfaWQiOiIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGI5MWU2ZDliOTU2N2M2Yzc4Njg5NGRiMjE0YmRlMjFmNTc2NzViYiJ9	2018-06-17 03:15:43.702695+00
iupoxglt5mcq9pznmnzqtrpvxaapfd97	MzhhZWQwMGU0MDcyNjc2YjdjY2U1MDkzNWI1NjQ3ZGMwNjBmMGM2Nzp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNGEyMmY3NzNjYmIzNWZlNjMyZDc1NWFmMThmNWQ1ZTU4ZDgzZWIwIn0=	2018-06-22 16:31:51.186079+00
efwyo4byquh9graynhkptx02lcr09eio	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-01-30 15:40:28.983372+00
5fx7b3f4iwyidh986kuz2snv7h0ebd3b	ZDE0MDIyZDJmNDExYjA3ZjY5NGU3MGRkZDE3N2RlZGQwNzczMTVkYzp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDJmZmJjOTYxNTI4MDM3M2M4OTk0N2JjYzQzYjhkNGI0YzZkNDdjZCJ9	2018-06-14 11:59:17.222754+00
f0mq297uvsb477p692exwc8pjacjf4p8	OGYwNWYxMGJjOTJjYjFmZGM3MWI5NThkNzg2OWRhZjY1YTcyY2IzOTp7Il9hdXRoX3VzZXJfaWQiOiI1MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjRjNjFlY2QxNWJkOGI1MjM4YTkzMzE5OTk3ODY2ZDk4YWUxMWNlNSJ9	2018-06-22 23:39:42.485219+00
qqbszpqf6ac795vk6str56v55zi6bons	MDNmZDFjYWE4YmQ4MDBlNjZmMjBiMGJmNDk0NWI0MWQ3YTA4ODQ2ZDp7Il9hdXRoX3VzZXJfaWQiOiI2NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjg0MWM0ZWIyODJiZTAxZDU4YzNiN2VlNThhYjc1NzFjNTg1MWMyOSJ9	2018-06-22 23:54:33.66747+00
sk4p3p3w2g4rfylil8ptlczbskh8sau1	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-31 22:47:49.927466+00
qpfbz1k0efucbpunk99auh727yqa7gdk	YmQ2OGRjMDZhNmQyY2ZlOTdlNWQxNDBiODM0OWQwODZjZDg1OTRiNTp7Il9hdXRoX3VzZXJfaWQiOiI1OSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzc1NDc5MzRiMmNkNDE0ZGE0NzA2NDZmMzg4YzY5MzI2NjlkMDc2MiJ9	2018-06-18 02:01:54.60498+00
3q4uyy87y9t3bixw8xcot7ew5h2of49j	NDJiN2UzYTU1YjI4ZGUxZjk3YWE3MGRmNDM1ODM1MDZkOTNjOTZlNjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmZiMDgxZDYzMDJkZjljOThmYjdjMDZkZmVjZTQyODM2M2JlZjNhOCJ9	2018-06-14 15:15:56.051196+00
sh5qj244wr9990ueu2noy7w9iaajyzx4	YjNkMmYyOTIxZTZlNmEwYWRjN2Y3ZTk1OGQ4ZDk0NGI5MzNiZTUyNzp7Il9hdXRoX3VzZXJfaWQiOiI1NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTk3OWQ5NzBhYTAyYzJiNjJmMDA4OGU2YTk1YTJmOTgwMjc5ZWJjNyJ9	2018-06-18 03:31:27.248624+00
bkqmoze3df4xmk4kex9pxlib4z7wxw7o	YmFjODZkYTNkNzc5NmU5YmRjNDQ5YjkzMDY1MzM0ZTU0YjU5MjU0ZDp7Il9hdXRoX3VzZXJfaWQiOiI1OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTM0MDkxMmUwZjZhZDRkNjVkNWE1YzkxOTcyODQzYTUxMDE5ZGJlZCJ9	2018-06-24 14:33:32.919876+00
aty9s9fznnddhqg2x7cbcw26pr4xovik	MzlkNWU0ZjAxNTE4NGNiZmM4OTIzOGY4ZmUxZDQ3NWJlZmVhNWM2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2UwMTE2NDJhNzdjYzYxNmI4ZDY2ZjdiMTI2NTEzM2E2ZmM2MzNmNyIsIl9hdXRoX3VzZXJfaWQiOiIxMyJ9	2018-02-05 22:12:59.465305+00
2rxmx0yrgybqz9jeypqsf486bb0cgbxz	M2M5YTY2Y2ZjOWYxMDhlYTljNjg3OWRmZWY1MDc3MDM0MGI0YjEzODp7Il9hdXRoX3VzZXJfaWQiOiI0NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNTA1MThmYWY1NjE5YzQxNmU3MGQxM2EzNGEzMjMwMGJlNGJmMzliZSJ9	2018-06-14 16:07:10.566157+00
jiwqu9b3mck5ho6x71bdltq0zoaldctk	YjNkMmYyOTIxZTZlNmEwYWRjN2Y3ZTk1OGQ4ZDk0NGI5MzNiZTUyNzp7Il9hdXRoX3VzZXJfaWQiOiI1NyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTk3OWQ5NzBhYTAyYzJiNjJmMDA4OGU2YTk1YTJmOTgwMjc5ZWJjNyJ9	2018-06-18 03:48:19.29694+00
2n0odbbzoj1xobtil3b5wh1ona5yqsyd	NThmMjAwYTlhNjU5OWNhY2I4Y2M4MWUwODYzNjA4MGQ0NzMyYzBmNzp7Il9hdXRoX3VzZXJfaWQiOiI3NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTRmODE4NjU3Y2U0MzRmNzkzMjFhZWY5MTZlNzExZGQ1MDgzNDEwZCJ9	2018-06-24 20:59:19.24603+00
4h2igfque6z1uc6o7aoz623j3i2znx2x	ODkzMDhlODhhZjMwMTMzZmExNDNhMmUxYzM2YTg1NWE1OWFiOGY2ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjhhM2Q1NjcyMWJhMGFkMWM1MmJjZmEyOGM2YmY3ZmNkNGY2NWY2NSIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-02-06 02:44:28.936245+00
bf7nv02cvjc5dct4es70x4ovp59v0x2g	YmEwYmYxZTBiMDRiMjczN2U1ZWM0MTcwMzI1YTI4ZmE2ZjYyM2RiNDp7Il9hdXRoX3VzZXJfaWQiOiI0NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGQxZThkYmY4MWYyZWFkZDU0NTQ5MjExOTFmNjg4ODc1NjU4ZjY4NCJ9	2018-06-14 17:18:24.871379+00
clygr02vof5pfsdgsj52ae5691007eyn	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-02-09 08:45:03.074579+00
up6z69n1l4tgajqdzgrupeu3fe6w7t04	ZDk0MzFjYWZiZTcwM2U4OGZhNDg4OGVjMTExYjU2NGRmYzNiODkwYjp7Il9hdXRoX3VzZXJfaWQiOiIyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjdjZGNhZDI1NmI3ZTZmZDgyMTljNDgxY2YzMzM5NjRmYmI1NGM2ZiJ9	2018-06-14 17:26:22.099312+00
qj8xh2y95vs7pxz1a6ln785mgukwamc1	YWM1MzUyYWViMWFmNmFlOGY0NTlhNTNjZTIyNjI2MzFiMGYxMDFmMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODcwZmJmMzk0MWViZTM4Yjc0ODIwYzgzY2Y1NTY1N2Q2NTNhMTAyYSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-02-09 08:45:56.537067+00
viq80k9nxcqzeyj9x0vndl0o9xvialvn	MGNjMmNmOGU5NmFiYTc2NjJkNWQ4NzE3YWFiODA5MjQxYzJjMGQxOTp7Il9hdXRoX3VzZXJfaWQiOiIzNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWU0MDcyYjk4YzNkNGU2NmM5ZjQ5ZWU5ZjlmOGEwMTM1MTQ1YTg2YyJ9	2018-06-25 15:16:05.53215+00
\.


--
-- Data for Name: tarot_card; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.tarot_card (id, number, name, description) FROM stdin;
2	01	El Mago	Comienzo, prestidigitador, estafador, jugador, hay algo oculto bajo la mesa, nueva empresa, nuevos estudios, renovación profesional, principio de una relación, chico o chica masculinizada, principiante, astucia, habilidad, arte de convencer, talentos múltiples, se dispone de todo lo necesario para actuar, necesidad de ayuda, de guía, “Querer, osar,poder, callar”, elección que hay que hacer, vacilación, multiplicidad de los potenciales, Animus del consultante, hombre o mujer, comienzo de la búsqueda de la sabiduría, iniciado, mago, espiritualización de la materia.
3	02	La papisa	Acumulación, preparación, estudio, virginidad, escritura de un libro, contabilidad espera, constancia, retiro, mujer fría, perdón, actriz aprendiendo su papel, monja, madre severa, obstinación, peso de la religión, asilamiento, frigidez, persona de gran calidad moral, educación estricta, gestación, necesidad de calor, ideal de pureza, soledad, silencio, meditación, sabiduría en femenino, figura carismática femenina, la Virgen María, lectura de textos sagrados.
4	03	La emperatriz	Mujer bella, fertilidad, ama, madre cálida, seductora, creatividad, adolescencia, fecundidad, encanto, coquetería, mujer de negocios, prostituta, amante, artista, producción, belleza, abundancia, acción creativa no razonada, que no sabe a donde va, ebullición, la pulsión vital como motor de crecimiento.
5	04	El emperador	Hombre de poder, capacidad de pacificar, de reinar, de proteger, estabilidad, equilibrio económico, dinero, administración, éxito en los negocios, aliado financiero, autoridad, ejercicio de la ley, paz, esposo, hombre franco, seguridad, rectitud, espíritu racional, potencia, hogar estable, casa, padre poderoso o dominante, protector, cuestiones relacionadas con la potencia sexual, masculinidad, patriarcado, tiranía, dictador, abuso de poder, arraigo en la materia, respeto de las leyes del universo, equilibrio de las energías, Dios Padre
6	05	El papa	Maestro, profesor, hombre casado, hombre espiritual, boda, unión, sacerdote, gurú, sincero o falso, tartufo, dogma religioso, Unión entre cielo y tierra, mostrar la vía, vínculo, dominio de uno mismo amplitud de miras emergencia de un nuevo ideal, todos los medios de comunicación, intermediario, deseo de comunicar nueva comunicación, revelación de los secretos, el padre frente a sus hijos, guía espiritual, bendición, cuestionamiento sobre la fe y el dogma.
7	06	El enamorado	Vida social – Alegría  Gustarle a uno lo que hace – Hacer lo que a uno le gusta – Nueva unión  - elección que hay que hacer – Placer  Belleza – Amistad – Triagulo amoroso – Enamorarse – Conflicto emocionale  separación – Disputa -  terreno incestuoso – Hermanos – Ideal y realidad – Pirmeros pasos en la alegría de vivir – Amor consciente – La Vía de la Belleza
8	07	El carro	Victoria, acción sobre el mundo, empresa llevada a buen fin, viaje, dinamismo, amante, guerrero, mensajero, conquistador, príncipe, enano, saqueador, acción intensa, éxito mediático, pantalla de televisión, de cine o de ordenador, síntesis, tener en cuenta los pros y los contras, armonía animus / anima, conducir sus energías, el espíritu en la materia, consciencia inmortal
9	08	La justicia	Equilibrio, estabilidad, hacer frente, plenitud, perfección femenina, acoger, mujer encinta, maternidad, inflexibilidad, implacabilidad, juzgar, claridad, prohibir, autorizar, dar(se) lo que se merece, pensamiento límpido, procesamiento, La Ley, deseo de perfección, perfeccionismo, espíritu crítico, madre normativa o castradora, trampa, exactitud, leyes cósmicas, perfección, armonía, momento presente.
10	09	El ermitaño	Crisis positiva, guía, soledad, hombre mayor, vejez, prudencia, retiro, terapeuta, maestro masculino, peregrinación, castidad, alcoholismo, invierno, duda y superación, alumbrar el pasado, ir hacia el futuro sin saber adónde se va, andar retrocediendo, terapia, padre ausente o frío, abuelo, humildad, Saturno, visión clara del mundo, sabiduría, amor desinteresado, abnegación, altruismo, maestro secreto.
11	10	La rueda de la fortuna	Fin de un ciclo, principio de un ciclo, necesidad de una ayuda exterior nueva partida, cambio de fortuna, circunstancias ajenas a la voluntad del consultante, ocasión que no hay que dejar pasar, ciclo hornonal, enigma emocional por resolver, bloqueo, parada, callejón sin salida, rueda del karma, reencarnaciones sucesivas, Leyes de la naturaleza, providencia, ciclo completo, compleción, rodaje de una película, ganancia de dinero.
12	11	La fuerza	Potencia creativa – Valentía – Nobleza de corazón – Nueva partida – Inicio de una actividad – Aporte de nueva energía – Energía instintiva – Animalidad – Fuerza – Ira – Heroísmo – Coraje – Autodisciplina – Relación entre la mente y el instinto – Apertura o represión – Llamada de la sexualidad – Inhibición sexual – Represión . Dificultad de expresión – Apertura – Orgasmo – Tantra.
13	12	El colgado	Parada – Espera – Inmovilidad – No ha llegado aún el momento de actuar – Ocultar algo – Autocastigo – Feto en gestación -  Secreto – Inversión de las perspectivas – Ver desde otro punto de vista – No elegir – Reposo – Enfermedad – Embarazo – Condiciones de la gestación del consultante -  Vínculo al árbol genealógico – Plegaria – Sacrificio – Don de uno mismo – Meditación Profunda – No hacer – Fuerzas interiores recibidas a través de la plegaria.
14	13	Arcano sin nombre	Transformación profunda -  revolución – corte – Eliminar lo que nos impide avanzar – Fin de una ilusión – Ruptura saludable – Revolucionario – Ira – Agresividad – Cosecha – Labor de ruptura relativa a una persona o a una situación – Odio – Violencia -  Limpieza – Purificación radical – Esencia del cambio – Trabajo del inconsciente – El rostro destructor de la divinidad . La muerte como máscara de Dios  – Transmutación – Erradicación de lo antiguo para dejar sitio a lo nuevo – Trabajo relacionado con el esqueleto humano  - Movimiento esencial -  Rayos X . Psicoanálisis, persona que acompaña el cambio.
15	14	La templanza	Curación – Salud – Protección – Equilibrio dinámico – Cambios – Reconciliación – Circulación de los fluidos (sangre, agua…) – Flujo de las energías – Paso de una frontera – Viajes – Sueños premonitorios – Armonía – Humor equilibrado y apacible – Mezclar – Ponderar – Atenuar las pasiones – Equilibrio de las fuerzas vitales – Angelismo (el ángel no tiene sexo) – Excesiva tendencia a la moderación  - Avaricia – Comunicación consigo mismo – Mensajero de la gracia – Curación espiritual – Evoca a un difunto (escultura funeraria ) – Transmigración de las almas,  reencarnación – Serpiente emplumada.
16	15	El diablo	Pasión – Atadura – Dependencia – Carácter posesivo – Adoración – Gran creatividad – Lo prohibido – Tentación – Bestialidad – Drogas – Contrato prometedor que hay que estudiar detenidamente  – Entrada de dinero – Potencias ocultas del inconsciente humano (negativas o positivas) – Fermentación – Prostitución – Crueldad – Trabajo de las profundidades – Psiquiatría – Lado oscuro del ser – Sexualidad – Lucifer, ángel caído portador de luz – Soberbia – Posesión – Obsesión – Magia negra – Negarse a envejecer – Gran vigor sexual – Fantasías – Tesoro oculto – Energía oculta en el psiquismo -  Superación – Tentación.
17	16	La torre	loremp ipsu\tlorem ipsu
18	17	La estrella	Éxito – Suerte – verdad – generosidad – acción altruista – poner frente a frente dos acciones o dos relaciones – encontrar su sitio – vedette – mujer fecunda – amamantar – mujer encinta – herida en la rodilla – amante ideal – don o despilfarro, según la dirección hacia la cual La Estrella vacíe sus jarras – nostalgia (si mira hacia el pasado) – purificación del mundo – ecología – fuente – irrigación – recepción de la energía cósmica – sacralización de un lugar – armonía con las fuerzas de la naturaleza – paraíso – acuario – chamán – bruja hermosa.
19	18	La luna	Intuición – noche – sueño – ensoñaciones – superstición – poesía – adivinación – imaginación – inconsciente profundo – sensualidad – verdad oculta (por descubrir) – locura – soledad – terror nocturno – gestación – petición sin límites – “vampiro” de energía – niño en busca de un amor materno – amor que une – depresión – secreto – travesía del mar – océano – receptividad – vida oscura de la materia – ideal que se quiere alcanzar – feminidad – arquetipo maternal cósmico.
20	19	El sol	Amor recíproco – fraternidad – ayuda mutua – unión feliz – nueva vida – asociación – éxito, cosecha abundante – felicidad – luz – verano – irradiación – inteligencia – brío – riqueza – sequía por exceso de calor – Niños o infancia – gemelidad – rivalidad – Arquetipo paterno cósmico – Padre ideal – Padre ausente  – cortar con el pasado para construir más lejos – construcción – solidaridad.
21	20	El juicio	Llamada – deseo irresistible – despertar de la sexualidad – toma de consciencia – anuncio – buena nueva – vocación – triunfo – renombre – proyecto de futuro – dar vida – nacimiento de un hijo – curación – música – apertura – eclosión – obra de una pareja – célula padre / madre / hijo – amor dependiente de los padres – condiciones del nacimiento del consultante – negarse a actuar como adulto – emergencia de lo que está oculto  - la gracia – despertar de la cosciencia – diablo sublimado – impulso hacia la luz.
22	21	El mundo	Renombre – recorrer e lmundo – realización de los potenciales – éxito – perfecto acuerdo – reunión – Mujer ideal – plenitud – comienzo difícil – vientre de una mujer encinta – sexo femenino – orgasmo – realización suprema – final feliz – parto – nacimiento - ¿cómo nací? – encierro – sentimiento de fracaso – egocentrismo – realización del andrógino espiritual – huevo cósmico – realización de los cuatro centros . perfección finita – Universo llegado a su límite – expansión máxima.
\.


--
-- Name: tarot_card_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.tarot_card_id_seq', 22, true);


--
-- Data for Name: tarot_question; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.tarot_question (id, date_create, card_one, card_three, card_two, response_id, week, name, question, status, email) FROM stdin;
5	2018-05-13	01	13	05	5	19	Jorge	¿Por que me va mal en las relaciones?	OP	charlixd.cm@gmail.com
6	2018-05-13	05	20	11	2	19	Daniela	No me siento agusto con lo que tengo. ¿Por qué no puedo estar bien?	OP	prueba@gmail.com
7	2018-05-13	15	01	18	2	19	Paola	¿Por que tengo tanta envidia?	OP	prueba@gmail.com
8	2018-05-13	05	02	16	2	19	Marisol	¿Por qué termino sin amigos?	OP	prueba@gmail.com
11	2018-05-23	16	21	10	\N	21	Carlos	¿Por qué me va bien ? 	OP	charlixd.cm@gmail.com
\.


--
-- Name: tarot_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.tarot_question_id_seq', 11, true);


--
-- Data for Name: tarot_response; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.tarot_response (id, video, date) FROM stdin;
1	https://www.youtube.com/watch?v=jilO7LhbQsQ&t=684s	2018-04-04 21:34:28.248758+00
2		2018-04-06 14:06:48.059901+00
3		2018-04-06 14:07:04.954184+00
4		2018-04-06 14:07:10.053661+00
5		2018-04-06 14:07:12.735393+00
\.


--
-- Name: tarot_response_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.tarot_response_id_seq', 5, true);


--
-- Data for Name: tarot_week; Type: TABLE DATA; Schema: public; Owner: digimundo
--

COPY public.tarot_week (id, number_week, year) FROM stdin;
1	14	2018
\.


--
-- Name: tarot_week_id_seq; Type: SEQUENCE SET; Schema: public; Owner: digimundo
--

SELECT pg_catalog.setval('public.tarot_week_id_seq', 1, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_category_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_category
    ADD CONSTRAINT catalog_category_name_key UNIQUE (name);


--
-- Name: catalog_category_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_category
    ADD CONSTRAINT catalog_category_pkey PRIMARY KEY (id);


--
-- Name: catalog_docs_link_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_docs
    ADD CONSTRAINT catalog_docs_link_key UNIQUE (link);


--
-- Name: catalog_docs_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_docs
    ADD CONSTRAINT catalog_docs_name_key UNIQUE (name);


--
-- Name: catalog_docs_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_docs
    ADD CONSTRAINT catalog_docs_pkey PRIMARY KEY (id);


--
-- Name: catalog_subcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_subcategory
    ADD CONSTRAINT catalog_subcategory_name_key UNIQUE (name);


--
-- Name: catalog_subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_subcategory
    ADD CONSTRAINT catalog_subcategory_pkey PRIMARY KEY (id);


--
-- Name: catalog_subscriber_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_subscriber
    ADD CONSTRAINT catalog_subscriber_pkey PRIMARY KEY (id);


--
-- Name: catalog_subscriber_user_id_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_subscriber
    ADD CONSTRAINT catalog_subscriber_user_id_key UNIQUE (user_id);


--
-- Name: catalog_videos_link_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_videos
    ADD CONSTRAINT catalog_videos_link_key UNIQUE (link);


--
-- Name: catalog_videos_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_videos
    ADD CONSTRAINT catalog_videos_name_key UNIQUE (name);


--
-- Name: catalog_videos_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_videos
    ADD CONSTRAINT catalog_videos_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: tarot_card_name_key; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_card
    ADD CONSTRAINT tarot_card_name_key UNIQUE (name);


--
-- Name: tarot_card_number_f1dfbf2c_uniq; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_card
    ADD CONSTRAINT tarot_card_number_f1dfbf2c_uniq UNIQUE (number);


--
-- Name: tarot_card_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_card
    ADD CONSTRAINT tarot_card_pkey PRIMARY KEY (id);


--
-- Name: tarot_question_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_question
    ADD CONSTRAINT tarot_question_pkey PRIMARY KEY (id);


--
-- Name: tarot_response_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_response
    ADD CONSTRAINT tarot_response_pkey PRIMARY KEY (id);


--
-- Name: tarot_week_pkey; Type: CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_week
    ADD CONSTRAINT tarot_week_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_category_name_fdc3466c_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_category_name_fdc3466c_like ON public.catalog_category USING btree (name varchar_pattern_ops);


--
-- Name: catalog_docs_category_id_6c17bcec; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_category_id_6c17bcec ON public.catalog_docs USING btree (category_id);


--
-- Name: catalog_docs_link_3404100a_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_link_3404100a_like ON public.catalog_docs USING btree (link varchar_pattern_ops);


--
-- Name: catalog_docs_name_7251db9f_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_name_7251db9f_like ON public.catalog_docs USING btree (name varchar_pattern_ops);


--
-- Name: catalog_docs_subcategory_id_afc29102; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_docs_subcategory_id_afc29102 ON public.catalog_docs USING btree (subcategory_id);


--
-- Name: catalog_subcategory_name_dabb2fb4_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_subcategory_name_dabb2fb4_like ON public.catalog_subcategory USING btree (name varchar_pattern_ops);


--
-- Name: catalog_videos_category_id_6689732a; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_category_id_6689732a ON public.catalog_videos USING btree (category_id);


--
-- Name: catalog_videos_link_014f3ef2_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_link_014f3ef2_like ON public.catalog_videos USING btree (link varchar_pattern_ops);


--
-- Name: catalog_videos_name_013fc0fd_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_name_013fc0fd_like ON public.catalog_videos USING btree (name varchar_pattern_ops);


--
-- Name: catalog_videos_subcategory_id_eeb3078b; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX catalog_videos_subcategory_id_eeb3078b ON public.catalog_videos USING btree (subcategory_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: tarot_card_name_1d6e7379_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX tarot_card_name_1d6e7379_like ON public.tarot_card USING btree (name varchar_pattern_ops);


--
-- Name: tarot_card_number_f1dfbf2c_like; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX tarot_card_number_f1dfbf2c_like ON public.tarot_card USING btree (number varchar_pattern_ops);


--
-- Name: tarot_question_response_id_0b9b377c; Type: INDEX; Schema: public; Owner: digimundo
--

CREATE INDEX tarot_question_response_id_0b9b377c ON public.tarot_question USING btree (response_id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_docs_category_id_6c17bcec_fk_catalog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_docs
    ADD CONSTRAINT catalog_docs_category_id_6c17bcec_fk_catalog_category_id FOREIGN KEY (category_id) REFERENCES public.catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_docs_subcategory_id_afc29102_fk_catalog_subcategory_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_docs
    ADD CONSTRAINT catalog_docs_subcategory_id_afc29102_fk_catalog_subcategory_id FOREIGN KEY (subcategory_id) REFERENCES public.catalog_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_subscriber_user_id_6a58a3b9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_subscriber
    ADD CONSTRAINT catalog_subscriber_user_id_6a58a3b9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_videos_category_id_6689732a_fk_catalog_category_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_videos
    ADD CONSTRAINT catalog_videos_category_id_6689732a_fk_catalog_category_id FOREIGN KEY (category_id) REFERENCES public.catalog_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_videos_subcategory_id_eeb3078b_fk_catalog_s; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.catalog_videos
    ADD CONSTRAINT catalog_videos_subcategory_id_eeb3078b_fk_catalog_s FOREIGN KEY (subcategory_id) REFERENCES public.catalog_subcategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tarot_question_response_id_0b9b377c_fk_tarot_response_id; Type: FK CONSTRAINT; Schema: public; Owner: digimundo
--

ALTER TABLE ONLY public.tarot_question
    ADD CONSTRAINT tarot_question_response_id_0b9b377c_fk_tarot_response_id FOREIGN KEY (response_id) REFERENCES public.tarot_response(id) DEFERRABLE INITIALLY DEFERRED;


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

