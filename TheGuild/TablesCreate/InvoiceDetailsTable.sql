CREATE TABLE part2."invoiceDetail"
(
    detail_id serial NOT NULL,
    invoice_num integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    PRIMARY KEY (detail_id),
    CONSTRAINT product FOREIGN KEY (product_id)
        REFERENCES part2.product (product_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT invoice FOREIGN KEY (invoice_num)
        REFERENCES part2."invoiceMaster" (invoice_num) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

ALTER TABLE IF EXISTS part2."invoiceDetail"
    OWNER to postgres;

COMMENT ON TABLE part2."invoiceDetail"
    IS 'Contains information on specific invoices';