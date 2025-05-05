# Business rules


## 1. Datasekretess och Separering
Allmän data (t.ex. förnamn, efternamn) och privata data (t.ex. personnummer, adress, privat e-post, telefonnummer) lagras i separata tabeller:

- students och student_private

- employees och employee_private

Syfte: Säkerställa GDPR-efterlevnad, förbättra datasäkerhet och skapa en modulär design.


## 2. Roller och Anställdas Struktur

Varje anställd tilldelas en roll (t.ex. Lärare, Konsult, Utbildningsledare) från tabellen roles.

Konsulter är anställda där is_consultant = true.

Regel: Konsulter fungerar som utbildare.


## 3. Konsulter och Företagskoppling
Konsulter måste vara kopplade till ett företag via contracts.

Företag registreras med information såsom organisationsnummer, adress, F-skattsstatus (has_f_skatt), telefonnummer och e-post.


## 4. Kontrakt och Undervisningsuppdrag
Kontrakt definierar konsultens timarvode, vilken campus de arbetar på samt start- och slutdatum.

Undervisningsuppdrag (teaching_assignments) kopplar anställda till att undervisa specifika kurser i specifika klasser, inklusive datumintervall.


## 5. Program och Kursstruktur
Program måste vara giltiga i exakt tre år (±30 dagar).

Säkerställs via triggern check_program_duration().

Program består av flera kurser (många-till-många-relation via bryggtabellen program_course).

Kurser kan också erbjudas som fristående kurser (is_standalone = true).


## 6. Klass- och Studenthantering
Varje klass är kopplad till en campus och valfritt till ett program (nullable för fristående kurser).

Studenter tilldelas klasser via bryggtabellen class_student.

Regel: Dubbletter förhindras genom sammansatta primärnycklar.


## 7. Begränsningar för Utbildningsledare
Varje utbildningsledare får ansvara för maximalt tre klasser.

Säkerställs via triggern check_max_classes().


## 8. Campusadministration
YrkesCo driver för närvarande två campus: Stockholm och Göteborg.

Systemet är skalbart för framtida expansion till fler orter.

Regel: Varje klass måste tillhöra en existerande campus.
