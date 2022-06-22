CREATE TABLE part2.member
(
    member_id serial NOT NULL,
    first_name character varying(32) NOT NULL,
    last_name character varying(32) NOT NULL,
    race character varying(10) NOT NULL,
    title character varying(32),
    rank_id integer,
    join_date date NOT NULL DEFAULT now(),
    PRIMARY KEY (member_id),
    CONSTRAINT rank FOREIGN KEY (rank_id)
        REFERENCES part2.rank (rank_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID
);

ALTER TABLE IF EXISTS part2.member
    OWNER to postgres;

COMMENT ON TABLE part2.member
    IS 'Store info on guild members';