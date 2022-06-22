CREATE TABLE part2.mission_report
(
    report_id serial NOT NULL,
    mission_num integer NOT NULL,
    member_id integer NOT NULL,
    report_details character varying NOT NULL,
    PRIMARY KEY (report_id),
    CONSTRAINT member FOREIGN KEY (member_id)
        REFERENCES part2.member (member_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT mission FOREIGN KEY (mission_num)
        REFERENCES part2.mission (mission_num) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

ALTER TABLE IF EXISTS part2.mission_report
    OWNER to postgres;

COMMENT ON TABLE part2.mission_report
    IS 'Members file missions reports for missions that they have made progress in';