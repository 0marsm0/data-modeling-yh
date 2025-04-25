INSERT INTO roles (role_name) VALUES
('Teacher'),
('Education Manager'),
('Admissions coordinator'),
('Financial manager'),
('LIA supervisor');


INSERT INTO employees (first_name, last_name, role_id, is_consultant) VALUES
('Anna', 'Svensson', 1, false),
('Björn', 'Nilsson', 1, false),
('Carina', 'Andersson', 2, false),
('David', 'Lindberg', 1, false),
('Eva', 'Johansson', 3, false),
('Fredrik', 'Olsson', 1, true),
('Greta', 'Bergström', 4, true),
('Henrik', 'Karlsson', 2, false),
('Isabelle', 'Persson', 1, false),
('Jonas', 'Ek', 5, true),
('Karin', 'Wikström', 1, false),
('Lars', 'Åkesson', 1, false),
('Maria', 'Lund', 3, false),
('Nils', 'Borg', 4, true),
('Oskar', 'Nyström', 1, true),
('Petra', 'Holm', 2, false),
('Quentin', 'Sjöberg', 5, true),
('Rebecca', 'Ström', 1, false);


INSERT INTO employee_private (employee_id, personal_number, address, email_private, phone_number) VALUES
(1, '19750101-1234', 'Strandvägen 15, 114 56 Stockholm', 'anna.svensson@private.com', '0701111111'),
(2, '19760202-2345', 'Karlavägen 12, 114 31 Stockholm', 'bjorn.nilsson@private.com', '0702222222'),
(3, '19770303-3456', 'Östermalmsgatan 5, 114 26 Stockholm', 'carina.andersson@private.com', '0703333333'),
(4, '19780404-4567', 'Sveavägen 45, 111 34 Stockholm', 'david.lindberg@private.com', '0704444444'),
(5, '19790505-5678', 'Drottninggatan 22, 111 21 Stockholm', 'eva.johansson@private.com', '0705555555'),
(6, '19800606-6789', 'Kungsportsavenyen 8, 411 36 Göteborg', 'fredrik.olsson@private.com', '0706666666'),
(7, '19810707-7890', 'Östra Hamngatan 15, 411 10 Göteborg', 'greta.bergstrom@private.com', '0707777777'),
(8, '19820808-8901', 'Vasagatan 12, 411 24 Göteborg', 'henrik.karlsson@private.com', '0708888888'),
(9, '19830909-9012', 'Kungsgatan 18, 411 19 Göteborg', 'isabelle.persson@private.com', '0709999999'),
(10, '19841010-0123', 'Drottninggatan 28, 411 07 Göteborg', 'jonas.ek@private.com', '0701010101'),
(11, '19851111-1234', 'Södra Vägen 8, 412 54 Göteborg', 'karin.wikstrom@private.com', '0701212121'),
(12, '19861212-2345', 'Chalmersgatan 5, 412 51 Göteborg', 'lars.akesson@private.com', '0701313131'),
(13, '19871313-3456', 'Linnégatan 22, 413 08 Göteborg', 'maria.lund@private.com', '0701414141'),
(14, '19881414-4567', 'Viktoriagatan 8, 411 25 Göteborg', 'nils.borg@private.com', '0701515151'),
(15, '19891515-5678', 'Nordstan 5, 411 06 Göteborg', 'oskar.nystrom@private.com', '0701616161'),
(16, '19901616-6789', 'Kungsportsavenyen 15, 411 36 Göteborg', 'petra.holm@private.com', '0701717171'),
(17, '19911717-7890', 'Östra Hamngatan 22, 411 10 Göteborg', 'quentin.sjoberg@private.com', '0701818181'),
(18, '19921818-8901', 'Vasagatan 18, 411 24 Göteborg', 'rebecca.strom@private.com', '0701919191');


