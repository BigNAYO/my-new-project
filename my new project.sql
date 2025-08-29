-- Employee_Project Table (Final, SQL Server Safe)
CREATE TABLE Employee_Project (
    Employee_Num_E INT NOT NULL,                -- FK to Employee
    Project_Num_P INT NOT NULL,                 -- FK to Project
    Role VARCHAR(255) NOT NULL,                 -- Role of employee in project
    PRIMARY KEY (Employee_Num_E, Project_Num_P),

    CONSTRAINT FK_EmployeeProject_Employee FOREIGN KEY (Employee_Num_E)
        REFERENCES Employee(Num_E)
        ON UPDATE CASCADE
        ON DELETE CASCADE,   -- if employee is deleted, participation is deleted

    CONSTRAINT FK_EmployeeProject_Project FOREIGN KEY (Project_Num_P)
        REFERENCES Project(Num_P)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION  -- no cascade here (prevents multiple cascade path error)
);