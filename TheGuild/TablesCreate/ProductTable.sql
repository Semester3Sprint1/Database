CREATE TABLE part2.product
(
    product_id serial NOT NULL,
    name character varying(32) NOT NULL,
    cost money NOT NULL,
    description character varying,
    PRIMARY KEY (product_id)
);

ALTER TABLE IF EXISTS part2.product
    OWNER to postgres;

COMMENT ON TABLE part2.product
    IS 'Store information on products ';