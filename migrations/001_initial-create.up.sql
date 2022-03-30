CREATE TABLE users (
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    fullname varchar NOT NULL,
    birthdate date NOT NULL,
    email varchar NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY (id)
);
