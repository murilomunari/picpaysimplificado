

CREATE TABLE user1 (
                       id NUMERIC(19,0) PRIMARY KEY,
                       first_name VARCHAR(200),
                       last_name VARCHAR(200),
                       document VARCHAR(18),
                       email VARCHAR(200),
                       balance NUMERIC(38,20)
);

CREATE TABLE transactions (
                              id numeric (19,0) PRIMARY KEY,
                              amount DECIMAL(38, 20),
                              sender_id NUMERIC(19,0),
                              receiver_id NUMERIC(19,0),
                              timestamp DATE,
                              FOREIGN KEY (sender_id) REFERENCES user1(id),
                              FOREIGN KEY (receiver_id) REFERENCES user1(id)
);


ALTER TABLE transactions
    ADD CONSTRAINT fk_sender_id FOREIGN KEY (sender_id) REFERENCES users(id)
    ADD CONSTRAINT fk_receiver_id FOREIGN KEY (receiver_id) REFERENCES users(id);
