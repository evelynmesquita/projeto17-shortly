--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

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
-- Name: urls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.urls (
    id integer NOT NULL,
    originalurl text NOT NULL,
    shortenedurl text NOT NULL,
    visitcount integer DEFAULT 0,
    user_id integer,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: urls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.urls VALUES (1, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', '0ri2KbhNtlq_i3p0bRp40', 0, 1, '2023-05-21 18:36:30.333755');
INSERT INTO public.urls VALUES (3, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'YVU1ymg5vX4Gd7CTAb4oJ', 0, 1, '2023-05-21 18:36:32.197096');
INSERT INTO public.urls VALUES (5, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'D4_kiF-osEAnpo1nIQSts', 0, 1, '2023-05-21 18:38:27.366407');
INSERT INTO public.urls VALUES (6, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'tvfsFxutddNiAfLy3uxYf', 0, 2, '2023-05-21 18:53:53.647196');
INSERT INTO public.urls VALUES (7, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'QnuEtELbsaYplgHipzY-V', 0, 2, '2023-05-21 18:53:54.82016');
INSERT INTO public.urls VALUES (8, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'g0I_Vinkz7UwOt6R1lgt5', 3, 2, '2023-05-21 18:53:55.602045');
INSERT INTO public.urls VALUES (2, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'BTCKWWsTw5zbwihWtTIy8', 6, 1, '2023-05-21 18:36:31.572488');
INSERT INTO public.urls VALUES (9, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'ox6UKWTqCMOSu1c0Ld4vM', 0, 2, '2023-05-21 19:00:26.942674');
INSERT INTO public.urls VALUES (10, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'W8FjToDkiPFb58P1TGCSV', 0, 2, '2023-05-21 19:00:53.090458');
INSERT INTO public.urls VALUES (11, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'Y1XBmtIbp4EivAnjJyJiJ', 0, 2, '2023-05-21 19:01:11.462544');
INSERT INTO public.urls VALUES (12, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'nT1C1MNhAt6vDsJKs8Bws', 0, NULL, '2023-05-21 19:02:28.20868');
INSERT INTO public.urls VALUES (13, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', '1vWUtJ5icCS4qnilUFr6F', 0, NULL, '2023-05-21 19:02:59.710486');
INSERT INTO public.urls VALUES (14, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'XUkBHlsDV_TUgLSMUm-OX', 0, NULL, '2023-05-21 19:03:09.718242');
INSERT INTO public.urls VALUES (15, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'O2xlER2KX7e1EzP20bx4y', 0, NULL, '2023-05-21 19:04:33.009435');
INSERT INTO public.urls VALUES (16, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'c-74XFK5xYgCGaCz9_qlt', 0, NULL, '2023-05-21 19:04:53.98097');
INSERT INTO public.urls VALUES (17, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'vUJp2Mej2zwJSH5yoffv4', 0, NULL, '2023-05-21 19:05:11.854393');
INSERT INTO public.urls VALUES (18, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'om--lg0E2KWsaaj3_pCeT', 0, NULL, '2023-05-21 19:05:32.609948');
INSERT INTO public.urls VALUES (19, 'https://pensamentos.org/wp-content/uploads/2022/12/memes-engracados.png', 'UnC7lQ4pZPskgZ1H560ky', 0, NULL, '2023-05-21 19:06:06.092052');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Danni', 'danni@driven.com.br', '$2b$10$.HY/0PDX5.Ll086NsxEgE.xhYRU8kR3Xs.lUym1YfQ9jpt.H2MuPG', '2023-05-22 14:30:58.379023');
INSERT INTO public.users VALUES (2, 'Dannii', 'danni2@driven.com.br', '$2b$10$3nGyXEj0eflUSRlzgzvJguDVfHmxlN84SGKw5pqrcI3bUv5IgEpfO', '2023-05-22 14:30:58.379023');


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.urls_id_seq', 19, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: urls urls_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

