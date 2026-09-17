use project_analysis

select * from dbo.[loan-dataset]

-- Q1 How many loan applications are in the dataset?
select count(*) as Total_Applications from dbo.[loan-dataset]

-- Q2 How many loans were approved (Loan_Status = 'Y') vs rejected ('N')?
select Loan_Status, count(*) as Total
from dbo.[loan-dataset]
group by Loan_Status;

-- Q3  What is the average applicant income?

select
AVG(Applicantincome) as avg_income
FROM DBO.[loan-dataset];

--Q4. What is the average loan amount for approved vs rejected applications?
---    Hint: GROUP BY Loan_Status, AVG(LoanAmount)
select Loan_Status, avg(LoanAmount) AS Avg_Amount
from dbo.[loan-dataset]
group by Loan_Status;



--Q5. How many applicants are Graduate vs Not Graduate?
--   Hint: GROUP BY Education

select Education, count(*) as count
from dbo.[loan-dataset]
group by Education;


-- Q6. What is the count of loans by Property_Area (Urban, Rural, Semiurban)?

select Property_Area, COUNT(*) as Total_Loans
from dbo.[loan-dataset]
group by Property_Area;

--Q7. Among applicants with good credit history (Credit_History = 1),
--   what is the average loan amount?

select Credit_History,
avg(LoanAmount) as Avg_Loan_Amount
from dbo.[loan-dataset]
where Credit_History = 1
group by Credit_History;

-- Q8. How many loans were approved in each Property_Area?
--  (Only show approved loans — Loan_Status = 'Y')

select Property_Area, count(Loan_Status) as Approved_Loans
from dbo.[loan-dataset]
where Loan_Status = 1
group by Property_Area;

--Q9. What is the average applicant income for
--Graduate vs Not Graduate — but only for approved loans?

select Education, avg(ApplicantIncome) as Avg_Income
from dbo.[loan-dataset]
where Loan_Status = 1
group by Education;


-- HAVING ---

-- Q10. Show Education groups where average loan amount
--    is greater than 150

select Education, AVG(LoanAmount) as Avg_Amount
from dbo.[loan-dataset]
group by Education
HAVING AVG(LoanAmount) > 150;

--Q11. Show Property Areas where total approved loans
--(Loan_Status = 1) is greater than 150

select Property_Area, count(*) as Approved_Loans
from dbo.[loan-dataset]
where Loan_Status = 1
group by Property_Area
having Count(*) > 150;

-- Q12. Show Credit_History groups where
--     average applicant income is greater than 5000

select Credit_History, avg(ApplicantIncome) as AVG_INCOME
from dbo.[loan-dataset]
GROUP BY Credit_History
having AVG(ApplicantIncome) > 5000;

