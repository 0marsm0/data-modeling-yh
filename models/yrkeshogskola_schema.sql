-- Roles table
CREATE TABLE "roles"
(
  "role_id" SERIAL,
  "role_name" VARCHAR(100),
  PRIMARY KEY ("role_id")
);

-- Employees table (teachers, consultants, education managers, etc.)
CREATE TABLE "employees"
(
  "employee_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(100),
  "role_id" INTEGER,
  "is_consultant" BOOLEAN,
  PRIMARY KEY ("employee_id"),
  CONSTRAINT "FK_employees.role_id"
    FOREIGN KEY ("role_id")
      REFERENCES "roles"("role_id")
);

-- Employees table (Private information)
CREATE TABLE "employee_private"
(
  "employee_id" INTEGER,
  "personal_number" VARCHAR(20),
  "address" VARCHAR(100),
  "email_private" VARCHAR(100),
  "phone_number" VARCHAR(20),
  PRIMARY KEY ("employee_id")
);

-- Students table (General information)
CREATE TABLE "students"
(
  "student_id" SERIAL,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("student_id")
);

-- Students table (Private information)
CREATE TABLE "student_private"
(
  "student_id" INTEGER,
  "personal_number" VARCHAR(20),
  "address" VARCHAR(100),
  "email_private" VARCHAR(100),
  "phone_number" VARCHAR(20),
  PRIMARY KEY ("student_id")
);

-- Educational programs table
CREATE TABLE "programs"
(
  "program_id" SERIAL,
  "program_name" VARCHAR(100),
  "program_code" VARCHAR(10),
  "credits" INTEGER,
  "description" TEXT,
  "valid_from" DATE,
  "valid_to" DATE,
  PRIMARY KEY ("program_id")
);

-- Campuses table
CREATE TABLE "campus"
(
  "campus_id" SERIAL,
  "location" VARCHAR(100),
  "address" VARCHAR(100),
  "phone_number" VARCHAR(20),
  "email" VARCHAR(100),
  PRIMARY KEY ("campus_id")
);

-- Courses table
CREATE TABLE "courses"
(
  "course_id" SERIAL,
  "course_name" VARCHAR(100),
  "course_code" VARCHAR(10),
  "credits" INTEGER,
  "description" TEXT,
  "is_standalone" BOOLEAN,
  PRIMARY KEY ("course_id")
);

-- Bridge-table showing what course is part of the program
CREATE TABLE "program_course"
(
  "program_id" INTEGER,
  "course_id" INTEGER,
  PRIMARY KEY ("program_id", "course_id"),
  CONSTRAINT "FK_program_course.program_id"
    FOREIGN KEY ("program_id")
      REFERENCES "programs"("program_id"),
  CONSTRAINT "FK_program_course.course_id"
    FOREIGN KEY ("course_id")
      REFERENCES "courses"("course_id")
);

-- Companies table
CREATE TABLE "companies"
(
  "company_id" SERIAL,
  "company_name" VARCHAR(100),
  "organization_number" VARCHAR(20),
  "address" VARCHAR(100),
  "phone_number" VARCHAR(20),
  "email" VARCHAR(100),
  "has_f_skatt" BOOLEAN,
  PRIMARY KEY ("company_id")
);

-- Contracts table (includes company, consultant and campus)
CREATE TABLE "contracts"
(
  "contract_id" SERIAL,
  "employee_id" INTEGER,
  "company_id" INTEGER,
  "campus_id" INTEGER,
  "start_date" DATE,
  "end_date" DATE,
  "hourly_rate" DECIMAL,
  PRIMARY KEY ("contract_id"),
  CONSTRAINT "FK_contracts.employee_id"
    FOREIGN KEY ("employee_id")
      REFERENCES "employees"("employee_id"),
  CONSTRAINT "FK_contracts.company_id"
    FOREIGN KEY ("company_id")
      REFERENCES "companies"("company_id"),
  CONSTRAINT "FK_contracts.campus_id"
    FOREIGN KEY ("campus_id")
      REFERENCES "campus"("campus_id")
);

-- Classes table
CREATE TABLE "classes"
(
  "class_id" SERIAL,
  "class_name" VARCHAR(20),
  "education_manager_id" INTEGER,
  "program_id" INTEGER,
  "campus_id" INTEGER,
  "capacity" INTEGER,
  PRIMARY KEY ("class_id"),
  CONSTRAINT "FK_classes.education_manager_id"
    FOREIGN KEY ("education_manager_id")
      REFERENCES "employees"("employee_id"),
  CONSTRAINT "FK_classes.program_id"
    FOREIGN KEY ("program_id")
      REFERENCES "programs"("program_id"),
  CONSTRAINT "FK_classes.campus_id"
    FOREIGN KEY ("campus_id")
      REFERENCES "campus"("campus_id")
);

-- Bridge-table showing students in classes
CREATE TABLE "class_student"
(
  "class_id" INTEGER,
  "student_id" INTEGER,
  PRIMARY KEY ("class_id", "student_id"),
  CONSTRAINT "FK_class_student.class_id"
    FOREIGN KEY ("class_id")
      REFERENCES "classes"("class_id"),
  CONSTRAINT "FK_class_student.student_id"
    FOREIGN KEY ("student_id")
      REFERENCES "students"("student_id")
);

-- Teaching assignements table (Includes course, class and teacher)
CREATE TABLE "teaching_assignments"
(
  "assignment_id" SERIAL,
  "course_id" INTEGER,
  "class_id" INTEGER,
  "employee_id" INTEGER,
  "start_date" DATE,
  "end_date" DATE,
  PRIMARY KEY ("assignment_id"),
  CONSTRAINT "FK_teaching_assignments.course_id"
    FOREIGN KEY ("course_id")
      REFERENCES "courses"("course_id"),
  CONSTRAINT "FK_teaching_assignments.class_id"
    FOREIGN KEY ("class_id")
      REFERENCES "classes"("class_id"),
  CONSTRAINT "FK_teaching_assignments.employee_id"
    FOREIGN KEY ("employee_id")
      REFERENCES "employees"("employee_id")
);

-- Limit: max 3 classes per education manager
CREATE OR REPLACE FUNCTION check_max_classes()
RETURNS TRIGGER AS $$
BEGIN
  IF (SELECT COUNT(*) FROM classes 
      WHERE education_manager_id = NEW.education_manager_id) >= 3 THEN
    RAISE EXCEPTION 'Education manager (ID=%) already manages 3 classes';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_max_classes
BEFORE INSERT ON classes
FOR EACH ROW EXECUTE FUNCTION check_max_classes();

-- Restriction: the program must be valid for exactly 3 years
CREATE OR REPLACE FUNCTION check_program_duration()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.valid_to <> NEW.valid_from + INTERVAL '3 years' THEN
    RAISE EXCEPTION 'Program must be valid for exactly 3 years';
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_program_duration
BEFORE INSERT ON programs
FOR EACH ROW EXECUTE FUNCTION check_program_duration();