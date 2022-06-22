CREATE TABLE part2.mission
(
    mission_num serial NOT NULL,
    job_name character varying(64) NOT NULL,
    job_description character varying NOT NULL,
    payout money NOT NULL,
    creation_date date NOT NULL DEFAULT now(),
    deadline_date date,
    client_id integer,
    PRIMARY KEY (mission_num),
    CONSTRAINT client FOREIGN KEY (client_id)
        REFERENCES part2.client (client_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

ALTER TABLE IF EXISTS part2.mission
    OWNER to postgres;

COMMENT ON TABLE part2.mission
    IS 'Stores data on missions';