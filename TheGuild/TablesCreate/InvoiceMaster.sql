CREATE TABLE part2."invoiceMaster"
(
    invoice_num serial NOT NULL,
    client_id integer NOT NULL,
    invoice_date date NOT NULL DEFAULT now(),
    tax_rate integer,
    special_instructions character varying,
    PRIMARY KEY (invoice_num),
    CONSTRAINT client FOREIGN KEY (client_id)
        REFERENCES part2.client (client_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

ALTER TABLE IF EXISTS part2."invoiceMaster"
    OWNER to postgres;

COMMENT ON TABLE part2."invoiceMaster"
    IS 'Invoice clients for product purchases';