INSERT INTO students (first_name, last_name) VALUES
('Lisa', 'Karlsson'),
('Johan', 'Pettersson'),
('Sara', 'Eriksson'),
('Markus', 'Nilsson'),
('Emma', 'Lundgren'),
('Oskar', 'Hansson'),
('Elin', 'Andersson'),
('Lina', 'Bergström'),
('Erik', 'Sjöberg'),
('Maja', 'Wikström'),
('Tobias', 'Norén'),
('Frida', 'Eliasson'),
('Daniel', 'Forsberg'),
('Agnes', 'Nyström'),
('Linus', 'Sundberg'),
('Josefin', 'Lindqvist'),
('Alexander', 'Nyberg'),
('Rebecca', 'Holmström'),
('Kristoffer', 'Strand'),
('Nathalie', 'Viklund'),
('Sebastian', 'Engström'),
('Isabella', 'Åberg'),
('Anton', 'Hellgren'),
('Amanda', 'Söderlund'),
('Joel', 'Sandström'),
('Molly', 'Björk'),
('Hampus', 'Östlund'),
('Thea', 'Blomqvist'),
('Noah', 'Lindén'),
('Lovisa', 'Ekström'),
('Felix', 'Palm'),
('Sofia', 'Norberg'),
('Elias', 'Dahlberg'),
('Hanna', 'Strömberg'),
('Oscar', 'Lindholm'),
('Stina', 'Frisk'),
('Malte', 'Hedlund'),
('Nora', 'Håkansson'),
('Leo', 'Törnqvist'),
('Tilde', 'Ljung'),
('Simon', 'Wallin'),
('Freja', 'Elofsson'),
('David', 'Granlund'),
('Tyra', 'Norén'),
('Albin', 'Borg'),
('Selma', 'Rydberg'),
('Isak', 'Sjödin'),
('Julia', 'Ekblad'),
('William', 'Holgersson'),
('Ester', 'Åkesson'),
('Oliver', 'Bergman'),
('Alice', 'Lindgren'),
('William', 'Söderberg'),
('Mira', 'Falk'),
('Lucas', 'Engqvist'),
('Ebba', 'Hedman'),
('Hugo', 'Byström'),
('Nellie', 'Rosén'),
('Alexander', 'Öberg'),
('Ellen', 'Löfgren'),
('Adam', 'Berglund'),
('Julia', 'Skoglund'),
('Noah', 'Månsson'),
('Moa', 'Bäckström'),
('Leo', 'Åström'),
('Klara', 'Dahl'),
('Viktor', 'Holmqvist'),
('Lilly', 'Bergqvist'),
('Max', 'Lundqvist'),
('Elsa', 'Sjöström'),
('Isak', 'Wallentin'),
('Saga', 'Adolfsson'),
('Theo', 'Bergsten'),
('Lova', 'Eklund'),
('Filip', 'Haglund'),
('Maja', 'Lundin'),
('Oscar', 'Strömberg'),
('Elin', 'Forslund'),
('Simon', 'Borgström'),
('Alva', 'Höglund');


