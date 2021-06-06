DROP SCHEMA IF EXISTS mimic_ed CASCADE;
CREATE SCHEMA mimic_ed;

---------------------
-- Creating tables --
---------------------

DROP TABLE IF EXISTS mimic_ed.edstays;
CREATE TABLE mimic_ed.edstays
(
  subject_id INTEGER NOT NULL,
  hadm_id INTEGER,
  stay_id INTEGER NOT NULL,
  intime TIMESTAMP NOT NULL,
  outtime TIMESTAMP NOT NULL
);

DROP TABLE IF EXISTS mimic_ed.medrecon;
CREATE TABLE mimic_ed.medrecon
(
  subject_id INTEGER NOT NULL,
  stay_id INTEGER NOT NULL,
  charttime TIMESTAMP,
  name VARCHAR(255),
  gsn VARCHAR(10),
  ndc VARCHAR(12),
  etc_rn SMALLINT,
  etccode VARCHAR(8),
  etcdescription VARCHAR(255)
);

DROP TABLE IF EXISTS mimic_ed.pyxis;
CREATE TABLE mimic_ed.pyxis
(
  subject_id INTEGER NOT NULL,
  stay_id INTEGER NOT NULL,
  charttime TIMESTAMP,
  med_rn SMALLINT NOT NULL,
  name VARCHAR(255),
  gsn_rn SMALLINT NOT NULL,
  gsn VARCHAR(10)
);

DROP TABLE IF EXISTS mimic_ed.triage;
CREATE TABLE mimic_ed.triage
(
  subject_id INTEGER NOT NULL,
  stay_id INTEGER NOT NULL,
  temperature NUMERIC(10,4),
  heartrate NUMERIC(10,4),
  resprate NUMERIC(10,4),
  o2sat NUMERIC(10,4),
  sbp NUMERIC(10,4),
  dbp NUMERIC(10,4),
  pain NUMERIC(10,4),
  acuity NUMERIC(10,4),
  chiefcomplaint VARCHAR(255)
);

DROP TABLE IF EXISTS mimic_ed.vitalsign;
CREATE TABLE mimic_ed.vitalsign
(
  subject_id INTEGER NOT NULL,
  stay_id INTEGER NOT NULL,
  charttime TIMESTAMP,
  temperature NUMERIC(10,4),
  heartrate NUMERIC(10,4),
  resprate NUMERIC(10,4),
  o2sat NUMERIC(10,4),
  sbp NUMERIC(10,4),
  dbp NUMERIC(10,4),
  rhythm VARCHAR(255),
  pain VARCHAR(255)
);





DROP TABLE IF EXISTS mimic_ed.diagnoses;
CREATE TABLE mimic_ed.diagnoses
(
  subject_id INTEGER NOT NULL,
  stay_id INTEGER NOT NULL,
  seq_num INTEGER NOT NULL,
  icd_code CHAR(7),
  icd_version SMALLINT,
  icd_title VARCHAR(255)
);
