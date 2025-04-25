-- Roles table
CREATE TABLE "roles" (
  "role_id" SERIAL PRIMARY KEY,
  "role_name" VARCHAR(100) NOT NULL
);

-- Employees table (teachers, consultants, education managers, etc.)
CREATE TABLE "employees" (
  "employee_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(100) NOT NULL,
  "role_id" INTEGER NOT NULL,
  "is_consultant" BOOLEAN NOT NULL,
  CONSTRAINT "FK_employees.role_id"
    FOREIGN KEY ("role_id") REFERENCES "roles"("role_id")
);

-- Employees (Private information)
CREATE TABLE "employee_private" (
  "employee_id" INTEGER PRIMARY KEY,
  "personal_number" VARCHAR(20) NOT NULL,
  "address" VARCHAR(100) NOT NULL,
  "email_private" VARCHAR(100) NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL
);

-- Students (General)
CREATE TABLE "students" (
  "student_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50) NOT NULL,
  "last_name" VARCHAR(100) NOT NULL
);

-- Students (Private)
CREATE TABLE "student_private" (
  "student_id" INTEGER PRIMARY KEY,
  "personal_number" VARCHAR(20) NOT NULL,
  "address" VARCHAR(100) NOT NULL,
  "email_private" VARCHAR(100) NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL
);

-- Educational programs
CREATE TABLE "programs" (
  "program_id" SERIAL PRIMARY KEY,
  "program_name" VARCHAR(100) NOT NULL,
  "program_code" VARCHAR(10) NOT NULL,
  "credits" INTEGER NOT NULL,
  "description" TEXT,
  "valid_from" DATE NOT NULL,
  "valid_to" DATE NOT NULL
);

-- Campuses
CREATE TABLE "campus" (
  "campus_id" SERIAL PRIMARY KEY,
  "location" VARCHAR(100) NOT NULL,
  "address" VARCHAR(100) NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL,
  "email" VARCHAR(100) NOT NULL
);

-- Courses
CREATE TABLE "courses" (
  "course_id" SERIAL PRIMARY KEY,
  "course_name" VARCHAR(100) NOT NULL,
  "course_code" VARCHAR(10) NOT NULL,
  "credits" INTEGER NOT NULL,
  "description" TEXT,
  "is_standalone" BOOLEAN NOT NULL
);

-- Bridge: program_course
CREATE TABLE "program_course" (
  "program_id" INTEGER NOT NULL,
  "course_id" INTEGER NOT NULL,
  PRIMARY KEY ("program_id", "course_id"),
  CONSTRAINT "FK_program_course.program_id"
    FOREIGN KEY ("program_id") REFERENCES "programs"("program_id"),
  CONSTRAINT "FK_program_course.course_id"
    FOREIGN KEY ("course_id") REFERENCES "courses"("course_id")
);

-- Companies
CREATE TABLE "companies" (
  "company_id" SERIAL PRIMARY KEY,
  "company_name" VARCHAR(100) NOT NULL,
  "organization_number" VARCHAR(20) NOT NULL,
  "address" VARCHAR(100) NOT NULL,
  "phone_number" VARCHAR(20) NOT NULL,
  "email" VARCHAR(100) NOT NULL,
  "has_f_skatt" BOOLEAN NOT NULL
);

-- Contracts
CREATE TABLE "contracts" (
  "contract_id" SERIAL PRIMARY KEY,
  "employee_id" INTEGER NOT NULL,
  "company_id" INTEGER NOT NULL,
  "campus_id" INTEGER NOT NULL,
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  "hourly_rate" DECIMAL NOT NULL,
  CONSTRAINT "FK_contracts.employee_id"
    FOREIGN KEY ("employee_id") REFERENCES "employees"("employee_id"),
  CONSTRAINT "FK_contracts.company_id"
    FOREIGN KEY ("company_id") REFERENCES "companies"("company_id"),
  CONSTRAINT "FK_contracts.campus_id"
    FOREIGN KEY ("campus_id") REFERENCES "campus"("campus_id")
);

-- Classes
CREATE TABLE "classes" (
  "class_id" SERIAL PRIMARY KEY,
  "class_name" VARCHAR(20) NOT NULL,
  "education_manager_id" INTEGER NOT NULL,
  "program_id" INTEGER NOT NULL,
  "campus_id" INTEGER NOT NULL,
  "capacity" INTEGER NOT NULL,
  CONSTRAINT "FK_classes.education_manager_id"
    FOREIGN KEY ("education_manager_id") REFERENCES "employees"("employee_id"),
  CONSTRAINT "FK_classes.program_id"
    FOREIGN KEY ("program_id") REFERENCES "programs"("program_id"),
  CONSTRAINT "FK_classes.campus_id"
    FOREIGN KEY ("campus_id") REFERENCES "campus"("campus_id")
);

-- Bridge: class_student
CREATE TABLE "class_student" (
  "class_id" INTEGER NOT NULL,
  "student_id" INTEGER NOT NULL,
  PRIMARY KEY ("class_id", "student_id"),
  CONSTRAINT "FK_class_student.class_id"
    FOREIGN KEY ("class_id") REFERENCES "classes"("class_id"),
  CONSTRAINT "FK_class_student.student_id"
    FOREIGN KEY ("student_id") REFERENCES "students"("student_id")
);

-- Teaching assignments
CREATE TABLE "teaching_assignments" (
  "assignment_id" SERIAL PRIMARY KEY,
  "course_id" INTEGER NOT NULL,
  "class_id" INTEGER NOT NULL,
  "employee_id" INTEGER NOT NULL,
  "start_date" DATE NOT NULL,
  "end_date" DATE NOT NULL,
  CONSTRAINT "FK_teaching_assignments.course_id"
    FOREIGN KEY ("course_id") REFERENCES "courses"("course_id"),
  CONSTRAINT "FK_teaching_assignments.class_id"
    FOREIGN KEY ("class_id") REFERENCES "classes"("class_id"),
  CONSTRAINT "FK_teaching_assignments.employee_id"
    FOREIGN KEY ("employee_id") REFERENCES "employees"("employee_id")
);
