-- Creating schema
CREATE SCHEMA IF NOT EXISTS education;
SET search_path TO education;

-- Roles/positions table
CREATE TABLE "roles" (
  "role_id" SERIAL PRIMARY KEY,
  "role_name" VARCHAR(100) NOT NULL UNIQUE
);

-- Campuses table
CREATE TABLE "campuses" (
  "campus_id" SERIAL PRIMARY KEY,
  "location" VARCHAR(100) NOT NULL,
  "address" VARCHAR(100) NOT NULL,
  "phone_number" VARCHAR(20),
  "email" VARCHAR(100) CHECK (email LIKE '%@%')
);

-- Companies table
CREATE TABLE "companies" (
  "company_id" SERIAL PRIMARY KEY,
  "company_name" VARCHAR(100) NOT NULL,
  "organization_number" VARCHAR(20) NOT NULL UNIQUE,
  "address" VARCHAR(100) NOT NULL,
  "phone_number" VARCHAR(20),
  "email" VARCHAR(100) CHECK (email LIKE '%@%'),
  "has_f_skatt" BOOLEAN NOT NULL DEFAULT TRUE
);

-- Employees table
CREATE TABLE "employees" (
  "employee_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(100) NOT NULL,
  "role_id" INTEGER NOT NULL REFERENCES "role"("role_id"),
  "is_consultant" BOOLEAN NOT NULL DEFAULT FALSE
);

-- Employees private data table
CREATE TABLE "employee_private" (
  "employee_id" INTEGER PRIMARY KEY REFERENCES "employee"("employee_id") ON DELETE CASCADE,
  "personal_number" VARCHAR(20) NOT NULL UNIQUE,
  "address" VARCHAR(100) NOT NULL,
  "email_private" VARCHAR(100) CHECK (email_private LIKE '%@%'),
  "phone_number" VARCHAR(20)
);

-- Students table
CREATE TABLE "students" (
  "student_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(100) NOT NULL,
);

-- Students private data table
CREATE TABLE "student_private" (
  "student_id" INTEGER PRIMARY KEY REFERENCES "students"("student_id") ON DELETE CASCADE,
  "personal_number" VARCHAR(20) NOT NULL UNIQUE,
  "address" VARCHAR(100) NOT NULL,
  "email_private" VARCHAR(100) CHECK (email_private LIKE '%@%'),
  "phone_number" VARCHAR(20)
);

-- Programs table
CREATE TABLE "programs" (
  "program_id" SERIAL PRIMARY KEY,
  "program_name" VARCHAR(100) NOT NULL,
  "program_code" VARCHAR(10) NOT NULL UNIQUE,
  "credits" INTEGER NOT NULL CHECK (credits > 0),
  "description" TEXT,
  "valid_from" DATE NOT NULL,
  "valid_to" DATE,
  CONSTRAINT "CHK_program_dates" CHECK ("valid_to" IS NULL OR "valid_to" > "valid_from")
);

-- Courses table
CREATE TABLE "courses" (
  "course_id" SERIAL PRIMARY KEY,
  "course_name" VARCHAR(100) NOT NULL,
  "course_code" VARCHAR(10) NOT NULL UNIQUE,
  "credits" INTEGER NOT NULL CHECK (credits > 0),
  "description" TEXT,
  "is_standalone" BOOLEAN NOT NULL DEFAULT FALSE
);

-- Classes table
CREATE TABLE "classes" (
  "class_id" SERIAL PRIMARY KEY,
  "class_name" VARCHAR(20) NOT NULL,
  "leader_id" INTEGER NOT NULL REFERENCES "employee"("employee_id"),
  "capacity" INTEGER NOT NULL CHECK (capacity > 0)
);

-- Function and trigger to limit the number of classes for one mentor (not more than 3)
CREATE OR REPLACE FUNCTION check_leader_classes()
RETURNS TRIGGER AS $$
BEGIN
    IF (SELECT COUNT(*) FROM "classes" WHERE "leader_id" = NEW."leader_id") >= 3 THEN
        RAISE EXCEPTION 'Mentor can\'t have more than 3 classes';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER tr_classes_leader_limit