INSERT INTO student_private (student_id, personal_number, address, email_private, phone_number) VALUES
(1, '20000101-1234', 'Valhallavägen 10, 114 22 Stockholm', 'lisa.karlsson@mail.com', '0701000101'),
(2, '20000102-2345', 'Götgatan 45, 118 26 Stockholm', 'johan.pettersson@mail.com', '0701000102'),
(3, '20000103-3456', 'Odengatan 22, 113 51 Stockholm', 'sara.eriksson@mail.com', '0701000103'),
(4, '20000104-4567', 'Kungsgatan 33, 111 56 Stockholm', 'markus.nilsson@mail.com', '0701000104'),
(5, '20000105-5678', 'Birger Jarlsgatan 8, 114 34 Stockholm', 'emma.lundgren@mail.com', '0701000105'),
(6, '20000106-6789', 'Sankt Eriksgatan 92, 113 32 Stockholm', 'oskar.hansson@mail.com', '0701000106'),
(7, '20000107-7890', 'Lidingövägen 2, 114 33 Stockholm', 'elin.andersson@mail.com', '0701000107'),
(8, '20000108-8901', 'Norr Mälarstrand 42, 112 20 Stockholm', 'lina.bergstrom@mail.com', '0701000108'),
(9, '20000109-9012', 'Hornsgatan 75, 117 26 Stockholm', 'erik.sjoberg@mail.com', '0701000109'),
(10, '20000110-0123', 'Södermalmsallén 12, 118 63 Stockholm', 'maja.wikstrom@mail.com', '0701000110'),
(11, '20000111-1234', 'Fleminggatan 39, 112 26 Stockholm', 'tobias.noren@mail.com', '0701000111'),
(12, '20000112-2345', 'Tulegatan 8, 113 53 Stockholm', 'frida.eliasson@mail.com', '0701000112'),
(13, '20000113-3456', 'Sveavägen 18, 111 57 Stockholm', 'daniel.forsberg@mail.com', '0701000113'),
(14, '20000114-4567', 'Vasagatan 10, 111 20 Stockholm', 'agnes.nystrom@mail.com', '0701000114'),
(15, '20000115-5678', 'Karlavägen 6, 114 23 Stockholm', 'linus.sundberg@mail.com', '0701000115'),
(16, '20000116-6789', 'Rådmansgatan 15, 113 58 Stockholm', 'josefin.lindqvist@mail.com', '0701000116'),
(17, '20000117-7890', 'Kungsbron 2, 111 22 Stockholm', 'alexander.nyberg@mail.com', '0701000117'),
(18, '20000118-8901', 'Långholmsgatan 3, 117 33 Stockholm', 'rebecca.holmstrom@mail.com', '0701000118'),
(19, '20000119-9012', 'Artillerigatan 11, 114 51 Stockholm', 'kristoffer.strand@mail.com', '0701000119'),
(20, '20000120-0123', 'Ringvägen 120, 116 61 Stockholm', 'nathalie.viklund@mail.com', '0701000120'),
(21, '20000121-1234', 'Åsögatan 45, 118 29 Stockholm', 'sebastian.engstrom@mail.com', '0701000121'),
(22, '20000122-2345', 'Västmannagatan 40, 113 25 Stockholm', 'isabella.aberg@mail.com', '0701000122'),
(23, '20000123-3456', 'Upplandsgatan 10, 113 28 Stockholm', 'anton.hellgren@mail.com', '0701000123'),
(24, '20000124-4567', 'Hälsingegatan 20, 113 43 Stockholm', 'amanda.soderlund@mail.com', '0701000124'),
(25, '20000125-5678', 'Drottninggatan 82, 111 36 Stockholm', 'joel.sandstrom@mail.com', '0701000125'),
(26, '20000126-6789', 'Tomtebogatan 5, 113 39 Stockholm', 'molly.bjork@mail.com', '0701000126'),
(27, '20000127-7890', 'Surbrunnsgatan 14, 114 27 Stockholm', 'hampus.ostlund@mail.com', '0701000127'),
(28, '20000128-8901', 'Frejgatan 25, 113 49 Stockholm', 'thea.blomqvist@mail.com', '0701000128'),
(29, '20000129-9012', 'Nybrogatan 40, 114 40 Stockholm', 'noah.linden@mail.com', '0701000129'),
(30, '20000130-0123', 'Roslagsgatan 5, 113 55 Stockholm', 'lovisa.ekstrom@mail.com', '0701000130'),
(31, '20000131-1234', 'Hagagatan 3, 113 48 Stockholm', 'felix.palm@mail.com', '0701000131'),
(32, '20000201-2345', 'Grevgatan 18, 114 53 Stockholm', 'sofia.norberg@mail.com', '0701000132'),
(33, '20000202-3456', 'Tegnérgatan 5, 111 40 Stockholm', 'elias.dahlberg@mail.com', '0701000133'),
(34, '20000203-4567', 'Erik Dahlbergsgatan 11, 115 20 Stockholm', 'hanna.stromberg@mail.com', '0701000134'),
(35, '20000204-5678', 'Rosenlundsgatan 12, 118 53 Stockholm', 'oscar.lindholm@mail.com', '0701000135'),
(36, '20000205-6789', 'Avenyn 25, 411 36 Göteborg', 'stina.frisk@mail.com', '0702000101'),
(37, '20000206-7890', 'Linnégatan 12, 413 04 Göteborg', 'malte.hedlund@mail.com', '0702000102'),
(38, '20000207-8901', 'Andra Långgatan 18, 413 27 Göteborg', 'nora.hakansson@mail.com', '0702000103'),
(39, '20000208-9012', 'Östra Hamngatan 21, 411 10 Göteborg', 'leo.tornqvist@mail.com', '0702000104'),
(40, '20000209-0123', 'Vasagatan 5, 411 24 Göteborg', 'tilde.ljung@mail.com', '0702000105'),
(41, '20000210-1234', 'Chalmersgatan 4, 412 96 Göteborg', 'simon.wallin@mail.com', '0702000106'),
(42, '20000211-2345', 'Stampgatan 14, 411 01 Göteborg', 'freja.elofsson@mail.com', '0702000107'),
(43, '20000212-3456', 'Norra Hamngatan 12, 411 14 Göteborg', 'david.granlund@mail.com', '0702000108'),
(44, '20000213-4567', 'Storgatan 3, 411 24 Göteborg', 'tyra.noren@mail.com', '0702000109'),
(45, '20000214-5678', 'Kungsgatan 25, 411 19 Göteborg', 'albin.borg@mail.com', '0702000110'),
(46, '20000215-6789', 'Järntorget 1, 413 04 Göteborg', 'selma.rydberg@mail.com', '0702000111'),
(47, '20000216-7890', 'Karl Johansgatan 21, 414 59 Göteborg', 'isak.sjodin@mail.com', '0702000112'),
(48, '20000217-8901', 'Majorna Torg 8, 414 60 Göteborg', 'julia.ekblad@mail.com', '0702000113'),
(49, '20000218-9012', 'Gibraltargatan 7, 411 32 Göteborg', 'william.holgersson@mail.com', '0702000114'),
(50, '20000219-0123', 'Haga Nygata 9, 413 01 Göteborg', 'ester.akesson@mail.com', '0702000115'),
(51, '20000220-1234', 'Eklandagatan 5, 412 55 Göteborg', 'oliver.bergman@mail.com', '0702000116'),
(52, '20000221-2345', 'Södra Vägen 20, 412 54 Göteborg', 'alice.lindgren@mail.com', '0702000117'),
(53, '20000222-3456', 'Första Långgatan 16, 413 03 Göteborg', 'william.soderberg@mail.com', '0702000118'),
(54, '20000223-4567', 'Landala Torg 1, 411 29 Göteborg', 'mira.falk@mail.com', '0702000119'),
(55, '20000224-5678', 'Redbergsvägen 12, 416 65 Göteborg', 'lucas.engqvist@mail.com', '0702000120'),
(56, '20000225-6789', 'Friggagatan 22, 411 01 Göteborg', 'ebba.hedman@mail.com', '0702000121'),
(57, '20000226-7890', 'Olskroksgatan 5, 416 66 Göteborg', 'hugo.bystrom@mail.com', '0702000122'),
(58, '20000227-8901', 'Gamlestadsvägen 10, 415 02 Göteborg', 'nellie.rosen@mail.com', '0702000123'),
(59, '20000228-9012', 'Danska Vägen 6, 416 59 Göteborg', 'alexander.oberg@mail.com', '0702000124'),
(60, '20000301-0123', 'Sankt Sigfridsgatan 13, 412 66 Göteborg', 'ellen.lofgren@mail.com', '0702000125'),
(61, '20000302-1234', 'Korsvägen 1, 412 54 Göteborg', 'adam.berglund@mail.com', '0702000126'),
(62, '20000303-2345', 'Nordhemsgatan 17, 413 06 Göteborg', 'julia.skoglund@mail.com', '0702000127'),
(63, '20000304-3456', 'Ånäsvägen 20, 416 67 Göteborg', 'noah.mansson@mail.com', '0702000128'),
(64, '20000305-4567', 'Nya Allén 15, 411 38 Göteborg', 'moa.backstrom@mail.com', '0702000129'),
(65, '20000306-5678', 'Olof Wijksgatan 9, 412 55 Göteborg', 'leo.astrom@mail.com', '0702000130'),
(66, '20000307-6789', 'Aschebergsgatan 20, 411 33 Göteborg', 'klara.dahl@mail.com', '0702000131'),
(67, '20000308-7890', 'Övre Husargatan 15, 413 14 Göteborg', 'viktor.holmqvist@mail.com', '0702000132'),
(68, '20000309-8901', 'Parkgatan 12, 411 38 Göteborg', 'lilly.bergqvist@mail.com', '0702000133'),
(69, '20000310-9012', 'Hvitfeldtsgatan 5, 411 20 Göteborg', 'max.lundqvist@mail.com', '0702000134'),
(70, '20000311-0123', 'Vegagatan 4, 413 09 Göteborg', 'elsa.sjostrom@mail.com', '0702000135'),
(71, '20040812-2398', 'Lundvägen 12, Sundbyberg', 'isak.wallentin@gmail.com', '070-123 45 71'),
(72, '20030923-1847', 'Björkvägen 5, Solna', 'saga.adolfsson@gmail.com', '070-123 45 72'),
(73, '20051104-0983', 'Skogsvägen 18, Täby', 'theo.bergsten@gmail.com', '070-123 45 73'),
(74, '20060830-7761', 'Ängsvägen 9, Nacka', 'lova.eklund@gmail.com', '070-123 45 74'),
(75, '20070115-5502', 'Ekvägen 3, Huddinge', 'filip.haglund@gmail.com', '070-123 45 75'),
(76, '20030411-6654', 'Torpvägen 10, Sollentuna', 'maja.lundin@gmail.com', '070-123 45 76'),
(77, '20050220-4419', 'Gränsvägen 14, Västra Frölunda', 'oscar.stromberg@gmail.com', '070-123 45 77'),
(78, '20061208-1287', 'Lillgårdsvägen 7, Mölndal', 'elin.forslund@gmail.com', '070-123 45 78'),
(79, '20040530-3120', 'Kärrvägen 22, Partille', 'simon.borgstrom@gmail.com', '070-123 45 79'),
(80, '20050719-9735', 'Slottsvägen 1, Kungälv', 'alva.hoglund@gmail.com', '070-123 45 80');


