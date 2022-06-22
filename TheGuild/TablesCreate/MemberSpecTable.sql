CREATE TABLE part2.member_spec
(
    spec_id integer NOT NULL,
    member_id integer NOT NULL,
    last_update date NOT NULL DEFAULT now(),
    PRIMARY KEY (spec_id, member_id),
    CONSTRAINT specialization FOREIGN KEY (spec_id)
        REFERENCES part2.specialization (spec_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT member FOREIGN KEY (member_id)
        REFERENCES part2.member (member_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

ALTER TABLE IF EXISTS part2.member_spec
    OWNER to postgres;

COMMENT ON TABLE part2.member_spec
    IS 'Join table for members & their specializations';
