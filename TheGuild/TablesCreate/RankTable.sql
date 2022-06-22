CREATE TABLE part2.rank
(
    rank_id serial NOT NULL,
    rank_name character varying(32) NOT NULL,
    description character varying,
    PRIMARY KEY (rank_id)
);

ALTER TABLE IF EXISTS part2.rank
    OWNER to postgres;

COMMENT ON TABLE part2.rank
    IS 'Stores info on different guild ranks';