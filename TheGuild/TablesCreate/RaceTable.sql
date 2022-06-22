CREATE TABLE part2."Race"
(
    race_id serial NOT NULL,
    race character varying(32) NOT NULL,
    description character varying(50),
    PRIMARY KEY (race_id)
);

ALTER TABLE IF EXISTS part2."Race"
    OWNER to postgres;