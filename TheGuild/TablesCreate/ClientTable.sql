CREATE TABLE part2.client
(
    client_id serial NOT NULL,
    status boolean NOT NULL DEFAULT true,
    first_name character varying(32) NOT NULL,
    last_name character varying(32) NOT NULL,
    organization character varying(32),
    description character varying,
    PRIMARY KEY (client_id)
);

ALTER TABLE IF EXISTS part2.client
    OWNER to postgres;

COMMENT ON TABLE part2.client
    IS 'Stores info on clients';