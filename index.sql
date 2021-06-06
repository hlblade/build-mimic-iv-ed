  
-----------------------------------------
-----------------------------------------
-- Indexes for all MIMIC-IV-ED modules --
-----------------------------------------
-----------------------------------------
SET search_path TO mimic_ed;

DROP INDEX IF EXISTS edstays_idx01;
CREATE INDEX edstays_idx01
  ON edstays (subject_id);
  
  
DROP INDEX IF EXISTS edstays_idx02;
CREATE INDEX edstays_idx02
  ON edstays (hadm_id);
  
  
DROP INDEX IF EXISTS edstays_idx03;
CREATE INDEX edstays_idx03
  ON edstays (stay_id);


DROP INDEX IF EXISTS medrecon_idx01;
CREATE INDEX medrecon_idx01
  ON medrecon (subject_id);

DROP INDEX IF EXISTS medrecon_idx02;
CREATE INDEX medrecon_idx02
  ON medrecon (stay_id);

DROP INDEX IF EXISTS pyxis_idx01;
CREATE INDEX pyxis_idx01
  ON pyxis (subject_id);

DROP INDEX IF EXISTS pyxis_idx02;
CREATE INDEX pyxis_idx02
  ON pyxis (stay_id);
  
DROP INDEX IF EXISTS pyxis_idx03;
CREATE INDEX pyxis_idx03
  ON pyxis (name);

DROP INDEX IF EXISTS triage_idx01;
CREATE INDEX triage_idx01
  ON triage (subject_id);

DROP INDEX IF EXISTS triage_idx02;
CREATE INDEX triage_idx02
  ON triage (stay_id);

DROP INDEX IF EXISTS vitalsign_idx01;
CREATE INDEX vitalsign_idx01
  ON vitalsign (subject_id);

DROP INDEX IF EXISTS vitalsign_idx02;
CREATE INDEX vitalsign_idx02
  ON vitalsign (stay_id);


DROP INDEX IF EXISTS diagnoses_idx01;
CREATE INDEX diagnoses_idx01
  ON diagnoses (subject_id);

DROP INDEX IF EXISTS diagnoses_idx02;
CREATE INDEX diagnoses_idx02
  ON diagnoses (stay_id);

DROP INDEX IF EXISTS diagnoses_idx03;
CREATE INDEX diagnoses_idx03
  ON diagnoses (icd_code);



