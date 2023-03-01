CREATE TABLE patients (
    id  SERIAL PRIMARY KEY,
    name varchar(100),
    date_of_birth date
)

CREATE TABLE medical_histories (
    id  SERIAL PRIMARY KEY,
    admitted_at timestamp,
    patient_id int,
    status varchar(100)
)

CREATE TABLE invoices (
    id  SERIAL PRIMARY KEY,
    total_amount decimal(10,2),
    generated_at timestamp,
    payed_at timestamp,
    medical_history_id int
)

CREATE TABLE treatments (
    id  SERIAL PRIMARY KEY,
    type varchar(100),
    name varchar(100),
)


CREATE TABLE invoice_items (
    id  SERIAL PRIMARY KEY,
    unit_price decimal(10,2),
    quantity int,
    total_price decimal(10,2),
    invoice_id int,
    treatment_id int
)

