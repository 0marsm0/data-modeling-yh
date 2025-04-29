-- Limit: max 3 classes per education manager
CREATE OR REPLACE FUNCTION check_max_classes()
RETURNS TRIGGER AS $$
BEGIN
  IF (
    SELECT COUNT(*) FROM classes 
    WHERE education_manager_id = NEW.education_manager_id
  ) >= 3 THEN
    RAISE EXCEPTION 'Education manager (ID=%) already manages 3 classes', NEW.education_manager_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_max_classes
BEFORE INSERT ON classes
FOR EACH ROW
EXECUTE FUNCTION check_max_classes();

-- Restriction: the program must be valid for exactly 3 years
CREATE OR REPLACE FUNCTION check_program_duration()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.valid_to - NEW.valid_from) BETWEEN 1095 - 30 AND 1095 + 30 THEN
        RETURN NEW;
    ELSE
        RAISE EXCEPTION 'Program must be valid for 3 years';
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_program_duration
BEFORE INSERT ON programs
FOR EACH ROW
EXECUTE FUNCTION check_program_duration();
