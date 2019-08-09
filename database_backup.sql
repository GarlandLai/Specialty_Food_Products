--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "GLai";

--
-- Name: products; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country_of_origin character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO "GLai";

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO "GLai";

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    name character varying,
    content_body character varying,
    rating integer,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reviews OWNER TO "GLai";

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO "GLai";

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "GLai";

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-09 15:58:26.268877	2019-08-09 15:58:26.268877
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.products (id, name, cost, country_of_origin, created_at, updated_at) FROM stdin;
262	Goat Cheese	17	MYT	2019-08-09 23:37:09.335918	2019-08-09 23:37:09.335918
263	Tapioca Flour	17	PHL	2019-08-09 23:37:09.346702	2019-08-09 23:37:09.346702
264	Oatmeal	13	HMD	2019-08-09 23:37:09.356509	2019-08-09 23:37:09.356509
265	Morwong	5	COK	2019-08-09 23:37:09.362463	2019-08-09 23:37:09.362463
266	Bocconcini	17	MMR	2019-08-09 23:37:09.368558	2019-08-09 23:37:09.368558
267	Chicken Stock	12	WLF	2019-08-09 23:37:09.374586	2019-08-09 23:37:09.374586
268	Slivered Almonds	19	GNQ	2019-08-09 23:37:09.380645	2019-08-09 23:37:09.380645
269	Lavender Flowers	16	ISR	2019-08-09 23:37:09.387044	2019-08-09 23:37:09.387044
270	Soy	7	BFA	2019-08-09 23:37:09.393186	2019-08-09 23:37:09.393186
271	Lotus Root	16	ISR	2019-08-09 23:37:09.399261	2019-08-09 23:37:09.399261
272	Tamari	20	VGB	2019-08-09 23:37:09.406028	2019-08-09 23:37:09.406028
273	Camembert	11	KNA	2019-08-09 23:37:09.412075	2019-08-09 23:37:09.412075
274	Nasturtium	11	AND	2019-08-09 23:37:09.418318	2019-08-09 23:37:09.418318
275	Achacha	19	NIC	2019-08-09 23:37:09.424625	2019-08-09 23:37:09.424625
276	Green Beans	19	ARM	2019-08-09 23:37:09.43056	2019-08-09 23:37:09.43056
277	Melon	2	TZA	2019-08-09 23:37:09.436612	2019-08-09 23:37:09.436612
278	Corella Pear	15	PLW	2019-08-09 23:37:09.442517	2019-08-09 23:37:09.442517
279	Raspberry	3	SJM	2019-08-09 23:37:09.448554	2019-08-09 23:37:09.448554
280	Chicken	12	MAC	2019-08-09 23:37:09.455767	2019-08-09 23:37:09.455767
281	Green Beans	13	CHN	2019-08-09 23:37:09.461826	2019-08-09 23:37:09.461826
282	Fennel Seeds	13	KOR	2019-08-09 23:37:09.467817	2019-08-09 23:37:09.467817
283	Bulghur	19	TTO	2019-08-09 23:37:09.473944	2019-08-09 23:37:09.473944
284	Nutmeg	6	TGO	2019-08-09 23:37:09.479824	2019-08-09 23:37:09.479824
285	Quinoa	10	LIE	2019-08-09 23:37:09.485867	2019-08-09 23:37:09.485867
286	Peppermint	2	SRB	2019-08-09 23:37:09.492007	2019-08-09 23:37:09.492007
287	Figs	8	GRD	2019-08-09 23:37:09.497888	2019-08-09 23:37:09.497888
288	Milk Chocolate	1	USA	2019-08-09 23:37:09.503802	2019-08-09 23:37:09.503802
289	Squid	2	SMR	2019-08-09 23:37:09.5101	2019-08-09 23:37:09.5101
290	Parsnip	10	RUS	2019-08-09 23:37:09.516437	2019-08-09 23:37:09.516437
291	Wakame	13	JAM	2019-08-09 23:37:09.523202	2019-08-09 23:37:09.523202
292	Oranges	8	MDA	2019-08-09 23:37:09.529141	2019-08-09 23:37:09.529141
293	Cottage Cheese	9	MNG	2019-08-09 23:37:09.535198	2019-08-09 23:37:09.535198
294	Baking Soda	11	PSE	2019-08-09 23:37:09.54145	2019-08-09 23:37:09.54145
295	Molasses	9	SVN	2019-08-09 23:37:09.54766	2019-08-09 23:37:09.54766
296	Okra	15	BLZ	2019-08-09 23:37:09.553672	2019-08-09 23:37:09.553672
297	Yellow Papaw	13	LCA	2019-08-09 23:37:09.560283	2019-08-09 23:37:09.560283
298	Wasabi	17	PCN	2019-08-09 23:37:09.566271	2019-08-09 23:37:09.566271
299	Kangaroo	2	FRA	2019-08-09 23:37:09.572179	2019-08-09 23:37:09.572179
300	Swiss Chard	19	PNG	2019-08-09 23:37:09.578447	2019-08-09 23:37:09.578447
301	Saffron	13	HMD	2019-08-09 23:37:09.587064	2019-08-09 23:37:09.587064
302	Banana	5	GTM	2019-08-09 23:37:09.593545	2019-08-09 23:37:09.593545
303	Dried Apricots	5	CRI	2019-08-09 23:37:09.599481	2019-08-09 23:37:09.599481
304	Lamb	16	GUY	2019-08-09 23:37:09.605657	2019-08-09 23:37:09.605657
305	Broccolini	1	DEU	2019-08-09 23:37:09.611589	2019-08-09 23:37:09.611589
306	Soy Flour	15	GUF	2019-08-09 23:37:09.617493	2019-08-09 23:37:09.617493
307	Quinoa	10	CIV	2019-08-09 23:37:09.623536	2019-08-09 23:37:09.623536
308	Marigold	8	WSM	2019-08-09 23:37:09.629823	2019-08-09 23:37:09.629823
309	Green Pepper	15	SUR	2019-08-09 23:37:09.635779	2019-08-09 23:37:09.635779
310	Incaberries	7	TLS	2019-08-09 23:37:09.642433	2019-08-09 23:37:09.642433
311	Annatto Seed	17	PHL	2019-08-09 23:37:09.651044	2019-08-09 23:37:09.651044
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.reviews (id, name, content_body, rating, product_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.schema_migrations (version) FROM stdin;
20190809154605
20190809155857
20190809161736
20190809162230
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.products_id_seq', 311, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.reviews_id_seq', 17, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