BEFORE INSERT OR UPDATE ON "classes"
FOR EACH ROW EXECUTE FUNCTION check_leader_classes();

-- Bridge table between classes and students
CREATE TABLE "class_student" (
  "class_id" INTEGER NOT NULL REFERENCES "classes"("class_id") ON DELETE CASCADE,
  "student_id" INTEGER NOT NULL REFERENCES "students"("student_id") ON DELETE CASCADE,
  PRIMARY KEY ("class_id", "student_id")
);

-- Bridge table between classes and courses
CREATE TABLE "class_course" (
  "class_id" INTEGER NOT NULL REFERENCES "classes"("class_id"),
  "course_id" INTEGER NOT NULL REFERENCES "courses"("course_id"),
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  PRIMARY KEY ("class_id", "course_id"),
  CONSTRAINT "CHK_class_course_dates" CHECK ("end_date" > "start_date")
);

-- Bridge table between programs and courses
CREATE TABLE "program_course" (
  "program_id" INTEGER NOT NULL REFERENCES "programs"("program_id"),
  "course_id" INTEGER NOT NULL REFERENCES "courses"("course_id"),
  PRIMARY KEY ("program_id", "course_id")
);

-- Bridge table between campuses and programs (with limited validity)
CREATE TABLE "campus_program" (
  "campus_id" INTEGER NOT NULL REFERENCES "campus"("campus_id"),
  "program_id" INTEGER NOT NULL REFERENCES "programs"("program_id"),
  "approval_date" DATE NOT NULL DEFAULT CURRENT_DATE,
  "expiration_date" DATE GENERATED ALWAYS AS ("approval_date" + INTERVAL '3 years') STORED,
  PRIMARY KEY ("campus_id", "program_id")
);

-- Bridge table between teachers and courses
CREATE TABLE "course_teacher" (
  "course_id" INTEGER NOT NULL REFERENCES "courses"("course_id"),
  "teacher_id" INTEGER NOT NULL REFERENCES "employee"("employee_id"),
  "course_start" DATE NOT NULL,
  "course_end" DATE NOT NULL,
  PRIMARY KEY ("course_id", "teacher_id", "course_start"),
  CONSTRAINT "CHK_course_teacher_dates" CHECK ("course_end" > "course_start")
);

-- Bridge table between campuses and courses
CREATE TABLE "campus_course" (
  "campus_id" INTEGER NOT NULL REFERENCES "campus"("campus_id"),
  "course_id" INTEGER NOT NULL REFERENCES "courses"("course_id"),
  PRIMARY KEY ("campus_id", "course_id")
);

-- Contracts table
CREATE TABLE "contract" (
  "contract_id" SERIAL PRIMARY KEY,
  "employee_id" INTEGER NOT NULL REFERENCES "employee"("employee_id"),
  "company_id" INTEGER NOT NULL REFERENCES "companies"("company_id"),
  "campus_id" INTEGER NOT NULL REFERENCES "campus"("campus_id"),
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  "hourly_rate" INTEGER NOT NULL CHECK (hourly_rate > 0),
  CONSTRAINT "CHK_contract_dates" CHECK ("end_date" > "start_date")
);

-- Bridge table between students and programs
CREATE TABLE "student_program" (
  "student_id" INTEGER NOT NULL REFERENCES "students"("student_id"),
  "program_id" INTEGER NOT NULL REFERENCES "programs"("program_id"),
  "start_date" DATE NOT NULL,
  "end_date" DATE,
  PRIMARY KEY ("student_id", "program_id", "start_date"),
  CONSTRAINT "CHK_student_program_dates" CHECK ("end_date" IS NULL OR "end_date" > "start_date")
);


CREATE INDEX idx_classes_leader ON "classes" ("leader_id");
CREATE INDEX idx_class_student_student ON "class_student" ("student_id");
CREATE INDEX idx_course_teacher_teacher ON "course_teacher" ("teacher_id");