INSERT INTO programs (program_name, program_code, credits, description, valid_from, valid_to) VALUES
('Software Engineering', 'SE101', 400, 'Fullstack development and software architecture', '2023-08-01', '2026-07-31'),
('Data Science', 'DS202', 400, 'Machine learning, data mining, and AI', '2022-08-01', '2025-07-31'),
('Network Security', 'NS303', 400, 'Cybersecurity and infrastructure protection', '2023-01-01', '2026-12-31'),
('UX/UI Design', 'UX404', 300, 'Digital design, prototyping and research', '2021-09-01', '2024-08-31'),
('Cloud Computing', 'CC505', 350, 'AWS, Azure, DevOps and automation', '2022-01-01', '2025-12-31'),
('Mobile App Development', 'MAD606', 400, 'iOS, Android, Flutter and backend integration', '2023-09-01', '2026-08-31');


INSERT INTO campus (location, address, phone_number, email) VALUES
('Stockholm', 'Sveavägen 50, 111 34 Stockholm', '0812345678', 'stockholm@yh.se'),
('Göteborg', 'Kungsportsavenyen 21, 411 36 Göteborg', '0319876543', 'goteborg@yh.se');


INSERT INTO courses (course_name, course_code, credits, description, is_standalone) VALUES
('Introduction to Programming', 'IP101', 40, 'Basics of programming with Python and JavaScript', FALSE),
('Object-Oriented Programming', 'OOP102', 45, 'OOP principles with Java and C#', FALSE),
('Database Systems', 'DB201', 35, 'Relational databases and SQL for developers', FALSE),
('Advanced SQL & Data Modeling', 'SQL202', 50, 'Joins, indexes, and normalization', FALSE),
('Web Development Basics', 'WD301', 30, 'HTML, CSS, JS fundamentals', FALSE),
('Fullstack Web Development', 'WD302', 45, 'Frontend + backend with React and Node.js', FALSE),
('DevOps and CI/CD', 'DO401', 80, 'Continuous integration and delivery pipelines', TRUE),
('Machine Learning', 'ML501', 50, 'Supervised and unsupervised learning algorithms', FALSE),
('Data Analysis with Python', 'DA502', 40, 'Pandas, NumPy, Matplotlib for analysis', FALSE),
('Data Engineering Foundations', 'DE503', 50, 'ETL, data pipelines, big data concepts', FALSE),
('Cybersecurity Essentials', 'CS601', 50, 'Network security, threats and mitigation', FALSE),
('Ethical Hacking', 'EH602', 90, 'Pen testing and vulnerability analysis', TRUE),
('UX Fundamentals', 'UX701', 40, 'User-centered design, research and wireframing', FALSE),
('UI Design & Tools', 'UI702', 35, 'Figma, Adobe XD, prototyping', FALSE),
('Cloud Infrastructure with AWS', 'CI801', 120, 'EC2, S3, IAM and networking', TRUE),
('Azure Cloud Services', 'AZ802', 100, 'Azure compute, storage, and automation', TRUE),
('Mobile Development with Flutter', 'MD901', 45, 'Build cross-platform mobile apps', FALSE),
('iOS App Development', 'IOS902', 110, 'Swift, Xcode, iOS SDK', TRUE),
('Android App Development', 'AND903', 60, 'Kotlin, Android Studio, UI components', TRUE),
('Agile Project Management', 'APM100', 70, 'Scrum, Kanban, and agile workflows', TRUE);


