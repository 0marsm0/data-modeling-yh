# YrkesCo Database Project – Data Modelling Lab

## 🧠 Overview

This project is a database design and implementation for **YrkesCo**, a vocational higher education provider in Sweden. The aim is to replace fragmented Excel spreadsheets and improve data accessibility and consistency by building a well-structured relational database.

The project is developed as part of a **Data Modelling** course.

## 🎯 Objectives

- Design conceptual, logical, and physical data models for YrkesCo.
- Implement the relational schema in PostgreSQL.
- Enforce business rules using constraints and triggers.
- Populate the database with sample data.
- Automate setup using Docker and shell scripting.

## 🧩 Core Features

- Management of students and their private data.
- Support for educational staff: teachers, education managers, and consultants.
- Course and program administration.
- Class and teaching assignment management.
- Company and contract tracking for external consultants.
- Support for multiple campuses (e.g., Stockholm, Gothenburg).

## 🛠️ Technologies Used

- **PostgreSQL**
- **SQL (DDL/DML + Triggers)**
- **Docker + Docker Compose**
- **Shell scripting (`init_db.sh`)**
- **Markdown + PDF (Docs & Presentation)**

## 🏗️ Project Structure

```
📁 docs/
    ├── business_rules.md
    └── lab_upggift_beskrivning.pdf
📁 models/
    ├── conceptual_model.png
    ├── logical_model.png
    └── physical_model.png
📁 reports/
    ├── presentation.pptx
    └── presentation.pdf
📁 sql/
    ├── create_tables.sql
    ├── constraints_triggers.sql
    ├── drop_tables.sql
    ├── insert_data.sql
    └── queries.sql
.env
docker-compose.yml
init_db.sh
README.md
```

## 🏁 How to Run the Project

1. Make sure you have Docker installed.
2. Run the initialization script:

   ```bash
   ./init_db.sh
   ```

3. This will:
   - Launch a PostgreSQL container
   - Copy all SQL files into it
   - Recreate all tables and insert sample data

> The database will be accessible on port `5432` (default), using credentials from `.env` or fallback defaults.

## 🔐 Business Rules & Triggers

Implemented rules:
- An education manager may manage **a maximum of 3 classes**.
- A program must have a **validity period of exactly 3 years**.

These are enforced via triggers in `constraints_triggers.sql`.

## 🧾 Data Model

The model includes the following key entities:

- **students**, **student_private**
- **employees**, **employee_private**, **roles**
- **programs**, **courses**, **program_course**
- **classes**, **class_student**
- **teaching_assignments**
- **companies**, **contracts**
- **campus**

Full ER and relational models are available under `/models`.

## 📊 Presentation

The presentation materials can be found in the `/reports` directory and include both `.pptx` and `.pdf` formats.

## 👥 Authors

- [Alisher Yuldashev]

## 📄 License

This project is for academic use only.
