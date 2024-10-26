-- Step 0 - select your database use dayabase_1;

-- First create the table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each employee
    first_name VARCHAR(50) NOT NULL,             -- First name of the employee
    last_name VARCHAR(50) NOT NULL,              -- Last name of the employee
    department VARCHAR(50),                       -- Department where the employee works
    salary DECIMAL(10, 2),                        -- Employee's salary
    hire_date DATE DEFAULT CURRENT_DATE           -- Hire date with a default value of the current date
);

-- Then upload it to C:\ProgramData\MySQL\MySQL Server 8.0\Uploads

-- Then run the following code:
LOAD DATA INFILE '/path/to/employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