INSERT INTO program_course (program_id, course_id) VALUES
-- Program 1: Fullstack Developer
(1, 1), -- Intro to Programming
(1, 2), -- OOP
(1, 3), -- Database Systems
(1, 5), -- Web Dev Basics
(1, 6), -- Fullstack Web Dev

-- Program 2: Data Analyst
(2, 1), -- Intro to Programming
(2, 3), -- Database Systems
(2, 4), -- Advanced SQL
(2, 8), -- Machine Learning
(2, 9), -- Data Analysis with Python

-- Program 3: Cloud Engineer
(3, 3), -- Database Systems
(3, 10), -- Data Engineering
(3, 6), -- Fullstack Web Dev
(3, 5), -- Web Dev Basics

-- Program 4: Cybersecurity
(4, 3), -- Database Systems
(4, 11), -- Cybersecurity Essentials
(4, 8), -- Machine Learning

-- Program 5: UX/UI Designer
(5, 13), -- UX Fundamentals
(5, 14), -- UI Design
(5, 5), -- Web Dev Basics

-- Program 6: Mobile App Developer
(6, 1), -- Intro to Programming
(6, 2), -- OOP
(6, 17); -- Mobile Dev with Flutter



-- Insert into companies
INSERT INTO companies (company_name, organization_number, address, phone_number, email, has_f_skatt) VALUES
('Acme Consulting AB', '556123-4567', 'Sveavägen 10, 111 34 Stockholm', '087654321', 'info@acmeconsulting.se', TRUE),
('Tech Solutions Sweden AB', '556234-5678', 'Kungsgatan 15, 111 35 Stockholm', '087654322', 'contact@techsolutions.se', TRUE),
('Nordic IT Services AB', '556345-6789', 'Östra Hamngatan 5, 411 10 Göteborg', '031765432', 'info@nordicit.se', FALSE),
('Cloud Innovators AB', '556456-7890', 'Drottninggatan 22, 411 07 Göteborg', '031765433', 'hello@cloudinnovators.se', TRUE),
('Data Vision AB', '556567-8901', 'Birger Jarlsgatan 5, 114 34 Stockholm', '087654323', 'contact@datavision.se', FALSE),
('Future Tech AB', '556678-9012', 'Vasagatan 12, 411 24 Göteborg', '031765434', 'info@futuretech.se', TRUE),
('Code Masters AB', '556789-0123', 'Kungsportsavenyen 8, 411 36 Göteborg', '031765435', 'hr@codemasters.se', TRUE),
('Digital Minds AB', '556890-1234', 'Strandvägen 5, 114 56 Stockholm', '087654324', 'contact@digitalminds.se', FALSE);


