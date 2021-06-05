DROP SCHEMA IF EXISTS mimic_ed CASCADE;
CREATE SCHEMA mimic_ed;

---------------------
-- Creating tables --
---------------------

DROP TABLE IF EXISTS mimic_ed.edstays;
CREATE TABLE mimic_ed.edstays
(
  subject_id INTEGER NOT NULL,
  stay_id INTEGER NOT NULL,
  intime TIMESTAMP NOT NULL,
  outtime TIMESTAMP NOT NULL,
  sex CHAR(1) NOT NULL,
  dx1 VARCHAR(255) NOT NULL,
  dx1_icd VARCHAR(10) NOT NULL,
  dx2 VARCHAR(255) NOT NULL,
  dx2_icd VARCHAR(10) NOT NULL,
  dx3 VARCHAR(255) NOT NULL,
  dx3_icd VARCHAR(10) NOT NULL,
  dx4 VARCHAR(255) NOT NULL,
  dx4_icd VARCHAR(10) NOT NULL, 
  dx5 VARCHAR(255) NOT NULL,
  dx5_icd VARCHAR(10) NOT NULL, 
  dx6 VARCHAR(255) NOT NULL,
  dx6_icd VARCHAR(10) NOT NULL, 
  dx7 VARCHAR(255) NOT NULL,
  dx7_icd VARCHAR(10) NOT NULL, 
  dx8 VARCHAR(255) NOT NULL,
  dx8_icd VARCHAR(10) NOT NULL, 
  dx9 VARCHAR(255) NOT NULL,
  dx9_icd VARCHAR(10) NOT NULL
);

DROP TABLE IF EXISTS mimic_ed.medrecon;
CREATE TABLE mimic_ed.medrecon
(
  subject_id INTEGER NOT NULL,
  charttime TIMESTAMP,
  name VARCHAR(255),
  gsn VARCHAR(10),
  ndc VARCHAR(12),
  etc_rn SMALLINT NOT NULL,
  etccode VARCHAR(8),
  etcdescription VARCHAR(255)
);

DROP TABLE IF EXISTS mimic_ed.pyxis;
CREATE TABLE mimic_ed.pyxis
(
  stay_id INTEGER NOT NULL,
  charttime TIMESTAMP,
  med_rn SMALLINT NOT NULL,
  name VARCHAR(255),
  ifu VARCHAR(255),
  gsn_rn SMALLINT NOT NULL,
  gsn VARCHAR(10)
);

DROP TABLE IF EXISTS mimic_ed.triage;
CREATE TABLE mimic_ed.triage
(
  stay_id INTEGER NOT NULL,
  temp NUMERIC(10,4),
  HR NUMERIC(10,4),
  RR NUMERIC(10,4),
  SaO2 NUMERIC(10,4),
  Pain NUMERIC(10,4),
  Acuity NUMERIC(10,4),
  SBP NUMERIC(10,4),
  DBP NUMERIC(10,4)
);

DROP TABLE IF EXISTS mimic_ed.vitalsign;
CREATE TABLE mimic_ed.vitalsign
(
  stay_id INTEGER NOT NULL,
  charttime TIMESTAMP(0),
  temp NUMERIC(10,4),
  pulse NUMERIC(10,4),
  SBP INTEGER,
  DBP INTEGER,
  RR NUMERIC(10,4),
  O2Sat NUMERIC(10,4),
  Rhythm TEXT,
  Pain TEXT
);

DROP TABLE IF EXISTS mimic_ed.vitalsign;
CREATE TABLE mimic_ed.vitalsign
(
  stay_id INTEGER NOT NULL,
  charttime TIMESTAMP(0),
  temp NUMERIC(10,4),
  pulse NUMERIC(10,4),
  SBP INTEGER,
  DBP INTEGER,
  RR NUMERIC(10,4),
  O2Sat NUMERIC(10,4),
  Rhythm TEXT,
  Pain TEXT
);

DROP TABLE IF EXISTS mimic_ed.vitalsign_hl7;
CREATE TABLE mimic_ed.vitalsign_hl7
(
  stay_id INTEGER NOT NULL,
  charttime TIMESTAMP(0) NOT NULL,
  hr INTEGER,
  resp INTEGER,
  spo2 INTEGER,
  pulse INTEGER,
  nbp_d INTEGER,
  nbp_m INTEGER,
  nbp_s INTEGER
);