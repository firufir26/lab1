CREATE TABLE mail_reception (
    track_number VARCHAR(50) PRIMARY KEY,
    post_office_code INT NOT NULL,
    reception_datetime TIMESTAMP NOT NULL,
    declared_value NUMERIC(10, 2),
    total_cost NUMERIC(10, 2) NOT NULL,
    is_paid BOOLEAN NOT NULL,
    dispatch_datetime TIMESTAMP
);

CREATE TABLE correspondence (
    track_number VARCHAR(50) PRIMARY KEY,
    mail_type_code INT NOT NULL,
    weight NUMERIC(8, 3) NOT NULL,
    length NUMERIC(8, 2) NOT NULL,
    width NUMERIC(8, 2) NOT NULL,
    height NUMERIC(8, 2) NOT NULL,
    sender_code INT NOT NULL,
    stamps_amount NUMERIC(10, 2),
    FOREIGN KEY (track_number) REFERENCES mail_reception (track_number) ON DELETE CASCADE ON UPDATE CASCADE
);