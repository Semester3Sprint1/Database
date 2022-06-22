CREATE TABLE part2.specialization
(
    spec_id serial NOT NULL,
    spec_name character varying(32) NOT NULL,
    description character varying,
    PRIMARY KEY (spec_id)
);

ALTER TABLE IF EXISTS part2.specialization
    OWNER to postgres;
	
	


