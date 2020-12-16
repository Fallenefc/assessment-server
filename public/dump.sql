--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 13.0 (Ubuntu 13.0-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    column_id bigint NOT NULL
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cards_id_seq OWNER TO postgres;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.cards.id;


--
-- Name: columns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.columns (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    title character varying(255) NOT NULL
);


ALTER TABLE public.columns OWNER TO postgres;

--
-- Name: columns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.columns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.columns_id_seq OWNER TO postgres;

--
-- Name: columns_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.columns_id_seq OWNED BY public.columns.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- Name: columns id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.columns ALTER COLUMN id SET DEFAULT nextval('public.columns_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards (id, created_at, updated_at, title, description, column_id) FROM stdin;
47	2020-12-16 18:17:38	2020-12-16 18:21:19	aefeafafea	New Card Description	25
65	2020-12-16 18:32:11	2020-12-16 21:04:26	New Card123	New Card Description	37
70	2020-12-16 18:52:11	2020-12-16 18:52:11	New Card	New Card Description	42
67	2020-12-16 18:32:13	2020-12-16 21:04:27	New Card	New Card Description	7
66	2020-12-16 18:32:12	2020-12-16 21:04:28	New Card	New Card Description	42
46	2020-12-16 18:17:37	2020-12-16 21:04:29	New Card	New Card Description	42
82	2020-12-16 20:47:20	2020-12-16 21:07:19	New Card	New Card Description	7
53	2020-12-16 18:19:13	2020-12-16 21:07:42	New Card	New Card Description hahahahahaha	7
81	2020-12-16 20:47:06	2020-12-16 21:12:10	New Card123	New Card Description123	38
86	2020-12-16 21:13:26	2020-12-16 21:13:26	New Card	New Card Description	7
87	2020-12-16 21:21:40	2020-12-16 21:21:40	New Card	New Card Description	42
88	2020-12-16 21:21:41	2020-12-16 21:21:41	New Card	New Card Description	42
89	2020-12-16 21:21:41	2020-12-16 21:21:41	New Card	New Card Description	42
90	2020-12-16 21:25:21	2020-12-16 21:25:21	New Card	New Card Description	7
91	2020-12-16 21:25:21	2020-12-16 21:25:21	New Card	New Card Description	7
92	2020-12-16 21:25:21	2020-12-16 21:25:21	New Card	New Card Description	7
54	2020-12-16 18:19:14	2020-12-16 20:23:21	New Card	New Card Description	7
93	2020-12-16 21:25:21	2020-12-16 21:25:21	New Card	New Card Description	7
57	2020-12-16 18:19:15	2020-12-16 20:24:43	New Card	New Card Description	7
50	2020-12-16 18:17:39	2020-12-16 21:26:56	why	test	7
77	2020-12-16 20:25:13	2020-12-16 20:25:54	New Card	New Card Description	42
69	2020-12-16 18:52:11	2020-12-16 20:25:55	New Card	New Card Description	46
63	2020-12-16 18:32:10	2020-12-16 20:26:11	New Card	New Card Description	46
49	2020-12-16 18:17:38	2020-12-16 20:27:24	whyyyyyyyyY	New Card Description	7
76	2020-12-16 20:25:12	2020-12-16 20:28:00	New Card34343	New Card Description	42
79	2020-12-16 20:43:33	2020-12-16 20:43:33	New Card	New Card Description	25
48	2020-12-16 18:17:38	2020-12-16 18:17:38	New Card	New Card Description	25
80	2020-12-16 20:43:34	2020-12-16 20:43:34	New Card	New Card Description	25
58	2020-12-16 18:19:16	2020-12-16 20:45:58	New Card	New Card Description	7
52	2020-12-16 18:19:12	2020-12-16 20:46:00	Nessafefafea	New Card Description	7
74	2020-12-16 19:58:01	2020-12-16 20:46:06	dog	test	38
56	2020-12-16 18:19:15	2020-12-16 20:46:07	New Card	New Card Description	38
55	2020-12-16 18:19:14	2020-12-16 20:46:08	New Card	New Card Description	38
60	2020-12-16 18:32:08	2020-12-16 20:46:39	New Card	New Card Description	37
61	2020-12-16 18:32:09	2020-12-16 20:46:40	New Card	New Card Description	37
62	2020-12-16 18:32:10	2020-12-16 20:46:41	New Cardaaa	New Card Description	37
71	2020-12-16 18:52:12	2020-12-16 20:47:22	New Card	New Card Description	38
51	2020-12-16 18:19:12	2020-12-16 20:47:33	New Cardaefafeaafeafa	New Card Description	38
83	2020-12-16 20:58:06	2020-12-16 20:58:06	New Card	New Card Description	25
84	2020-12-16 20:58:07	2020-12-16 20:58:07	New Card	New Card Description	25
85	2020-12-16 20:58:07	2020-12-16 20:58:07	New Card	New Card Description	25
\.


--
-- Data for Name: columns; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.columns (id, created_at, updated_at, title) FROM stdin;
25	2020-12-16 15:45:14	2020-12-16 16:02:48	test
37	2020-12-16 17:01:03	2020-12-16 17:01:03	New Column
7	2020-12-16 14:45:16	2020-12-16 17:48:10	hey
38	2020-12-16 18:19:09	2020-12-16 18:19:09	New Column
42	2020-12-16 18:52:09	2020-12-16 18:52:09	New Column
46	2020-12-16 20:25:11	2020-12-16 20:25:11	New Column
47	2020-12-16 21:26:23	2020-12-16 21:26:23	New Column
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2020_12_15_193011_create_columns_table	1
2	2020_12_15_234101_add_info_to_table	1
\.


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cards_id_seq', 93, true);


--
-- Name: columns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.columns_id_seq', 47, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 2, true);


--
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: columns columns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT columns_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: cards cards_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_column_id_foreign FOREIGN KEY (column_id) REFERENCES public.columns(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

