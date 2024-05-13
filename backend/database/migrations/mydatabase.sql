--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer
);


ALTER TABLE public.files_folder_links OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: peliculas; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.peliculas (
    id integer NOT NULL,
    titulo character varying(255),
    duracion integer,
    genero text,
    descripcion text,
    puntuacion numeric(10,2),
    director character varying(255),
    actores text,
    estreno date,
    caratula text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.peliculas OWNER TO strapi;

--
-- Name: peliculas_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.peliculas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.peliculas_id_seq OWNER TO strapi;

--
-- Name: peliculas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.peliculas_id_seq OWNED BY public.peliculas.id;


--
-- Name: resenias; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.resenias (
    id integer NOT NULL,
    texto text,
    fecha date,
    puntuacion numeric(10,2),
    emisor character varying(255),
    id_emisor bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.resenias OWNER TO strapi;

--
-- Name: resenias_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.resenias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resenias_id_seq OWNER TO strapi;

--
-- Name: resenias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.resenias_id_seq OWNED BY public.resenias.id;


--
-- Name: resenias_pelicula_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.resenias_pelicula_links (
    id integer NOT NULL,
    resenia_id integer,
    pelicula_id integer
);


ALTER TABLE public.resenias_pelicula_links OWNER TO strapi;

--
-- Name: resenias_pelicula_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.resenias_pelicula_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resenias_pelicula_links_id_seq OWNER TO strapi;

--
-- Name: resenias_pelicula_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.resenias_pelicula_links_id_seq OWNED BY public.resenias_pelicula_links.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer
);


ALTER TABLE public.upload_folders_parent_links OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: peliculas id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.peliculas ALTER COLUMN id SET DEFAULT nextval('public.peliculas_id_seq'::regclass);


--
-- Name: resenias id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias ALTER COLUMN id SET DEFAULT nextval('public.resenias_id_seq'::regclass);


--
-- Name: resenias_pelicula_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias_pelicula_links ALTER COLUMN id SET DEFAULT nextval('public.resenias_pelicula_links_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	[]	2024-05-12 23:31:25.644	2024-05-12 23:31:25.644	\N	\N
2	plugin::content-manager.explorer.create	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	[]	2024-05-12 23:31:25.648	2024-05-12 23:31:25.648	\N	\N
3	plugin::content-manager.explorer.read	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	[]	2024-05-12 23:31:25.65	2024-05-12 23:31:25.65	\N	\N
4	plugin::content-manager.explorer.read	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	[]	2024-05-12 23:31:25.652	2024-05-12 23:31:25.652	\N	\N
5	plugin::content-manager.explorer.update	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	[]	2024-05-12 23:31:25.654	2024-05-12 23:31:25.654	\N	\N
6	plugin::content-manager.explorer.update	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	[]	2024-05-12 23:31:25.656	2024-05-12 23:31:25.656	\N	\N
7	plugin::content-manager.explorer.delete	api::pelicula.pelicula	{}	[]	2024-05-12 23:31:25.658	2024-05-12 23:31:25.658	\N	\N
8	plugin::content-manager.explorer.delete	api::resenia.resenia	{}	[]	2024-05-12 23:31:25.66	2024-05-12 23:31:25.66	\N	\N
9	plugin::content-manager.explorer.publish	api::pelicula.pelicula	{}	[]	2024-05-12 23:31:25.662	2024-05-12 23:31:25.662	\N	\N
10	plugin::content-manager.explorer.publish	api::resenia.resenia	{}	[]	2024-05-12 23:31:25.664	2024-05-12 23:31:25.664	\N	\N
11	plugin::upload.read	\N	{}	[]	2024-05-12 23:31:25.665	2024-05-12 23:31:25.665	\N	\N
12	plugin::upload.assets.create	\N	{}	[]	2024-05-12 23:31:25.667	2024-05-12 23:31:25.667	\N	\N
13	plugin::upload.assets.update	\N	{}	[]	2024-05-12 23:31:25.669	2024-05-12 23:31:25.669	\N	\N
14	plugin::upload.assets.download	\N	{}	[]	2024-05-12 23:31:25.671	2024-05-12 23:31:25.671	\N	\N
15	plugin::upload.assets.copy-link	\N	{}	[]	2024-05-12 23:31:25.673	2024-05-12 23:31:25.673	\N	\N
16	plugin::content-manager.explorer.create	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	["admin::is-creator"]	2024-05-12 23:31:25.676	2024-05-12 23:31:25.676	\N	\N
17	plugin::content-manager.explorer.create	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	["admin::is-creator"]	2024-05-12 23:31:25.678	2024-05-12 23:31:25.678	\N	\N
18	plugin::content-manager.explorer.read	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	["admin::is-creator"]	2024-05-12 23:31:25.68	2024-05-12 23:31:25.68	\N	\N
19	plugin::content-manager.explorer.read	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	["admin::is-creator"]	2024-05-12 23:31:25.683	2024-05-12 23:31:25.683	\N	\N
20	plugin::content-manager.explorer.update	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	["admin::is-creator"]	2024-05-12 23:31:25.684	2024-05-12 23:31:25.684	\N	\N
21	plugin::content-manager.explorer.update	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	["admin::is-creator"]	2024-05-12 23:31:25.686	2024-05-12 23:31:25.686	\N	\N
22	plugin::content-manager.explorer.delete	api::pelicula.pelicula	{}	["admin::is-creator"]	2024-05-12 23:31:25.688	2024-05-12 23:31:25.688	\N	\N
23	plugin::content-manager.explorer.delete	api::resenia.resenia	{}	["admin::is-creator"]	2024-05-12 23:31:25.69	2024-05-12 23:31:25.69	\N	\N
24	plugin::upload.read	\N	{}	["admin::is-creator"]	2024-05-12 23:31:25.692	2024-05-12 23:31:25.692	\N	\N
25	plugin::upload.assets.create	\N	{}	[]	2024-05-12 23:31:25.694	2024-05-12 23:31:25.694	\N	\N
26	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2024-05-12 23:31:25.696	2024-05-12 23:31:25.696	\N	\N
27	plugin::upload.assets.download	\N	{}	[]	2024-05-12 23:31:25.698	2024-05-12 23:31:25.698	\N	\N
28	plugin::upload.assets.copy-link	\N	{}	[]	2024-05-12 23:31:25.7	2024-05-12 23:31:25.7	\N	\N
29	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-05-12 23:31:25.718	2024-05-12 23:31:25.718	\N	\N
30	plugin::content-manager.explorer.create	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	[]	2024-05-12 23:31:25.721	2024-05-12 23:31:25.721	\N	\N
31	plugin::content-manager.explorer.create	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	[]	2024-05-12 23:31:25.723	2024-05-12 23:31:25.723	\N	\N
32	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-05-12 23:31:25.725	2024-05-12 23:31:25.725	\N	\N
33	plugin::content-manager.explorer.read	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	[]	2024-05-12 23:31:25.727	2024-05-12 23:31:25.727	\N	\N
34	plugin::content-manager.explorer.read	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	[]	2024-05-12 23:31:25.728	2024-05-12 23:31:25.728	\N	\N
35	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-05-12 23:31:25.73	2024-05-12 23:31:25.73	\N	\N
36	plugin::content-manager.explorer.update	api::pelicula.pelicula	{"fields": ["titulo", "duracion", "genero", "descripcion", "puntuacion", "director", "actores", "estreno", "caratula", "resenias"]}	[]	2024-05-12 23:31:25.732	2024-05-12 23:31:25.732	\N	\N
37	plugin::content-manager.explorer.update	api::resenia.resenia	{"fields": ["texto", "fecha", "puntuacion", "emisor", "pelicula", "id_emisor"]}	[]	2024-05-12 23:31:25.734	2024-05-12 23:31:25.734	\N	\N
38	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2024-05-12 23:31:25.736	2024-05-12 23:31:25.736	\N	\N
39	plugin::content-manager.explorer.delete	api::pelicula.pelicula	{}	[]	2024-05-12 23:31:25.738	2024-05-12 23:31:25.738	\N	\N
40	plugin::content-manager.explorer.delete	api::resenia.resenia	{}	[]	2024-05-12 23:31:25.74	2024-05-12 23:31:25.74	\N	\N
41	plugin::content-manager.explorer.publish	api::pelicula.pelicula	{}	[]	2024-05-12 23:31:25.742	2024-05-12 23:31:25.742	\N	\N
42	plugin::content-manager.explorer.publish	api::resenia.resenia	{}	[]	2024-05-12 23:31:25.743	2024-05-12 23:31:25.743	\N	\N
43	plugin::content-manager.single-types.configure-view	\N	{}	[]	2024-05-12 23:31:25.745	2024-05-12 23:31:25.745	\N	\N
44	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2024-05-12 23:31:25.747	2024-05-12 23:31:25.747	\N	\N
45	plugin::content-manager.components.configure-layout	\N	{}	[]	2024-05-12 23:31:25.749	2024-05-12 23:31:25.749	\N	\N
46	plugin::content-type-builder.read	\N	{}	[]	2024-05-12 23:31:25.751	2024-05-12 23:31:25.751	\N	\N
47	plugin::email.settings.read	\N	{}	[]	2024-05-12 23:31:25.753	2024-05-12 23:31:25.753	\N	\N
48	plugin::upload.read	\N	{}	[]	2024-05-12 23:31:25.754	2024-05-12 23:31:25.754	\N	\N
49	plugin::upload.assets.create	\N	{}	[]	2024-05-12 23:31:25.756	2024-05-12 23:31:25.756	\N	\N
50	plugin::upload.assets.update	\N	{}	[]	2024-05-12 23:31:25.758	2024-05-12 23:31:25.758	\N	\N
51	plugin::upload.assets.download	\N	{}	[]	2024-05-12 23:31:25.76	2024-05-12 23:31:25.76	\N	\N
52	plugin::upload.assets.copy-link	\N	{}	[]	2024-05-12 23:31:25.763	2024-05-12 23:31:25.763	\N	\N
53	plugin::upload.settings.read	\N	{}	[]	2024-05-12 23:31:25.765	2024-05-12 23:31:25.765	\N	\N
54	plugin::i18n.locale.create	\N	{}	[]	2024-05-12 23:31:25.767	2024-05-12 23:31:25.767	\N	\N
55	plugin::i18n.locale.read	\N	{}	[]	2024-05-12 23:31:25.769	2024-05-12 23:31:25.769	\N	\N
56	plugin::i18n.locale.update	\N	{}	[]	2024-05-12 23:31:25.771	2024-05-12 23:31:25.771	\N	\N
57	plugin::i18n.locale.delete	\N	{}	[]	2024-05-12 23:31:25.773	2024-05-12 23:31:25.773	\N	\N
58	plugin::users-permissions.roles.create	\N	{}	[]	2024-05-12 23:31:25.775	2024-05-12 23:31:25.775	\N	\N
59	plugin::users-permissions.roles.read	\N	{}	[]	2024-05-12 23:31:25.777	2024-05-12 23:31:25.777	\N	\N
60	plugin::users-permissions.roles.update	\N	{}	[]	2024-05-12 23:31:25.779	2024-05-12 23:31:25.779	\N	\N
61	plugin::users-permissions.roles.delete	\N	{}	[]	2024-05-12 23:31:25.781	2024-05-12 23:31:25.781	\N	\N
62	plugin::users-permissions.providers.read	\N	{}	[]	2024-05-12 23:31:25.783	2024-05-12 23:31:25.783	\N	\N
63	plugin::users-permissions.providers.update	\N	{}	[]	2024-05-12 23:31:25.784	2024-05-12 23:31:25.784	\N	\N
64	plugin::users-permissions.email-templates.read	\N	{}	[]	2024-05-12 23:31:25.786	2024-05-12 23:31:25.786	\N	\N
65	plugin::users-permissions.email-templates.update	\N	{}	[]	2024-05-12 23:31:25.788	2024-05-12 23:31:25.788	\N	\N
66	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2024-05-12 23:31:25.79	2024-05-12 23:31:25.79	\N	\N
67	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2024-05-12 23:31:25.792	2024-05-12 23:31:25.792	\N	\N
68	admin::marketplace.read	\N	{}	[]	2024-05-12 23:31:25.793	2024-05-12 23:31:25.793	\N	\N
69	admin::marketplace.plugins.install	\N	{}	[]	2024-05-12 23:31:25.795	2024-05-12 23:31:25.795	\N	\N
70	admin::marketplace.plugins.uninstall	\N	{}	[]	2024-05-12 23:31:25.797	2024-05-12 23:31:25.797	\N	\N
71	admin::webhooks.create	\N	{}	[]	2024-05-12 23:31:25.799	2024-05-12 23:31:25.799	\N	\N
72	admin::webhooks.read	\N	{}	[]	2024-05-12 23:31:25.801	2024-05-12 23:31:25.801	\N	\N
73	admin::webhooks.update	\N	{}	[]	2024-05-12 23:31:25.803	2024-05-12 23:31:25.803	\N	\N
74	admin::webhooks.delete	\N	{}	[]	2024-05-12 23:31:25.805	2024-05-12 23:31:25.805	\N	\N
75	admin::users.create	\N	{}	[]	2024-05-12 23:31:25.806	2024-05-12 23:31:25.806	\N	\N
76	admin::users.read	\N	{}	[]	2024-05-12 23:31:25.808	2024-05-12 23:31:25.808	\N	\N
77	admin::users.update	\N	{}	[]	2024-05-12 23:31:25.81	2024-05-12 23:31:25.81	\N	\N
78	admin::users.delete	\N	{}	[]	2024-05-12 23:31:25.812	2024-05-12 23:31:25.812	\N	\N
79	admin::roles.create	\N	{}	[]	2024-05-12 23:31:25.814	2024-05-12 23:31:25.814	\N	\N
80	admin::roles.read	\N	{}	[]	2024-05-12 23:31:25.815	2024-05-12 23:31:25.815	\N	\N
81	admin::roles.update	\N	{}	[]	2024-05-12 23:31:25.817	2024-05-12 23:31:25.817	\N	\N
82	admin::roles.delete	\N	{}	[]	2024-05-12 23:31:25.819	2024-05-12 23:31:25.819	\N	\N
83	admin::api-tokens.access	\N	{}	[]	2024-05-12 23:31:25.821	2024-05-12 23:31:25.821	\N	\N
84	admin::api-tokens.create	\N	{}	[]	2024-05-12 23:31:25.823	2024-05-12 23:31:25.823	\N	\N
85	admin::api-tokens.read	\N	{}	[]	2024-05-12 23:31:25.825	2024-05-12 23:31:25.825	\N	\N
86	admin::api-tokens.update	\N	{}	[]	2024-05-12 23:31:25.827	2024-05-12 23:31:25.827	\N	\N
87	admin::api-tokens.regenerate	\N	{}	[]	2024-05-12 23:31:25.828	2024-05-12 23:31:25.828	\N	\N
88	admin::api-tokens.delete	\N	{}	[]	2024-05-12 23:31:25.831	2024-05-12 23:31:25.831	\N	\N
89	admin::project-settings.update	\N	{}	[]	2024-05-12 23:31:25.832	2024-05-12 23:31:25.832	\N	\N
90	admin::project-settings.read	\N	{}	[]	2024-05-12 23:31:25.834	2024-05-12 23:31:25.834	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_links (id, permission_id, role_id) FROM stdin;
1	1	2
2	2	2
3	3	2
4	4	2
5	5	2
6	6	2
7	7	2
8	8	2
9	9	2
10	10	2
11	11	2
12	12	2
13	13	2
14	14	2
15	15	2
16	16	3
17	17	3
18	18	3
19	19	3
20	20	3
21	21	3
22	22	3
23	23	3
24	24	3
25	25	3
26	26	3
27	27	3
28	28	3
29	29	1
30	30	1
31	31	1
32	32	1
33	33	1
34	34	1
35	35	1
36	36	1
37	37	1
38	38	1
39	39	1
40	40	1
41	41	1
42	42	1
43	43	1
44	44	1
45	45	1
46	46	1
47	47	1
48	48	1
49	49	1
50	50	1
51	51	1
52	52	1
53	53	1
54	54	1
55	55	1
56	56	1
57	57	1
58	58	1
59	59	1
60	60	1
61	61	1
62	62	1
63	63	1
64	64	1
65	65	1
66	66	1
67	67	1
68	68	1
69	69	1
70	70	1
71	71	1
72	72	1
73	73	1
74	74	1
75	75	1
76	76	1
77	77	1
78	78	1
79	79	1
80	80	1
81	81	1
82	82	1
83	83	1
84	84	1
85	85	1
86	86	1
87	87	1
88	88	1
89	89	1
90	90	1
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-05-12 23:31:25.633	2024-05-12 23:31:25.633	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-05-12 23:31:25.637	2024-05-12 23:31:25.637	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-05-12 23:31:25.639	2024-05-12 23:31:25.639	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	fernando	alvarez	\N	fernando.vax20@gmail.com	$2a$10$SQZnNW9WrGxFdh7nZL.ut.BjxCKl8Ex/sVcGTi974vsL63qBDvNLO	\N	\N	t	f	\N	2024-05-12 23:31:48.612	2024-05-12 23:31:48.612	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_links (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_links (id, file_id, folder_id) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-05-12 23:31:25.575	2024-05-12 23:31:25.575	\N	\N
\.


--
-- Data for Name: peliculas; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.peliculas (id, titulo, duracion, genero, descripcion, puntuacion, director, actores, estreno, caratula, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
52	El reino del planeta de los simios	145	Ciencia ficción, Aventura, Acción	Ambientada varias generaciones en el futuro tras el reinado de César, en la que los simios son la especie dominante que vive en armonía y los humanos se han visto reducidos a vivir en la sombra. Mientras un nuevo y tiránico líder simio construye su imperio, un joven simio emprende un angustioso viaje que le llevará a cuestionarse todo lo que sabe sobre el pasado y a tomar decisiones que definirán el futuro de simios y humanos por igual.	7.24	Wes Ball	Owen Teague, Freya Allan, Kevin Durand, Peter Macon, William H. Macy	2024-05-08	https://image.tmdb.org/t/p/w500/r8L3fUvftNeqPMCITdXJfiXbFBU.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
53	La idea de tenerte	116	Romance, Comedia, Drama	Solène, madre soltera de 40 años, comienza un romance inesperado con Hayes Campbell, de 24 años, el cantante principal de August Moon, la banda de chicos más popular del planeta.	7.51	Michael Showalter	Anne Hathaway, Nicholas Galitzine, Ella Rubin, Annie Mumolo, Reid Scott	2024-05-02	https://image.tmdb.org/t/p/w500/heci4aAOBfN5I2BQ1QpVFE2o5qi.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
54	Garfield: La película	101	Animación, Comedia, Familia	El mundialmente famoso Garfield, el gato casero que odia los lunes y que adora la lasaña, está a punto de vivir una aventura ¡en el salvaje mundo exterior! Tras una inesperada reunión con su largamente perdido padre – el desaliñado gato callejero Vic – Garfield y su amigo canino Odie se ven forzados a abandonar sus perfectas y consentidas vidas al unirse a Vic en un hilarante y muy arriesgado atraco.	6.50	Mark Dindal	Chris Pratt, Samuel L. Jackson, Harvey Guillén, Nicholas Hoult, Hannah Waddingham	2024-04-30	https://image.tmdb.org/t/p/w500/6QR2FOCQr41gSduN70WulRIhJb7.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
55	Sayen: La cazadora	88	Acción, Suspense	El thriller lleno de acción sigue el viaje de Sayen, una mujer mapuche que descubre una peligrosa conspiración liderada por una corporación internacional que está destruyendo la tierra de su familia y devastando los ecosistemas locales en todo Chile, y se encarga de llevar a estas personas ante la justicia y salvar el legado de su familia.	6.42	Alexander Witt	Rallén Montenegro, Aarón Díaz, Eva De Dominici, Alfredo Castro, Eyal Meyer	2024-04-26	https://image.tmdb.org/t/p/w500/btmngK5iXaxyAEl0ScIWCQG2ITr.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
56	Un père idéal	0	Drama, Película de TV		5.30	Hélène Fillières	Laurent Gerra, Eddy Mitchell, Laure-Lucille Simon, Jérôme Kircher, Tess Barthélémy	2024-04-21	https://image.tmdb.org/t/p/w500/4xJd3uwtL1vCuZgEfEc8JXI9Uyx.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
57	Rebel Moon (Parte Dos): La Guerrera Que Deja Marcas	123	Ciencia ficción, Acción, Drama	Los rebeldes se preparan para luchar contra las implacables fuerzas del Mundomadre mientras se forjan vínculos inquebrantables, surgen nuevos héroes y nacen las leyendas.	6.12	Zack Snyder	Sofia Boutella, Michiel Huisman, Ed Skrein, Djimon Hounsou, Bae Doona	2024-04-19	https://image.tmdb.org/t/p/w500/ivhOeG5S2CzKjcKhureKAtfonHg.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
58	Abigail	109	Terror, Suspense	A una banda de delincuentes se les ha encargado secuestrar a Abigail, una bailarina de doce años hija de una poderosa figura del inframundo. Su misión requiere también vigilarla durante la noche para poder cobrar un rescate de 50 millones de dólares. En una mansión aislada, los captores comienzan a desaparecer, uno por uno, y descubren, para su creciente horror, que la pequeña niña con la que están encerrados no es normal y está mostrando su verdadera naturaleza.	7.05	Matt Bettinelli-Olpin	Melissa Barrera, Dan Stevens, Alisha Weir, Kathryn Newton, Kevin Durand	2024-04-18	https://image.tmdb.org/t/p/w500/1wIp3yBijtgEpQrHZLqoX5laGLJ.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
59	Damaged	98	Acción, Crimen, Suspense	Un detective de Chicago viaja a Escocia después de que los crímenes de un asesino en serie emergente coincidan con los que investigó cinco años antes, uno de los cuales fue la escena del crimen de su novia asesinada.	4.92	Terry McDonough	Samuel L. Jackson, Vincent Cassel, Gianni Capaldi, Kate Dickie, John Hannah	2024-04-12	https://image.tmdb.org/t/p/w500/u3aPmYOkd8GclXg8nTvKQ4w1f7L.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
60	The Long Game	110	Drama, Familia		5.80	Julio Quintana	Jay Hernandez, Dennis Quaid, Cheech Marin, Julian Works, Jaina Lee Ortiz	2024-04-12	https://image.tmdb.org/t/p/w500/eVWHzm6bL4ybAuRLqA10Qo7ACfN.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
61	Civil War	109	Bélica, Acción, Drama	En un futuro cercano donde América está sumida en una cruenta guerra civil, un equipo de periodistas y fotógrafos de guerra emprenderá un viaje por carretera en dirección a Washington DC. Su misión: llegar antes de que las fuerzas rebeldes asalten la Casa Blanca y arrebaten el control al presidente de los Estados Unidos.	7.40	Alex Garland	Kirsten Dunst, Wagner Moura, Cailee Spaeny, Stephen McKinley Henderson, Nelson Lee	2024-04-10	https://image.tmdb.org/t/p/w500/qDU7PMMVMxtFI5w95mXS3BjpODG.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
62	Breathe	93	Ciencia ficción, Misterio, Suspense	El suministro de aire es escaso en un futuro cercano, lo que obliga a una madre y una hija a luchar para sobrevivir cuando dos extraños llegan desesperados por un refugio oxigenado.	5.04	Stefon Bristol	Jennifer Hudson, Milla Jovovich, Quvenzhané Wallis, Common, Sam Worthington	2024-04-04	https://image.tmdb.org/t/p/w500/wTW2t8ocWDlHns8I7vQxuqkyK58.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
63	Godzilla y Kong: El nuevo imperio	115	Acción, Ciencia ficción, Aventura	Una aventura cinematográfica completamente nueva, que enfrentará al todopoderoso Kong y al temible Godzilla contra una colosal amenaza desconocida escondida dentro de nuestro mundo. La nueva y épica película profundizará en las historias de estos titanes, sus orígenes y los misterios de Isla Calavera y más allá, mientras descubre la batalla mítica que ayudó a forjar a estos seres extraordinarios y los unió a la humanidad para siempre.	6.52	Adam Wingard	Rebecca Hall, Brian Tyree Henry, Dan Stevens, Kaylee Hottle, Alex Ferns	2024-03-27	https://image.tmdb.org/t/p/w500/2YqZ6IyFk7menirwziJvfoVvSOh.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
64	Cazafantasmas: Imperio helado	115	Fantasía, Aventura, Comedia	Después de los eventos de Oklahoma, el equipo de Cazafantasmas regresa a donde comenzó todo: ¡Nueva York! La historia de la familia Spengler continúa con un nuevo grupo de Cazafantasmas.	6.71	Gil Kenan	Mckenna Grace, Paul Rudd, Carrie Coon, Finn Wolfhard, Dan Aykroyd	2024-03-20	https://image.tmdb.org/t/p/w500/fIUqk6Pjo3uf5RiOGT19KQ53ekq.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
65	Immaculate	89	Terror, Misterio, Suspense	Cecilia, una mujer de fe devota, recibe una calurosa bienvenida en la perfecta campiña italiana, donde se le ofrece un nuevo papel en un ilustre convento. Pero se vuelve más claro para Cecilia que su nuevo hogar alberga oscuros y horribles secretos.	6.18	Michael Mohan	Sydney Sweeney, Álvaro Morte, Benedetta Porcaroli, Dora Romano, Giorgio Colangeli	2024-03-20	https://image.tmdb.org/t/p/w500/dFxjlcejJxSusT82UZl6QfVOgBA.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
66	Road House (De profesión: duro)	114	Acción, Suspense	Dalton es un exluchador de la UFC en horas bajas que acepta un trabajo como portero en un conflictivo bar de carretera de los Cayos de Florida, sólo para descubrir que este paraíso no es todo lo que parece... Remake de la película de 1989 con Patrick Swayze.	7.02	Doug Liman	Jake Gyllenhaal, Daniela Melchior, Billy Magnussen, Jessica Williams, Joaquim de Almeida	2024-03-08	https://image.tmdb.org/t/p/w500/wmnVOIaTsGcRpZ9rLv2msbtqi3C.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
67	Kung Fu Panda 4	94	Animación, Acción, Familia, Comedia, Fantasía	Po se prepara para ser el líder espiritual del Valle de la Paz, buscando un sucesor como Guerrero Dragón. Mientras entrena a un nuevo practicante de kung fu, enfrenta al villano llamado "el Camaleón", que evoca villanos del pasado, desafiando todo lo que Po y sus amigos han aprendido.	7.12	Mike Mitchell	Jack Black, Awkwafina, Viola Davis, Dustin Hoffman, Bryan Cranston	2024-03-02	https://image.tmdb.org/t/p/w500/zS8BSQdbOesql0EWbs17kPvLoAT.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
68	Dune: Parte dos	167	Ciencia ficción, Aventura	Sigue el viaje mítico de Paul Atreides mientras se une a Chani y los Fremen en una guerra de venganza contra los conspiradores que destruyeron a su familia. Al enfrentarse a una elección entre el amor de su vida y el destino del universo conocido, Paul se esfuerza por evitar un futuro terrible que solo él puede prever.	8.21	Denis Villeneuve	Timothée Chalamet, Zendaya, Rebecca Ferguson, Javier Bardem, Josh Brolin	2024-02-27	https://image.tmdb.org/t/p/w500/6o5cJjA4srfvU52UKWaqPUuPPgl.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
69	Madame Web	116	Acción, Fantasía	Cassandra Webb es una paramédica en Manhattan que podría tener habilidades clarividentes. Obligada a enfrentarse a sucesos que se han revelado de su pasado, crea una relación con tres jóvenes destinadas a tener un futuro poderoso... si consiguen sobrevivir a un presente mortal.	5.62	S.J. Clarkson	Dakota Johnson, Sydney Sweeney, Isabela Merced, Celeste O'Connor, Tahar Rahim	2024-02-14	https://image.tmdb.org/t/p/w500/blq050GHBt0Fzx1j9FvohaEuknJ.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
70	Fighter	160	Acción, Suspense, Bélica		5.30	Siddharth Anand	Hrithik Roshan, Deepika Padukone, Anil Kapoor, Karan Singh Grover, Sanjeeda Sheikh	2024-01-24	https://image.tmdb.org/t/p/w500/fy7cDkhCAER6a1i3SAiVvyLx5oO.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
71	Atrapados en el abismo	90	Acción, Terror, Suspense	Esta película sigue a personajes de orígenes muy diferentes que se juntan cuando el avión en el que viajan se estrella en el Océano Pacífico. Cuando el avión se detiene peligrosamente cerca del borde de un barranco con los pasajeros y la tripulación atrapados en una bolsa de aire, se produce una lucha de pesadilla por la supervivencia en la que el suministro de aire se agota y los peligros se acercan por todos lados.	6.43	Claudio Fäh	Colm Meaney, Phyllis Logan, Sophie McIntosh, Will Attenborough, Jeremias Amoore	2024-01-18	https://image.tmdb.org/t/p/w500/fSY6BYUZMObTIzPfRBlhuAb5lsd.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
72	La noche que volvimos a casa	105	Western, Suspense, Acción	En el oeste estadounidense de finales del siglo XIX, un grupo de forajidos nativos americanos aterroriza a los habitantes de un pequeño pueblo. Cuando un grupo de colonos decide luchar contra ellos, se desata una batalla épica por la supervivencia.	6.09	Paul G. Volk	Brian Austin Green, Tim Abell, Charlie N. Townsend, Danny Trejo, Robert Carradine	2024-01-12	https://image.tmdb.org/t/p/w500/1G1t12Ac3Txxb1fMgIJBoZxEKVJ.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
73	Spy x Family Código: Blanco	110	Animación, Comedia, Aventura, Acción	Él es un espía. Ella es una asesina. Juntos, Loid y Yor se guardan su doble vida para sí mismos mientras pretenden ser la familia perfecta. Sin embargo, su hija adoptiva Anya, una telépata, conoce apasionantes secretos de ambos sin que ellos lo sepan. Con el pretexto de llevar a su familia a una escapada de fin de semana invernal, el intento de Loid de avanzar en su misión actual, la Operación Strix, resulta difícil cuando Anya se involucra por error y desencadena eventos que amenazan la paz mundial.	7.71	Takashi Katagiri	Takuya Eguchi, Atsumi Tanezaki, Saori Hayami, Kenichirou Matsuda, Tomoya Nakamura	2023-12-22	https://image.tmdb.org/t/p/w500/jfjW3mQiCTL001ZVfUQ8bQ19zTD.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
74	Los tres mosqueteros: Milady	121	Aventura, Acción, Drama	Desde el museo del Louvre al Palacio de Buckingham, pasando por las alcantarillas de París al asedio de La Rochelle... En un reino dividido por guerras religiosas y bajo la amenaza constante de la invasión británica, un grupo de hombres y mujeres empuñarán sus espadas y unirán su destino al de Francia.	6.52	Martin Bourboulon	François Civil, Vincent Cassel, Romain Duris, Pio Marmaï, Eva Green	2023-12-13	https://image.tmdb.org/t/p/w500/cxttOyp3kVIuR86bUOLOcfkYpYN.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
75	Migración. Un viaje patas arriba	83	Animación, Acción, Aventura, Comedia, Familia	La familia Mallard se ha quedado 'estancada'. Mientras papá Mack se siente realizado cuidando de su familia en su estanque de Nueva Inglaterra, mamá Pam se muere de ganas de vivir la vida y hacer descubrir a sus hijos –el adolescente Dax y la patita Gwen– el mundo en toda su amplitud. Después de que una familia de patos migratorios llegue a su estanque con maravillosas historias de lugares lejanos, Pam consigue convencer a Mack de que deben viajar a la tropical Jamaica pasando por Nueva York. Los Mallard emprenden el viaje hacia el sur para pasar el invierno, pero nada sale como estaba previsto. La experiencia les ayudará a descubrir horizontes desconocidos, a hacer nuevos amigos, a vivir experiencias que jamás imaginaron, y de paso, a conocerse mejor.	7.48	Benjamin Renner	Kumail Nanjiani, Elizabeth Banks, Caspar Jennings, Tresi Gazal, Awkwafina	2023-12-06	https://image.tmdb.org/t/p/w500/diEeiB2DmZZadHISkg24RO2n0rT.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
76	Godzilla Minus One	125	Ciencia ficción, Terror, Acción	En el Japón de la posguerra surge un nuevo terror. ¿Podrán sobrevivir las personas devastadas... y mucho menos defenderse?	7.70	Takashi Yamazaki	Ryunosuke Kamiki, Minami Hamabe, Yuki Yamada, Munetaka Aoki, Hidetaka Yoshioka	2023-11-03	https://image.tmdb.org/t/p/w500/q35kdC8ci9Fm2gVQazJdsohtGpD.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
77	Oppenheimer	181	Drama, Historia	Película sobre el físico J. Robert Oppenheimer y su papel como desarrollador de la bomba atómica. Basada en el libro 'American Prometheus: The Triumph and Tragedy of J. Robert Oppenheimer' de Kai Bird y Martin J. Sherwin.	8.10	Christopher Nolan	Cillian Murphy, Emily Blunt, Matt Damon, Robert Downey Jr., Florence Pugh	2023-07-19	https://image.tmdb.org/t/p/w500/ncKCQVXgk4BcQV6XbvesgZ2zLvZ.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
78	Barbie	114	Comedia, Aventura	Barbie vive en Barbieland donde todo es ideal y lleno de música y color. Un buen día decide conocer el mundo real. Cuando el CEO de Mattel se entere, tratará de evitarlo a toda costa y devolver a Barbie a una caja.	7.07	Greta Gerwig	Margot Robbie, Ryan Gosling, America Ferrera, Ariana Greenblatt, Issa Rae	2023-07-19	https://image.tmdb.org/t/p/w500/fNtqD4BTFj0Bgo9lyoAtmNFzxHN.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
79	El bastardo	118	Acción, Suspense, Drama	Un chico pelea en estadios de boxeo ilegales en Filipinas y ha estado buscando a su padre coreano para conseguir dinero para la operación de su madre filipina enferma. Un día, recibe un mensaje de su padre coreano y vuela a Corea del Sur para encontrarse con él, al llegar será perseguido por distintos bandos sin saber la razón de su persecución.	6.99	Park Hoon-jung	Kim Seon-ho, Kang Tae-ju, Kim Kang-woo, Go Ara, Jung Lael	2023-06-21	https://image.tmdb.org/t/p/w500/ziut9101MZS0n0yIBUfga1EvcQu.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
80	Flash	144	Acción, Aventura, Ciencia ficción	Cuando su intento de salvar a su familia altera sin darse cuenta el futuro, Barry Allen queda atrapado en una realidad en la que el General Zod ha regresado y no hay superhéroes a quienes recurrir. Para salvar el mundo en el que se encuentra y regresar al futuro que conoce, la única esperanza de Barry es correr por su vida. Pero, ¿será suficiente hacer el sacrificio máximo para restablecer el universo?	6.74	Andy Muschietti	Ezra Miller, Sasha Calle, Michael Keaton, Michael Shannon, Ron Livingston	2023-06-13	https://image.tmdb.org/t/p/w500/x9Qc86JEyYkAKsdzjDpS5kbaAB7.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
81	Fast & Furious X	141	Acción, Crimen, Suspense	Durante numerosas misiones más que imposibles, Dom Toretto y su familia han sido capaces de ser más listos, de tener más valor y de ir más rápido que cualquier enemigo que se cruzara con ellos. Pero ahora tendrán que enfrentarse al oponente más letal que jamás hayan conocido: Un terrible peligro que resurge del pasado, que se mueve por una sangrienta sed de venganza y que está dispuesto a destrozar a la familia y destruir para siempre todo lo que a Dom le importa.	7.13	Louis Leterrier	Vin Diesel, Michelle Rodriguez, Tyrese Gibson, Ludacris, John Cena	2023-05-17	https://image.tmdb.org/t/p/w500/x3zlm6VxPvVrYWE3bHkYUQMR798.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
82	Ape vs. Mecha Ape	80	Acción, Ciencia ficción	Al reconocer el poder destructivo de su gigante cautivo Ape, el ejército crea su propia IA lista para la batalla, Mecha Ape. Pero su primera prueba práctica sale terriblemente mal, y los militares no tienen más remedio que liberar al simio gigante encarcelado para detener al colosal robot antes de que destruya el centro de Chicago.	5.48	Marc Gottlieb	Tom Arnold, Eugenia Kuzmina, Corbin Timbrook, Jack Pearson, Brendan Petrizzo	2023-03-24	https://image.tmdb.org/t/p/w500/ohlZkxCjQ8Ua3Up9TuH7gAVV9ZF.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
83	Alienoid	142	Ciencia ficción, Acción, Fantasía, Aventura	‎Los gurús de finales de la dinastía Goryeo intentan obtener una espada legendaria y sagrada, y los humanos en 2022 persiguen a un prisionero alienígena que está encerrado en el cuerpo de un humano. Las dos partes se cruzan cuando se abre un portal de viajes en el tiempo.‎	6.83	Choi Dong-hoon	Ryu Jun-yeol, Kim Woo-bin, Kim Tae-ri, So Ji-sub, Yum Jung-ah	2022-07-20	https://image.tmdb.org/t/p/w500/dwh2pqqWobsOmnDFsJkiLRLBQ94.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
84	578: Phát Đạn Của Kẻ Điên	108	Acción, Suspense		5.30	Lương Đình Dũng	Alexandre Nguyen, H'Hen Niê, Hoàng Phúc, Ngọc Tình, Tuấn Hạc	2022-05-20	https://image.tmdb.org/t/p/w500/cPTphSqJ0dF0EPeeAR1qeeNbMPV.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
85	Spitfire Over Berlin	80	Bélica, Acción, Historia	Agosto de 1944. Con la 8ª Fuerza Aérea Americana preparada para atacar sobre la Alemania Nazi, la Inteligencia Británica se entera de que podrían estar volando hacia una trampa mortal. Con solo horas de sobra, el teniente de vuelo Edward Barnes debe volar en una misión de vida o muerte sobre Berlín en su desarmado Spitfire para obtener pruebas fotográficas y salvar la vida de 1200 hombres.	3.80	Callum Burn	Kris Saddler, Tom Gordon, David Dobson, Vin Hawke	2022-05-13	https://image.tmdb.org/t/p/w500/syFEBhLY5rV9QlShUSphD134Rgx.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
86	Red	100	Animación, Familia, Comedia, Fantasía	Mei Lee, una niña de 13 años un poco rara pero segura de sí misma, se debate entre ser la hija obediente que su madre quiere que sea y el caos propio de la adolescencia. Ming, su protectora y ligeramente exigente madre, no se separa nunca de ella lo que es una situación poco deseable para una adolescente. Y por si los cambios en su vida y en su cuerpo no fueran suficientes, cada vez que se emociona demasiado (lo que le ocurre prácticamente todo el tiempo), se convierte en un panda rojo gigante.	7.39	Domee Shi	Rosalie Chiang, Sandra Oh, Ava Morse, Hyein Park, Maitreyi Ramakrishnan	2022-03-10	https://image.tmdb.org/t/p/w500/tYRd7O5Eht4jypJQrMWnCi26880.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
87	Batman	176	Crimen, Misterio, Suspense	Cuando un asesino se dirige a la élite de Gotham con una serie de maquinaciones sádicas, un rastro de pistas crípticas envía Batman a una investigación en los bajos fondos. A medida que las pruebas comienzan a acercarse a su casa y se hace evidente la magnitud de los planes del autor, Batman debe forjar nuevas relaciones, desenmascarar al culpable y hacer justicia al abuso de poder y la corrupción que durante mucho tiempo han asolado Gotham City.	7.68	Matt Reeves	Robert Pattinson, Zoë Kravitz, Paul Dano, Jeffrey Wright, John Turturro	2022-03-01	https://image.tmdb.org/t/p/w500/mo7teil1qH0SxgLijnqeYP1Eb4w.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
88	Monster's Battlefield	83	Ciencia ficción	Un científico fusiona genes de bestias misteriosas y da vida a una criatura tipo dragón.	6.50	Xu Shixing	Zhang Meng, Li Ning, Gu Jing	2021-12-27	https://image.tmdb.org/t/p/w500/nBVYp2xxx2R02n21EGlDky8CgWR.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
89	Dune	155	Ciencia ficción, Aventura	En un lejano futuro, la galaxia conocida es gobernada mediante un sistema feudal de casas nobles bajo el mandato del Emperador. Las alianzas y la política giran entorno a un pequeño planeta, Dune,  del que extrae la "especia melange", la materia prima que permite los viajes espaciales. La Casa Atreides, bajo el mandato del Duque Leto Atreides recibe el encargo de custodiar el planeta, relevando en la encomienda a sus históricos enemigos, los Harkonnen. Paul Atreides, hijo del duque, se verá atrapado en las intrigas políticas mientras descubre el destino que le deparan los desiertos de Dune.	7.78	Denis Villeneuve	Timothée Chalamet, Rebecca Ferguson, Oscar Isaac, Jason Momoa, Josh Brolin	2021-09-15	https://image.tmdb.org/t/p/w500/hIEKzq0klqtz1H3S7QxzH4mMbvT.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
90	Return of Special Forces V	97	Acción	Long Wei, que acaba de poner fin a una cruenta guerra en un país extranjero, recibe un mensaje de socorro de su ex esposa Leng Yun, que no se había puesto en contacto con él desde hacía diez años.	6.00	Jie Hou	Fu Cheng Peng, Zhao Xun, Sun Anqi, Yang Tongshu, Emile Amro	2021-07-10	https://image.tmdb.org/t/p/w500/4wn6jJL6rC8NYJCNgC4kmI1xOb8.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
91	Thor: Ragnarok	131	Acción, Aventura, Ciencia ficción	Thor está preso al otro lado del universo sin su poderoso martillo y se enfrenta a una carrera contra el tiempo. Su objetivo es volver a Asgard y parar el Ragnarok porque significaría la destrucción de su planeta natal y el fin de la civilización Asgardiana a manos de una todopoderosa y nueva amenaza, la implacable Hela. Pero, primero deberá sobrevivir a una competición letal de gladiadores que lo enfrentará a su aliado y compañero en los Vengadores, ¡el Increíble Hulk!	7.59	Taika Waititi	Chris Hemsworth, Tom Hiddleston, Cate Blanchett, Tessa Thompson, Jeff Goldblum	2017-10-02	https://image.tmdb.org/t/p/w500/pGtkLdk4rnF2A3Yz2BHiTgRwMU4.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
92	La guerra del planeta de los simios	140	Drama, Ciencia ficción, Bélica	César y sus monos son forzados a encarar un conflicto mortal contra un ejército de humanos liderado por un brutal coronel. Después de sufrir pérdidas enormes, César lucha con sus instintos más oscuros en una búsqueda por vengar a su especie. Cuando finalmente se encuentren, Cesar y el Coronel protagonizarán una batalla que pondrá en juego el futuro de ambas especies y el del mismo planeta. Tercera película de la nueva saga de El Planeta de los Simios.	7.18	Matt Reeves	Andy Serkis, Woody Harrelson, Karin Konoval, Terry Notary, Steve Zahn	2017-07-11	https://image.tmdb.org/t/p/w500/4s51V3REPzdABoEDLC4TPDPkY3b.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
93	Logan	137	Acción, Drama, Ciencia ficción	Sin sus poderes, por primera vez, Lobezno es verdaderamente vulnerable. Después de una vida de dolor y angustia, sin rumbo y perdido en el mundo donde los X-Men son leyenda, su mentor Charles Xavier lo convence de asumir una última misión: proteger a una joven que será la única esperanza para la raza mutante.	7.80	James Mangold	Hugh Jackman, Dafne Keen, Patrick Stewart, Elizabeth Rodriguez, Boyd Holbrook	2017-02-28	https://image.tmdb.org/t/p/w500/d0ktjN9eKww26HhM8or8iUB1I68.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
94	Cazafantasmas	116	Acción, Fantasía, Comedia	Manhattan, Nueva York. Después de casi treinta años sin saber de ellos, los fantasmas y demonios se han vuelto a escapar de los infiernos para destruir la ciudad. Esta vez un nuevo equipo de Cazafantasmas, formado por un grupo de cuatro mujeres, está dispuesto a terminar con cualquier amenaza espectral.	5.36	Paul Feig	Kristen Wiig, Melissa McCarthy, Kate McKinnon, Leslie Jones, Chris Hemsworth	2016-07-14	https://image.tmdb.org/t/p/w500/gG8Tv060zoUwmeGEk8lGBULO9hw.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
95	Deadpool	109	Acción, Aventura, Comedia	Basado en el anti-héroe menos convencional de la Marvel, Deadpool narra el origen de un ex-operativo de la fuerzas especiales llamado Wade Wilson, reconvertido a mercenario, y que tras ser sometido a un cruel experimento adquiere poderes de curación rápida, adoptando Wade entonces el alter ego de Deadpool. Armado con sus nuevas habilidades y un oscuro y retorcido sentido del humor, Deadpool intentará dar caza al hombre que casi destruye su vida.	7.61	Tim Miller	Ryan Reynolds, Morena Baccarin, Ed Skrein, T.J. Miller, Gina Carano	2016-02-09	https://image.tmdb.org/t/p/w500/3TUYy0XvhPQBhrXJwRIaOoYFOBO.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
96	El amanecer del planeta de los simios	130	Ciencia ficción, Acción, Drama, Suspense	Un grupo de simios con grandes cualidades para la supervivencia toma las calles, liderado por César, un simio dotado de una inteligencia y unos instintos superiores para cualquier primate. Ante la necesidad de libertad, esta raza animal decide no doblegarse ante los humanos. Tendrá que luchar contra un grupo de humanos que han sobrevivido a una fuerte epidemia, desatada en la década anterior. Ambas partes han establecido una tregua, pero se verá interrumpida.	7.32	Matt Reeves	Andy Serkis, Jason Clarke, Gary Oldman, Keri Russell, Toby Kebbell	2014-07-08	https://image.tmdb.org/t/p/w500/qNu2N4a9nuGWgkeg3NzdRTDOz5N.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
97	El origen del planeta de los simios	105	Suspense, Acción, Drama, Ciencia ficción	Precuela del ya mítico largometraje "El planeta de los simios". Will Rodman (James Franco) es un joven científico que está investigando con monos para obtener un tratamiento contra el alzheimer, una enfermedad que afecta a su padre (John Lithgow). Uno de esos primates, al que llaman César (Andy Serkis), experimenta una evolución en su inteligencia tan notable que el protagonista decide llevárselo a su casa para protegerlo. Le ayudará una bella primatóloga llamada Caroline (Freida Pinto).	7.30	Rupert Wyatt	Andy Serkis, James Franco, Freida Pinto, John Lithgow, Brian Cox	2011-08-03	https://image.tmdb.org/t/p/w500/kyCXO8lTKs62V5A4IsdNLjvskWM.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
98	Iron Man 2	125	Aventura, Acción, Ciencia ficción	El mundo sabe que el multimillonario Tony Stark es Iron Man, el superhéroe enmascarado. Sometido a presiones por parte del gobierno, la prensa y la opinión pública para que comparta su tecnología con el ejército, Tony es reacio a desvelar los secretos de la armadura de Iron Man porque teme que esa información pueda caer en manos indeseables.	6.84	Jon Favreau	Robert Downey Jr., Mickey Rourke, Don Cheadle, Gwyneth Paltrow, Sam Rockwell	2010-04-28	https://image.tmdb.org/t/p/w500/ayyJVOV5I4MGjti7nIHC3mVCagR.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
99	xXx	124	Acción, Aventura, Suspense, Crimen	Xander Cage es XXX, un antiguo ganador de X-Games y atleta profesional de deportes de extremo, que sobrevive vendiendo videos de sus increíbles hazañas, las cuales hacen emitir adrenalina por todo el cuerpo. Pero después de incontables encuentros con la ley, su mundo está a punto de tomar un rumbo aún más extremo... Porque Xander no sabe que ha sido "espiado" por Augustus Gibbons, un agente veterano de la Agencia Nacional de Seguridad que se encuentra en una desesperada situación en la distante ciudad de Praga, en donde su operativo secreto ha sido asesinado por una pandilla de mafiosos con un estilo muy propio, que se llaman así mismos Anarchy 99, encabezados por el brutal ex-Comandante del Ejército Ruso Yorgi.	5.93	Rob Cohen	Vin Diesel, Asia Argento, Marton Csokas, Samuel L. Jackson, Michael Roof	2002-08-09	https://image.tmdb.org/t/p/w500/ewGhwS8dbAfFDJBEpbsWOuwS4Ov.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
100	El planeta de los simios	119	Suspense, Ciencia ficción, Acción, Aventura	Año 2029. En una misión rutinaria, el astronauta Leo Davidson (Mark Wahlberg) pierde el control de su nave y aterriza en un extraño planeta, habitado por una raza de simios de inteligencia similar a la de los humanos y que tratan a éstos como a animales. Con la ayuda de una chimpancé llamada Ari (Helena Bonham-Carter) y de una pequeña banda de humanos rebeldes, Leo encabeza el enfrentamineto contra el terrible ejército dirigido por el general Thade (Tim Roth) y su hombre de confianza, el guerrero Attar (Michael Clarke Duncan). La clave es llegar a un templo sagrado que se encuentra en la zona prohibida del planeta, en el que podrán descubrir los sorprendentes secretos del pasado de la humanidad y la clave para su futuro.	5.70	Tim Burton	Mark Wahlberg, Tim Roth, Helena Bonham Carter, Michael Clarke Duncan, Kris Kristofferson	2001-07-25	https://image.tmdb.org/t/p/w500/rRvUkYCByrlVMy4GMME3iDAe6er.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
101	Matrix	138	Acción, Ciencia ficción	Thomas Anderson lleva una doble vida: por el día es programador en una importante empresa de software, y por la noche un hacker informático llamado Neo. Su vida no volverá a ser igual cuando unos misteriosos personajes le inviten a descubrir la respuesta a la pregunta que no le deja dormir: ¿qué es Matrix?	8.22	Lana Wachowski	Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss, Hugo Weaving, Gloria Foster	1999-03-31	https://image.tmdb.org/t/p/w500/qK76PKQLd6zlMn0u83Ej9YQOqPL.jpg	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	2024-05-13 00:52:36.920685	1	1
\.


--
-- Data for Name: resenias; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.resenias (id, texto, fecha, puntuacion, emisor, id_emisor, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: resenias_pelicula_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.resenias_pelicula_links (id, resenia_id, pelicula_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::api::resenia.resenia	{"uid":"api::resenia.resenia","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"emisor","defaultSortBy":"emisor","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"texto":{"edit":{"label":"texto","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"texto","searchable":true,"sortable":true}},"fecha":{"edit":{"label":"fecha","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"fecha","searchable":true,"sortable":true}},"puntuacion":{"edit":{"label":"puntuacion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"puntuacion","searchable":true,"sortable":true}},"emisor":{"edit":{"label":"emisor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"emisor","searchable":true,"sortable":true}},"pelicula":{"edit":{"label":"pelicula","description":"","placeholder":"","visible":true,"editable":true,"mainField":"titulo"},"list":{"label":"pelicula","searchable":true,"sortable":true}},"id_emisor":{"edit":{"label":"id_emisor","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"id_emisor","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","texto","fecha","puntuacion"],"editRelations":["pelicula"],"edit":[[{"name":"texto","size":6},{"name":"fecha","size":4}],[{"name":"puntuacion","size":4},{"name":"emisor","size":6}],[{"name":"id_emisor","size":4}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"editRelations":["token"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::api::pelicula.pelicula	{"uid":"api::pelicula.pelicula","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"titulo","defaultSortBy":"titulo","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"titulo":{"edit":{"label":"titulo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"titulo","searchable":true,"sortable":true}},"duracion":{"edit":{"label":"duracion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"duracion","searchable":true,"sortable":true}},"genero":{"edit":{"label":"genero","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"genero","searchable":true,"sortable":true}},"descripcion":{"edit":{"label":"descripcion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"descripcion","searchable":true,"sortable":true}},"puntuacion":{"edit":{"label":"puntuacion","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"puntuacion","searchable":true,"sortable":true}},"director":{"edit":{"label":"director","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"director","searchable":true,"sortable":true}},"actores":{"edit":{"label":"actores","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actores","searchable":true,"sortable":true}},"estreno":{"edit":{"label":"estreno","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"estreno","searchable":true,"sortable":true}},"caratula":{"edit":{"label":"caratula","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caratula","searchable":true,"sortable":true}},"resenias":{"edit":{"label":"resenias","description":"","placeholder":"","visible":true,"editable":true,"mainField":"emisor"},"list":{"label":"resenias","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","titulo","duracion","genero"],"editRelations":["resenias"],"edit":[[{"name":"titulo","size":6},{"name":"duracion","size":4}],[{"name":"genero","size":6},{"name":"descripcion","size":6}],[{"name":"puntuacion","size":4},{"name":"director","size":6}],[{"name":"actores","size":6},{"name":"estreno","size":4}],[{"name":"caratula","size":6}]]}}	object	\N	\N
15	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
16	plugin_upload_metrics	{"weeklySchedule":"25 36 23 * * 0","lastWeeklyUpdate":1715556985013}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"editRelations":["parent","children","files"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"path","size":6}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["folder"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folderPath","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
17	plugin_i18n_default_locale	"en"	string	\N	\N
18	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
19	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
20	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"integer","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"integer","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::pelicula.pelicula":{"kind":"collectionType","collectionName":"peliculas","info":{"singularName":"pelicula","pluralName":"peliculas","displayName":"pelicula","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"titulo":{"type":"string"},"duracion":{"type":"integer"},"genero":{"type":"text"},"descripcion":{"type":"text"},"puntuacion":{"type":"decimal","default":0},"director":{"type":"string"},"actores":{"type":"text"},"estreno":{"type":"date","required":true},"caratula":{"type":"text"},"resenias":{"type":"relation","relation":"oneToMany","target":"api::resenia.resenia","mappedBy":"pelicula"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"peliculas","info":{"singularName":"pelicula","pluralName":"peliculas","displayName":"pelicula","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"titulo":{"type":"string"},"duracion":{"type":"integer"},"genero":{"type":"text"},"descripcion":{"type":"text"},"puntuacion":{"type":"decimal","default":0},"director":{"type":"string"},"actores":{"type":"text"},"estreno":{"type":"date","required":true},"caratula":{"type":"text"},"resenias":{"type":"relation","relation":"oneToMany","target":"api::resenia.resenia","mappedBy":"pelicula"}},"kind":"collectionType"},"modelType":"contentType","modelName":"pelicula","connection":"default","uid":"api::pelicula.pelicula","apiName":"pelicula","globalId":"Pelicula","actions":{},"lifecycles":{}},"api::resenia.resenia":{"kind":"collectionType","collectionName":"resenias","info":{"singularName":"resenia","pluralName":"resenias","displayName":"resenia","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"texto":{"type":"text"},"fecha":{"type":"date"},"puntuacion":{"type":"decimal"},"emisor":{"type":"string"},"pelicula":{"type":"relation","relation":"manyToOne","target":"api::pelicula.pelicula","inversedBy":"resenias"},"id_emisor":{"type":"biginteger","unique":true,"required":true,"min":"0"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"resenias","info":{"singularName":"resenia","pluralName":"resenias","displayName":"resenia","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"texto":{"type":"text"},"fecha":{"type":"date"},"puntuacion":{"type":"decimal"},"emisor":{"type":"string"},"pelicula":{"type":"relation","relation":"manyToOne","target":"api::pelicula.pelicula","inversedBy":"resenias"},"id_emisor":{"type":"biginteger","unique":true,"required":true,"min":"0"}},"kind":"collectionType"},"modelType":"contentType","modelName":"resenia","connection":"default","uid":"api::resenia.resenia","apiName":"resenia","globalId":"Resenia","actions":{},"lifecycles":{}}}	object	\N	\N
21	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
3	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"peliculas","indexes":[{"name":"peliculas_created_by_id_fk","columns":["created_by_id"]},{"name":"peliculas_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"peliculas_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"peliculas_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"titulo","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"duracion","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"genero","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"descripcion","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"puntuacion","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"director","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"actores","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"estreno","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caratula","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"resenias","indexes":[{"name":"resenias_created_by_id_fk","columns":["created_by_id"]},{"name":"resenias_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"resenias_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"resenias_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"texto","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"fecha","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"puntuacion","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"emisor","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"id_emisor","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"resenias_pelicula_links","indexes":[{"name":"resenias_pelicula_links_fk","columns":["resenia_id"]},{"name":"resenias_pelicula_links_inv_fk","columns":["pelicula_id"]}],"foreignKeys":[{"name":"resenias_pelicula_links_fk","columns":["resenia_id"],"referencedColumns":["id"],"referencedTable":"resenias","onDelete":"CASCADE"},{"name":"resenias_pelicula_links_inv_fk","columns":["pelicula_id"],"referencedColumns":["id"],"referencedTable":"peliculas","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"resenia_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pelicula_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-05-13 01:55:01.959	a3965657c32fd4af300e60880d6268eb
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-05-12 23:31:25.612	2024-05-12 23:31:25.612	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-05-12 23:31:25.612	2024-05-12 23:31:25.612	\N	\N
3	plugin::users-permissions.auth.callback	2024-05-12 23:31:25.617	2024-05-12 23:31:25.617	\N	\N
4	plugin::users-permissions.auth.connect	2024-05-12 23:31:25.617	2024-05-12 23:31:25.617	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2024-05-12 23:31:25.617	2024-05-12 23:31:25.617	\N	\N
6	plugin::users-permissions.auth.resetPassword	2024-05-12 23:31:25.617	2024-05-12 23:31:25.617	\N	\N
7	plugin::users-permissions.auth.register	2024-05-12 23:31:25.617	2024-05-12 23:31:25.617	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2024-05-12 23:31:25.617	2024-05-12 23:31:25.617	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2024-05-12 23:31:25.617	2024-05-12 23:31:25.617	\N	\N
10	api::pelicula.pelicula.find	2024-05-13 01:58:53.196	2024-05-13 01:58:53.196	\N	\N
11	api::pelicula.pelicula.findOne	2024-05-13 01:58:53.196	2024-05-13 01:58:53.196	\N	\N
12	api::resenia.resenia.find	2024-05-13 01:58:53.196	2024-05-13 01:58:53.196	\N	\N
13	api::resenia.resenia.findOne	2024-05-13 01:58:53.196	2024-05-13 01:58:53.196	\N	\N
14	api::resenia.resenia.create	2024-05-13 01:58:53.196	2024-05-13 01:58:53.196	\N	\N
15	api::resenia.resenia.update	2024-05-13 01:58:53.196	2024-05-13 01:58:53.196	\N	\N
16	api::resenia.resenia.delete	2024-05-13 01:58:53.196	2024-05-13 01:58:53.196	\N	\N
17	api::pelicula.pelicula.find	2024-05-13 01:59:01.685	2024-05-13 01:59:01.685	\N	\N
18	api::pelicula.pelicula.findOne	2024-05-13 01:59:01.685	2024-05-13 01:59:01.685	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_links (id, permission_id, role_id) FROM stdin;
1	1	1
2	2	1
3	3	2
4	4	2
5	5	2
6	6	2
7	7	2
8	9	2
9	8	2
10	10	1
11	12	1
12	11	1
13	14	1
14	15	1
15	16	1
16	13	1
17	17	2
18	18	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-05-12 23:31:25.606	2024-05-13 01:58:53.191	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-05-12 23:31:25.608	2024-05-13 01:59:01.683	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	fernando	fernando@correo.cl	local	$2a$10$fApmV35uSDMa0zmWilqcMOsN4q880p3GyoPnIITHE1cI3pgDboTb.	\N	\N	t	f	2024-05-13 01:59:57.434	2024-05-13 01:59:57.434	1	1
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_links (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 90, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 90, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: peliculas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.peliculas_id_seq', 101, true);


--
-- Name: resenias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.resenias_id_seq', 1, false);


--
-- Name: resenias_pelicula_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.resenias_pelicula_links_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 21, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 3, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 18, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 18, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: peliculas peliculas_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_pkey PRIMARY KEY (id);


--
-- Name: resenias_pelicula_links resenias_pelicula_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias_pelicula_links
    ADD CONSTRAINT resenias_pelicula_links_pkey PRIMARY KEY (id);


--
-- Name: resenias resenias_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: peliculas_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX peliculas_created_by_id_fk ON public.peliculas USING btree (created_by_id);


--
-- Name: peliculas_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX peliculas_updated_by_id_fk ON public.peliculas USING btree (updated_by_id);


--
-- Name: resenias_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX resenias_created_by_id_fk ON public.resenias USING btree (created_by_id);


--
-- Name: resenias_pelicula_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX resenias_pelicula_links_fk ON public.resenias_pelicula_links USING btree (resenia_id);


--
-- Name: resenias_pelicula_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX resenias_pelicula_links_inv_fk ON public.resenias_pelicula_links USING btree (pelicula_id);


--
-- Name: resenias_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX resenias_updated_by_id_fk ON public.resenias USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: peliculas peliculas_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: peliculas peliculas_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.peliculas
    ADD CONSTRAINT peliculas_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: resenias resenias_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: resenias_pelicula_links resenias_pelicula_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias_pelicula_links
    ADD CONSTRAINT resenias_pelicula_links_fk FOREIGN KEY (resenia_id) REFERENCES public.resenias(id) ON DELETE CASCADE;


--
-- Name: resenias_pelicula_links resenias_pelicula_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias_pelicula_links
    ADD CONSTRAINT resenias_pelicula_links_inv_fk FOREIGN KEY (pelicula_id) REFERENCES public.peliculas(id) ON DELETE CASCADE;


--
-- Name: resenias resenias_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.resenias
    ADD CONSTRAINT resenias_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

