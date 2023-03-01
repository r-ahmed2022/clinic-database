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

create TABLE patient_treatments (
    id SERIAL PRIMARY KEY,
    patient_id int,
    treatment_id int,
    FOREIGN KEY ( patient_id) REFERENCES patients(id),
    FOREIGN KEY (treatment_id) REFERENCES treatments(id)
)

CREATE TABLE patient_medical_histories (
    id SERIAL PRIMARY KEY,
    patient_id int,
    medical_histories_id INT,
    FOREIGN KEY (medical_histories_id) REFERENCES medical_histories(id),
    FOREIGN KEY (patient_id) REFERENCES patients(id)
)

CREATE INDEX invoice_id_indx ON invoice_items(invoice_id);
CREATE INDEX treatment_id_indx ON invoice_items(treatment_id);
CREATE INDEX patient_id_indx ON medical_histories(patient_id);
CREATE INDEX medical_history__id_indx ON invoices(medical_history__id);
CREATE INDEX medical_historeis_id_indx ON medicalHist_treatments(medical_historeis_id);
 CREATE INDEX medhist_treatment_id_indx ON medicalHist_treatments(treatment_id);
