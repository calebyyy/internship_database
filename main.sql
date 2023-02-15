-- create table for companies applied
CREATE TABLE companies_applied (
  id INT PRIMARY KEY,
  company_name VARCHAR(50),
  application_date DATE,
  technical_interview_date DATE
);

-- create table for application status
CREATE TABLE application_status (
  id INT PRIMARY KEY,
  company_name VARCHAR(50),
  technical_interview VARCHAR(50),
  offer VARCHAR(50)
);

-- insert data into companies_applied table
INSERT INTO companies_applied (id, company_name, application_date, technical_interview_date)
VALUES (1, 'Baya', '2023-01-30', '2023-02-22'),
       (2, 'Switcheo', '2023-02-01', '2023-03-01'),
       (3, 'ArcGIS', '2023-02-10', '2023-02-21'),
       (4, 'Foodline', '2023-02-03', NULL),
       (5, 'Azendian', '2023-02-14', '2023-02-17');

-- insert data into application_status table
INSERT INTO application_status (id, company_name, technical_interview, offer)
VALUES (1, 'Baya', 'Yes', 'Waiting'),
       (2, 'Switcheo', 'Yes', 'Waiting'),
       (3, 'ArcGIS', 'Yes', 'Waiting'),
       (4, 'Foodline', 'Waiting', 'Waiting'),
       (5, 'Azendian', 'Yes', 'Waiting');


-- select all columns from the companies_applied table
-- SELECT * FROM companies_applied;

-- select the company name and application date from the companies_applied table, ordered by application date
-- SELECT company_name, application_date FROM companies_applied ORDER BY application_date;

-- select the company name and offer status from the application_status table, filtered to only show companies that have received an offer
-- SELECT company_name, offer FROM application_status WHERE offer = 'Yes';

-- select the company name and offer status from the application_status table, filtered to only show companies that have waiting
-- SELECT company_name, offer FROM application_status WHERE offer = 'waiting';

-- select the count of companies applied per month
-- SELECT MONTH(application_date) AS month, COUNT(*) AS num_companies_applied
-- FROM companies_applied
-- GROUP BY MONTH(application_date);

-- select the company name and technical interview status from the application_status table, filtered to only show companies that have a technical interview scheduled
-- SELECT company_name, technical_interview FROM application_status WHERE technical_interview = 'Yes' OR technical_interview = 'Waiting';