INSERT INTO contracts (employee_id, company_id, campus_id, start_date, end_date, hourly_rate) VALUES
(6, 1, 1, '2023-01-01', '2023-06-30', 800),
(6, 4, 2, '2023-07-01', '2023-12-31', 850),
(6, 6, 2, '2024-01-01', '2025-06-30', 950),
(7, 2, 1, '2022-03-01', '2022-12-31', 780),
(7, 5, 1, '2023-01-01', '2023-12-31', 812),
(7, 8, 1, '2024-01-01', '2025-06-30', 960),
(10, 3, 2, '2023-05-01', '2023-11-30', 810),
(10, 7, 2, '2024-01-01', '2025-06-30', 972),
(13, 4, 2, '2022-09-01', '2023-06-30', 770),
(13, 6, 2, '2023-07-01', '2024-06-30', 953),
(15, 1, 1, '2023-02-01', '2023-08-31', 790),
(15, 2, 1, '2023-09-01', '2025-06-30', 936),
(17, 8, 1, '2024-01-01', '2025-06-30', 1035);


INSERT INTO classes (class_name, education_manager_id, program_id, campus_id, capacity) VALUES
('SE101', 3, 1, 1, 25),
('DS202', 3, 2, 1, 20),
('UX404', 3, 4, 1, 15),
('NS303', 8, 3, 2, 22),
('CC505', 8, 5, 2, 18),
('MAD23', 8, 6, 2, 20),
('SE102', 16, 1, 1, 25),
('MAD24', 16, 6, 2, 20),
('UX405', 16, 4, 1, 15),
('IP101', 3, NULL, 1, 30),
('DO401', 8, NULL, 2, 15),
('EH602', 16, NULL, 1, 12);


