--------------------------------------------
-- Load data into the MIMIC-IV-ED schemas --
--------------------------------------------
\cd :mimic_data_dir

\COPY mimic_ed.edstays FROM edstays.csv DELIMITER ',' CSV HEADER NULL '';

\COPY mimic_ed.medrecon FROM medrecon.csv DELIMITER ',' CSV HEADER NULL '';

\COPY mimic_ed.pyxis FROM pyxis.csv DELIMITER ',' CSV HEADER NULL '';

\COPY mimic_ed.triage FROM triage.csv DELIMITER ',' CSV HEADER NULL '';

\COPY mimic_ed.vitalsign FROM vitalsign.csv DELIMITER ',' CSV HEADER NULL '';

\COPY mimic_ed.diagnoses FROM diagnosis.csv DELIMITER ',' CSV HEADER NULL '';