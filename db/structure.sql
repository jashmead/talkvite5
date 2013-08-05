--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: filepaths; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE filepaths (
    id integer NOT NULL,
    metafile_id integer,
    pathname character varying(255),
    file_type character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: filepaths_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE filepaths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: filepaths_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE filepaths_id_seq OWNED BY filepaths.id;


--
-- Name: locations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE locations (
    id integer NOT NULL,
    name character varying(255),
    location_type character varying(255),
    street1 character varying(255),
    street2 character varying(255),
    city character varying(255),
    country character varying(255),
    post_code character varying(255),
    address_full text,
    longitude double precision,
    latitude double precision,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE locations_id_seq OWNED BY locations.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE messages (
    id integer NOT NULL,
    user_from_id integer,
    user_to_id integer,
    message_type character varying(255),
    content character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: metafiles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE metafiles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    meta_type character varying(255),
    meta_data text,
    meta_controls text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: metafiles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE metafiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: metafiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE metafiles_id_seq OWNED BY metafiles.id;


--
-- Name: metalinks; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE metalinks (
    id integer NOT NULL,
    metafile_from_id integer,
    metafile_to_id integer,
    metalink_type character varying(255),
    metalink_data character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: metalinks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE metalinks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: metalinks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE metalinks_id_seq OWNED BY metalinks.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE posts (
    id integer NOT NULL,
    user_id integer,
    talk_id integer,
    post_type character varying(255),
    content character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: subjects; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE subjects (
    id integer NOT NULL,
    metafile_id integer,
    talk_id integer,
    subject_type character varying(255),
    content character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE subjects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE subjects_id_seq OWNED BY subjects.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    tag_code character varying(255),
    tagable_id integer,
    tagable_type character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: talks; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE talks (
    id integer NOT NULL,
    user_id integer,
    subject character varying(255),
    description character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    location_id integer
);


--
-- Name: talks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE talks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: talks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE talks_id_seq OWNED BY talks.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    location_id integer
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY filepaths ALTER COLUMN id SET DEFAULT nextval('filepaths_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY locations ALTER COLUMN id SET DEFAULT nextval('locations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY metafiles ALTER COLUMN id SET DEFAULT nextval('metafiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY metalinks ALTER COLUMN id SET DEFAULT nextval('metalinks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY subjects ALTER COLUMN id SET DEFAULT nextval('subjects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY talks ALTER COLUMN id SET DEFAULT nextval('talks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: filepaths_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY filepaths
    ADD CONSTRAINT filepaths_pkey PRIMARY KEY (id);


--
-- Name: locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: metafiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metafiles
    ADD CONSTRAINT metafiles_pkey PRIMARY KEY (id);


--
-- Name: metalinks_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY metalinks
    ADD CONSTRAINT metalinks_pkey PRIMARY KEY (id);


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: talks_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY talks
    ADD CONSTRAINT talks_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: filepath_metafile_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY filepaths
    ADD CONSTRAINT filepath_metafile_fk FOREIGN KEY (metafile_id) REFERENCES metafiles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: message_user_from_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT message_user_from_fk FOREIGN KEY (user_from_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: message_user_to_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT message_user_to_fk FOREIGN KEY (user_to_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: metalink_metafile_from_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY metalinks
    ADD CONSTRAINT metalink_metafile_from_fk FOREIGN KEY (metafile_from_id) REFERENCES metafiles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: metalink_metafile_to_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY metalinks
    ADD CONSTRAINT metalink_metafile_to_fk FOREIGN KEY (metafile_to_id) REFERENCES metafiles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: post_talk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT post_talk_fk FOREIGN KEY (talk_id) REFERENCES talks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: post_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT post_user_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: subject_metafile_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY subjects
    ADD CONSTRAINT subject_metafile_fk FOREIGN KEY (metafile_id) REFERENCES metafiles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: subject_talk_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY subjects
    ADD CONSTRAINT subject_talk_fk FOREIGN KEY (talk_id) REFERENCES talks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: talk_location_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY talks
    ADD CONSTRAINT talk_location_fk FOREIGN KEY (location_id) REFERENCES locations(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: talk_user_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY talks
    ADD CONSTRAINT talk_user_fk FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_location_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT user_location_fk FOREIGN KEY (location_id) REFERENCES locations(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20130802224741');

INSERT INTO schema_migrations (version) VALUES ('20130802230750');

INSERT INTO schema_migrations (version) VALUES ('20130804171429');

INSERT INTO schema_migrations (version) VALUES ('20130804173332');

INSERT INTO schema_migrations (version) VALUES ('20130804173601');

INSERT INTO schema_migrations (version) VALUES ('20130804191942');

INSERT INTO schema_migrations (version) VALUES ('20130804213426');

INSERT INTO schema_migrations (version) VALUES ('20130804225241');

INSERT INTO schema_migrations (version) VALUES ('20130804225630');

INSERT INTO schema_migrations (version) VALUES ('20130804230541');

INSERT INTO schema_migrations (version) VALUES ('20130804231828');

INSERT INTO schema_migrations (version) VALUES ('20130804233923');