INSERT INTO class_student (class_id, student_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
(3, 11), (3, 12), (3, 13), (3, 14),
(7, 15), (7, 16), (7, 17), (7, 18), (7, 19), (7, 20),
(9, 21), (9, 22), (9, 23), (9, 24), (9, 25),
(10, 26), (10, 27), (10, 28), (10, 29), (10, 30), (10, 31),
(12, 71), (12, 72), (12, 73), (12, 74), (12, 75), (12, 76),
(4, 32), (4, 33), (4, 34), (4, 35), (4, 36),
(5, 37), (5, 38), (5, 39), (5, 40),
(6, 41), (6, 42), (6, 43), (6, 44), (6, 45),
(8, 46), (8, 47), (8, 48), (8, 49), (8, 50),
(11, 51), (11, 52), (11, 53), (11, 54), (11, 55),
(11, 56), (11, 57), (11, 58), (11, 59), (11, 60), (11, 61),
(11, 62), (11, 63), (11, 64), (11, 65), (11, 66), (11, 67),
(11, 68), (11, 69), (11, 70), (11, 77), (11, 78), (11, 79), (11, 80);

INSERT INTO teaching_assignments (course_id, class_id, employee_id, start_date, end_date) VALUES
(1, 1, 9, '2024-08-15', '2024-09-28'),
(2, 1, 11, '2024-09-29', '2024-11-12'),
(3, 1, 1, '2024-11-13', '2024-12-17'),
(5, 1, 6, '2024-12-18', '2025-01-16'),
(6, 1, 6, '2025-01-17', '2025-03-02'),
(1, 2, 9, '2025-03-03', '2025-04-16'),
(3, 2, 1, '2025-04-17', '2025-05-21'),
(4, 2, 12, '2025-05-22', '2025-07-10'),
(8, 2, 14, '2025-07-11', '2025-08-29'),
(9, 2, 14, '2025-08-30', '2025-10-08'),
(3, 4, 1, '2024-08-15', '2024-09-18'),
(10, 4, 5, '2024-09-19', '2024-11-02'),
(6, 4, 6, '2024-11-03', '2024-12-17'),
(5, 4, 6, '2024-12-18', '2025-01-16'),
(3, 3, 1, '2025-01-17', '2025-02-20'),
(11, 3, 17, '2025-02-21', '2025-04-11'),
(8, 3, 14, '2025-04-12', '2025-05-30'),
(13, 5, 18, '2025-06-01', '2025-07-05'),
(14, 5, 15, '2025-07-06', '2025-08-05'),
(5, 5, 6, '2025-08-06', '2025-09-04'),
(1, 6, 9, '2025-09-05', '2025-10-19'),
(2, 6, 11, '2025-10-20', '2025-12-03'),
(17, 6, 6, '2025-12-04', '2026-01-18'),
(1, 7, 9, '2026-01-19', '2026-03-03'),
(2, 7, 11, '2026-03-04', '2026-04-18'),
(3, 7, 1, '2026-04-19', '2026-05-23'),
(5, 7, 6, '2026-05-24', '2026-06-22'),
(6, 7, 6, '2026-06-23', '2026-08-07'),
(1, 8, 9, '2026-08-08', '2026-09-21'),
(2, 8, 11, '2026-09-22', '2026-11-06'),
(17, 8, 6, '2026-11-07', '2026-12-22'),
(13, 9, 18, '2026-12-23', '2027-01-26'),
(14, 9, 15, '2027-01-27', '2027-02-25'),
(5, 9, 6, '2027-02-26', '2027-03-27'),
(1, 10, 9, '2024-08-15', '2024-09-28'),
(7, 11, 11, '2024-08-15', '2024-11-03'),
(12, 12, 17, '2024-08-15', '2024-11-13');
