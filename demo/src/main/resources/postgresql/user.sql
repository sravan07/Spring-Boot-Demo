CREATE SEQUENCE user_sequence

CREATE TABLE IF NOT EXISTS public."user"
(
    id integer NOT NULL DEFAULT nextval('user_sequence'::regclass),
    user_name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    aadhar_number integer NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (id),
    CONSTRAINT user_name_unique_index UNIQUE (user_name)
)

INSERT INTO "user"(ID, USER_NAME, PASSWORD,first_name,last_name,aadhar_number)
  VALUES (1, 'superadmin@demo.com', /*admin1234*/'$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha', 
		  'Super', 'ADMIN', 0000000000);
