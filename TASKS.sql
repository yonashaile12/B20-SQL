
--Tasks : general
--
--1. list the initials of all the employees
--2. list the full names of all employees ( fullname: Lastname FirstName)
--3. who has the longest name in the employees table?
--4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
--5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
--6. divide employees into groups by using thier job id
--	6.1 display the maximum salaries in each groups
--	6.2 display the minium salaries in each groups
--	6.3 display the average salary of each group
--	6.4 how many employees are there in each group that have minimum salary of 5000 ?
--	6.5 display the total budgests of each groups
--7. display employees' full email addresses and full names (assume that the domain of the email is @gmail)
--8. display full addresses from locations table in a single column(full address: Street_Addtess,  CityName  ZipCode,  Country_id)
--
--TASK -- 
--	
--	1.1  GET UNIQUE MANAGER_IDs from Employees Table 
--
--	1.2  GET UNIQUE DEPARTMENTS_ID FROM EMPLOYEES TABLE
--	
--	1.3  COUNT UNIQUE DEPARTMENTS_ID FROM EMPLOYEES TABLE 
--
--	1.4  GET THE SUM OF ALL SALARY FOR JOB_ID FI_ACCOUNT
--
--	1.5  GET FULL_NAME (FIRST_NAME||LAST_NAME) AND LENTH OF EACH FULL NAME FROM EMPLOYEES TABLE 
--
--	1.6  GET THE ALL EMPLOYEES WITH first name SECOND CHARACTER 'A'
--
--	1.7  GET ALL EMPLOYEES WITH FIRST_NAME HAS 2 'a' no matter where case insenstive
--
--
--
--
-- how to comment all of them  
    -- select and COMMAND + OPTION + /  for mac 
    ---  CONTROL + / for windows 

--TASK -- GROUP BY 
--		HAVING
--
--1.	USING COUNTRIES TABLE -- 
--	FIND OUT HOW MANY COUNTRY IN REGION 
--	(REGION_ID , COUNT...)
    

    /* 
        to comment multiple lines  
    */
    SELECT region_id, COUNT(*) 
    FROM COUNTRIES 
    GROUP BY region_id
    ; 

--	1.1	USING COUNTRIES TABLE -- (continue from above)
--	FIND OUT REGIONS THAT HAVE EXACTLY 6 COUNTRIES
        -- IN ORDER TO PUT MORE CONDITION ON ALREADY GROUPED DATA USE HAVING AFTER GROUP BY 
    SELECT region_id, COUNT(*) AS COUNTRY_COUNT
    FROM COUNTRIES 
    GROUP BY region_id
    HAVING COUNT(*) = 6  -- CAN NOT USE ALIAS AFTER HAVING CLAUSE
  
    ; 
        
--
--2,  USING DEPARTMENTS TABLE -- 
--	FIND OUT HOW MANY DEPARTMENTS IN EACH LOCATIONS 
--
--	2.1 USING COUNTRIES TABLE -- (continue from above)
--	FIND OUT LOCATIONS THAT HAVE MORE THAN 1 DEPARTMENTS
--
--	2.2 FROM THE LOCATION ID RESULT ABOVE QUERY
--	IN SEPARATE QUERY (USING LOCATIONS TABLE)
--	FIND OUT STREET ADDRESS OF THAT LOCATION 
--
--3,  USING EMPLOYEES TABLE 
--	FIND OUT HOW MANY EMPLOYEES EACH MANAGER MANAGE (group by manager_id)
--
--	-- continue above 
--		3.1 -- find out manager who mange more than 10 employees 
--		3.2 -- find out manager who manage exactly 6 employees 
--
--
--4,  USING EMPLOYEES TABLE 
--	GROUP EMPLOYEES BY COMMISSION_PCT to count how many employee for each commission_pct value 
--
--
--5, USING EMPLOYEES TABLE 
--
--	 5.0 GET THE COUNT OF EMPLOYEE THAT HAVE EXACTLY 5 CHARACTERS IN FIRST NAME (no need for group by)
--	 5.1 GET THE SUM OF SALARY , SUM OF DISTINCT SALARY FROM EMPLOEEYS TABLE 
--	 5.2 GET THE SUM OF ALL SALARY FOR EACH DEPARTMENTS 
--	 5.3 GET THE AVG SALARY OF EACH JOB_ID 
--	 5.4 GET THE AVG SALARY OF EACH DEPARTMENTS 
--	 5.5 GET THE MAX SALARY OF EACH FOLLOWING DEPARTMENT 90 , 100 , 50 
--
--
--
--6, USING EMPLOYEES TABLE 	 
--
--	 6.1 FIND OUT HOW MANY EMPLOYEES WAS HIRED BEFORE '24-JUL-05'
--
--	 		-- There are specific function for date but for this task SUBSTR we know will just work
--	 6.2 FIND OUT HOW MANY EMPLOYEES WAS HIRED ON YEAR 2005 
--	 		(CONDITION HINT : HIRE_DATE LIKE '%05'  OR  SUBSTR(HIRE_DATE, 8,2)= '05') 
--	 6.3 FIND OUT HOW MANY EMPLOYEES WAS HIRED ON JULY 
--	 		(CONDITION HINT : HIRE_DATE LIKE '%JULY%'  OR  SUBSTR(HIRE_DATE,4,3)= 'JUL') 
--
--
--	 6.4 GROUP THE EMPLOYEE TABLE BY HIRE_DATE YEAR TO GET HOW MANY EMPLOYEES WAS HIRED IN EACH YEAR 
--	 		(CONDITION HINT :  GROUP BY SUBSTR(HIRE_DATE, 8,2) ) 
--
--
--	 6.5  GET FIRST 3 DIGIT OF PHONE NUMBER AS AREA_CODE FROM EMPLOYEES TABLE 
--		6.5.1  GROUP BY EMPLOYEE TBALES BY FIRST 3 DIGIT OF PHONE NUMBER
--				TO FIND OUT HOW MANY PHONE EMPLOYEES IN EACH AREA_CODE
--				515	21
--				590	5
--				603	1
--				011	35
--				650	45
--			SELECT SUBSTR(PHONE_NUMBER,1,3) AS AREA_CODE , COUNT(*) 
--			FROM EMPLOYEES 
--			GROUP BY SUBSTR(PHONE_NUMBER,1,3) ;
--