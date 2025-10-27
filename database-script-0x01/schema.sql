
-- =====================
--  USERS TABLE
-- =====================
CREATE TABLE users (
                       user_id        RAW(16) DEFAULT SYS_GUID() PRIMARY KEY,
                       name           VARCHAR2(100) NOT NULL,
                       email          VARCHAR2(100) UNIQUE NOT NULL,
                       password_hash  VARCHAR2(100) NOT NULL,
                       phone_number   VARCHAR2(20),
                       created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_users_email ON users(email);

-- =====================
--  PROPERTY TABLE
-- =====================
CREATE TABLE property (
                          property_id    RAW(16) DEFAULT SYS_GUID() PRIMARY KEY,
                          host_id        RAW(16) NOT NULL,
                          title          VARCHAR2(150) NOT NULL,
                          description    VARCHAR2(4000),
                          location       VARCHAR2(100),
                          price          NUMBER(10,2),
                          created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          CONSTRAINT fk_property_host FOREIGN KEY (host_id)
                              REFERENCES users(user_id)
);

CREATE INDEX idx_property_host ON property(host_id);

-- =====================
--  BOOKING TABLE
-- =====================
CREATE TABLE booking (
                         booking_id     RAW(16) DEFAULT SYS_GUID() PRIMARY KEY,
                         property_id    RAW(16) NOT NULL,
                         user_id        RAW(16) NOT NULL,
                         check_in       DATE NOT NULL,
                         check_out      DATE NOT NULL,
                         total_amount   NUMBER(10,2),
                         CONSTRAINT fk_booking_property FOREIGN KEY (property_id)
                             REFERENCES property(property_id),
                         CONSTRAINT fk_booking_user FOREIGN KEY (user_id)
                             REFERENCES users(user_id)
);

CREATE INDEX idx_booking_property ON booking(property_id);
CREATE INDEX idx_booking_user ON booking(user_id);

-- =====================
--  PAYMENT TABLE
-- =====================
CREATE TABLE payment (
                         payment_id     RAW(16) DEFAULT SYS_GUID() PRIMARY KEY,
                         booking_id     RAW(16) NOT NULL,
                         amount         NUMBER(10,2) NOT NULL,
                         payment_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         payment_method VARCHAR2(20),
                         payment_status VARCHAR2(20),
                         CONSTRAINT fk_payment_booking FOREIGN KEY (booking_id)
                             REFERENCES booking(booking_id)
);

CREATE INDEX idx_payment_booking ON payment(booking_id);

-- =====================
--  REVIEW TABLE
-- =====================
CREATE TABLE review (
                        review_id      RAW(16) DEFAULT SYS_GUID() PRIMARY KEY,
                        property_id    RAW(16) NOT NULL,
                        user_id        RAW(16) NOT NULL,
                        rating         NUMBER(1) CHECK (rating BETWEEN 1 AND 5),
                        comments       VARCHAR2(4000),
                        created_at     TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        CONSTRAINT fk_review_property FOREIGN KEY (property_id)
                            REFERENCES property(property_id),
                        CONSTRAINT fk_review_user FOREIGN KEY (user_id)
                            REFERENCES users(user_id)
);

CREATE INDEX idx_review_property ON review(property_id);
CREATE INDEX idx_review_user ON review(user_id);

-- =====================
--  MESSAGE TABLE
-- =====================
CREATE TABLE message (
                         message_id     RAW(16) DEFAULT SYS_GUID() PRIMARY KEY,
                         sender_id      RAW(16) NOT NULL,
                         receiver_id    RAW(16) NOT NULL,
                         message_text   VARCHAR2(2000),
                         sent_at        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                         CONSTRAINT fk_message_sender FOREIGN KEY (sender_id)
                             REFERENCES users(user_id),
                         CONSTRAINT fk_message_receiver FOREIGN KEY (receiver_id)
                             REFERENCES users(user_id)
);

CREATE INDEX idx_message_sender ON message(sender_id);
CREATE INDEX idx_message_receiver ON message(receiver_id);

-- =====================
-- COMMIT CHANGES
-- =====================
COMMIT;

-- =====================
-- END OF SCHEMA
-- =====================
