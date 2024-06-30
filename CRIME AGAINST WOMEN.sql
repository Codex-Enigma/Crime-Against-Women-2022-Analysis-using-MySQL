create database Crime;
USE CRIME;
CREATE TABLE CAW_2022 (
    State VARCHAR(20),
    Trafficking INT,
    Murder_with_Rape_or_Gang_Rape INT,
    Dowry_Deaths INT,
    Abetment_to_Suicide_of_Women INT,
    Miscarriage INT,
    Acid_Attack INT,
    Attempt_to_Acid_Attack INT,
    Cruelty_by_Husband_OR_relatives INT,
    Kidnapping_OR_Abduction INT,
    Selling_of_Minor_Girls INT,
    Buying_of_Minor_Girls INT,
    Rape INT,
    Attempt_to_Commit_Rape INT,
    Assault_to_Outrage_her_Modesty INT,
    Insult_to_the_Modesty_of_the_women INT,
    Assault_due_to_Dowry INT,
    Domestic_violence INT,
    Cyber_Crimes_committed_against_women INT,
    Sexual_Violence_towards_girl_child INT,
    Indecent_Representation_of_Women INT,
    Total_Crime_against_Women_IPC_SLL INT
);

SELECT *
FROM CAW_2022
LIMIT 5;
-- TOTAL CRIME AGAINST WOMEN IN 2022
SELECT SUM( Total_Crime_against_Women_IPC_SLL) AS TOTAL_CRIME_AGAINST_WOMEN_IN_2022
FROM CAW_2022;
--  Retrieve total counts for each type of crime against women in 2022:
SELECT SUM(Trafficking) AS TRAFFICKING ,SUM(Murder_with_Rape_or_Gang_Rape) AS Murder_with_Rape_or_Gang_Rape,
SUM(Dowry_Deaths) AS Dowry_Deaths , SUM(Abetment_to_Suicide_of_Women) AS Abetment_to_Suicide_of_Women, 
SUM(Miscarriage) AS Miscarriage , SUM(Acid_Attack) AS Acid_Attack ,
SUM(Attempt_to_Acid_Attack) AS Attempt_to_Acid_Attack ,SUM(Cruelty_by_Husband_OR_relatives) AS Cruelty_by_Husband_OR_relatives ,
SUM(Kidnapping_OR_Abduction) AS Kidnapping_OR_Abduction , SUM(Selling_of_Minor_Girls) AS Selling_of_Minor_Girls,
SUM(Buying_of_Minor_Girls) AS Buying_of_Minor_Girls ,SUM(Rape) AS Rape,
SUM(Attempt_to_Commit_Rape) AS Attempt_to_Commit_Rape ,	
SUM(Assault_to_Outrage_her_Modesty) AS Assault_to_Outrage_her_Modesty,
SUM(Insult_to_the_Modesty_of_the_women) AS Insult_to_the_Modesty_of_the_women,	
SUM(Assault_due_to_Dowry) AS Assault_due_to_Dowry,
SUM(Domestic_violence) AS Domestic_violence, 
SUM(Cyber_Crimes_committed_against_women) AS Cyber_Crimes_committed_against_women,
SUM(Sexual_Violence_towards_girl_child) AS Sexual_Violence_towards_girl_child ,
SUM(Indecent_Representation_of_Women) AS Indecent_Representation_of_Women
FROM CAW_2022;


-- top 5 states with the highest crime against women in 2022:
SELECT RANK() OVER( ORDER BY Total_Crime_against_Women_IPC_SLL DESC) AS CRIME_RANK , 
STATE, Total_Crime_against_Women_IPC_SLL
FROM CAW_2022
LIMIT 5;	

SELECT RANK() OVER( ORDER BY Total_Crime_against_Women_IPC_SLL ASC) AS CRIME_RANK , 
STATE, Total_Crime_against_Women_IPC_SLL
FROM CAW_2022
LIMIT 5;	


-- which state had highest trafficking 
SELECT 
    STATE, TRAFFICKING AS HIGHEST_NO_OF_TRAFFICKING
FROM
    CAW_2022
WHERE
    TRAFFICKING = (SELECT 
            MAX(TRAFFICKING)
        FROM
            CAW_2022);


-- Find the state with the highest number of dowry deaths in 2022:

SELECT 
    STATE, DOWRY_DEATHS AS HIGHEST_NO_OF_DOWRY_DEATHS
FROM
    CAW_2022
WHERE
    DOWRY_DEATHS = (SELECT 
            MAX(DOWRY_DEATHS)
        FROM
            CAW_2022);


-- Find state with the highest number of acid attacks in 2022:

SELECT 
    STATE, ACID_ATTACK AS HIGHEST_NO_OF_ACID_ATTACK
FROM
    CAW_2022
WHERE
    ACID_ATTACK = (SELECT 
            MAX(ACID_ATTACK)
        FROM
            CAW_2022);


SELECT 
    STATE, Murder_with_Rape_or_Gang_Rape AS HIGHEST_NO_OF_Murder_with_Rape_or_Gang_Rape
FROM
    CAW_2022
WHERE
    Murder_with_Rape_or_Gang_Rape = (SELECT 
            MAX(Murder_with_Rape_or_Gang_Rape)
        FROM
            CAW_2022);


SELECT 
    STATE, Abetment_to_Suicide_of_Women AS HIGHEST_NO_OF_Abetment_to_Suicide_of_Women
FROM
    CAW_2022
WHERE
    Abetment_to_Suicide_of_Women = (SELECT 
            MAX(Abetment_to_Suicide_of_Women)
        FROM
            CAW_2022);



SELECT 
    STATE, MISCARRIAGE AS HIGHEST_NO_OF_MISCARRIAGE
FROM
    CAW_2022
WHERE
    MISCARRIAGE = (SELECT 
            MAX(MISCARRIAGE)
        FROM
            CAW_2022);


SELECT 
    STATE, Cruelty_by_Husband_OR_relatives AS HIGHEST_NO_OF_Cruelty_by_Husband_OR_relatives
FROM
    CAW_2022
WHERE
    Cruelty_by_Husband_OR_relatives = (SELECT 
            MAX(Cruelty_by_Husband_OR_relatives)
        FROM
            CAW_2022);
            
            
            
SELECT 
    STATE, KIDNAPPING_OR_ABDUCTION AS HIGHEST_NO_OF_KIDNAPPING_OR_ABDUCTION
FROM
    CAW_2022
WHERE
    KIDNAPPING_OR_ABDUCTION = (SELECT 
            MAX(KIDNAPPING_OR_ABDUCTION)
        FROM
            CAW_2022);
            
            
   SELECT 
    STATE, ACID_ATTACK AS HIGHEST_NO_OF_ACID_ATTACK
FROM
    CAW_2022
WHERE
    ACID_ATTACK = (SELECT 
            MAX(ACID_ATTACK)
        FROM
            CAW_2022);         




SELECT 
    STATE, SELLING_OF_MINOR_GIRLS AS HIGHEST_NO_OF_SELLING_OF_MINOR_GIRLS
FROM
    CAW_2022
WHERE
    SELLING_OF_MINOR_GIRLS = (SELECT 
            MAX(SELLING_OF_MINOR_GIRLS)
        FROM
            CAW_2022);
            
            
SELECT 
    STATE, BUYING_OF_MINOR_GIRLS AS HIGHEST_NO_OF_BUYING_OF_MINOR_GIRLS
FROM
    CAW_2022
WHERE
    BUYING_OF_MINOR_GIRLS = (SELECT 
            MAX(BUYING_OF_MINOR_GIRLS)
        FROM
            CAW_2022);

SELECT 
    STATE, RAPE AS HIGHEST_NO_OF_RAPE
FROM
    CAW_2022
WHERE
    RAPE = (SELECT 
            MAX(RAPE)
        FROM
            CAW_2022);

SELECT 
    STATE, ATTEMPT_TO_COMMIT_RAPE AS HIGHEST_NO_OF_ATTEMPT_TO_COMMIT_RAPE
FROM
    CAW_2022
WHERE
    ATTEMPT_TO_COMMIT_RAPE = (SELECT 
            MAX(ATTEMPT_TO_COMMIT_RAPE)
        FROM
            CAW_2022);

SELECT 
    STATE, ASSAULT_DUE_TO_DOWRY AS HIGHEST_NO_OF_ASSAULT_DUE_TO_DOWRY
FROM
    CAW_2022
WHERE
    ASSAULT_DUE_TO_DOWRY = (SELECT 
            MAX(ASSAULT_DUE_TO_DOWRY)
        FROM
            CAW_2022);

SELECT 
    STATE, DOMESTIC_VIOLENCE AS HIGHEST_NO_OF_DOMESTIC_VIOLENCE
FROM
    CAW_2022
WHERE
    DOMESTIC_VIOLENCE = (SELECT 
            MAX(DOMESTIC_VIOLENCE)
        FROM
            CAW_2022);

SELECT 
    STATE, CYBER_CRIMES_COMMITTED_AGAINST_WOMEN AS HIGHEST_NO_OF_CYBER_CRIMES_COMMITTED_AGAINST_WOMEN
FROM
    CAW_2022
WHERE
    CYBER_CRIMES_COMMITTED_AGAINST_WOMEN = (SELECT 
            MAX(CYBER_CRIMES_COMMITTED_AGAINST_WOMEN)
        FROM
            CAW_2022);
            
SELECT 
    STATE, SEXUAL_VIOLENCE_TOWARDS_GIRL_CHILD AS HIGHEST_NO_OF_SEXUAL_VIOLENCE_TOWARDS_GIRL_CHILD
FROM
    CAW_2022
WHERE
    SEXUAL_VIOLENCE_TOWARDS_GIRL_CHILD = (SELECT 
            MAX(SEXUAL_VIOLENCE_TOWARDS_GIRL_CHILD)
        FROM
            CAW_2022);
            
            
SELECT 
    STATE, INDECENT_REPRESENTATION_OF_WOMEN AS HIGHEST_NO_OF_INDECENT_REPRESENTATION_OF_WOMEN
FROM
    CAW_2022
WHERE
    INDECENT_REPRESENTATION_OF_WOMEN = (SELECT 
            MAX(INDECENT_REPRESENTATION_OF_WOMEN)
        FROM
            CAW_2022);
            
            
SELECT 
    STATE, ASSAULT_TO_OUTRAGE_HER_MODESTY AS HIGHEST_NO_OF_ASSAULT_TO_OUTRAGE_HER_MODESTY
FROM
    CAW_2022
WHERE
    ASSAULT_TO_OUTRAGE_HER_MODESTY = (SELECT 
            MAX(ASSAULT_TO_OUTRAGE_HER_MODESTY)
        FROM
            CAW_2022);
            
SELECT 
    STATE, 
INSULT_TO_THE_MODESTY_OF_THE_WOMEN AS HIGHEST_NO_OF_INSULT_TO_THE_MODESTY_OF_THE_WOMEN
FROM
    CAW_2022
WHERE
    INSULT_TO_THE_MODESTY_OF_THE_WOMEN = (SELECT 
            MAX(INSULT_TO_THE_MODESTY_OF_THE_WOMEN)
        FROM
            CAW_2022);


-- Calculate the percentage of crimes that are attempts to commit rape in each state:
SELECT STATE, 
(SUM(ATTEMPT_TO_COMMIT_RAPE)/SUM(RAPE+ATTEMPT_TO_COMMIT_RAPE))*100 AS ATTEMPTED_RAPE_PERCENTAGE
FROM CAW_2022
GROUP BY STATE;	

-- Retrieve the states where the number of dowry deaths is greater than the number of murders with rape:
SELECT
    State, Dowry_Deaths, Murder_with_Rape_or_Gang_Rape
FROM
    CAW_2022
WHERE
    Dowry_Deaths > Murder_with_Rape_or_Gang_Rape;
-- ALL STATES WHERE IS THIER NEITHER OF CRIME 
SELECT STATE ,TRAFFICKING
FROM CAW_2022
WHERE TRAFFICKING = 0;

SELECT STATE , Murder_with_Rape_or_Gang_Rape
FROM CAW_2022
WHERE Murder_with_Rape_or_Gang_Rape = 0;

SELECT STATE ,Dowry_Deaths
FROM CAW_2022
WHERE Dowry_Deaths = 0;


SELECT STATE ,Abetment_to_Suicide_of_Women
FROM CAW_2022
WHERE Abetment_to_Suicide_of_Women = 0;



SELECT STATE ,Miscarriage
FROM CAW_2022
WHERE Miscarriage = 0;


SELECT STATE ,Acid_Attack
FROM CAW_2022
WHERE Acid_Attack = 0;


SELECT STATE ,Attempt_to_Acid_Attack
FROM CAW_2022
WHERE Attempt_to_Acid_Attack = 0;


SELECT STATE ,Cruelty_by_Husband_OR_relatives
FROM CAW_2022
WHERE Cruelty_by_Husband_OR_relatives = 0;


SELECT STATE ,Kidnapping_OR_Abduction
FROM CAW_2022
WHERE Kidnapping_OR_Abduction = 0;

SELECT STATE ,Selling_of_Minor_Girls
FROM CAW_2022
WHERE Selling_of_Minor_Girls = 0;

SELECT STATE ,Buying_of_Minor_Girls
FROM CAW_2022
WHERE Buying_of_Minor_Girls = 0;


SELECT STATE ,Kidnapping_OR_Abduction
FROM CAW_2022
WHERE Kidnapping_OR_Abduction = 0;


SELECT STATE ,Rape
FROM CAW_2022
WHERE Rape = 0;


SELECT STATE ,Attempt_to_Commit_Rape
FROM CAW_2022
WHERE Attempt_to_Commit_Rape = 0;



SELECT STATE ,Assault_to_Outrage_her_Modesty
FROM CAW_2022
WHERE Assault_to_Outrage_her_Modesty = 0;

SELECT STATE ,Insult_to_the_Modesty_of_the_women
FROM CAW_2022
WHERE Insult_to_the_Modesty_of_the_women = 0;

SELECT STATE ,Domestic_violence
FROM CAW_2022
WHERE Domestic_violence = 0;


SELECT STATE ,Cyber_Crimes_committed_against_women
FROM CAW_2022
WHERE Cyber_Crimes_committed_against_women = 0;


SELECT STATE ,Sexual_Violence_towards_girl_child
FROM CAW_2022
WHERE Sexual_Violence_towards_girl_child = 0;

SELECT STATE ,Indecent_Representation_of_Women
FROM CAW_2022
WHERE Indecent_Representation_of_Women = 0;

-- TOP 5 states with lowest total crime against women

SELECT RANK() OVER( ORDER BY Total_Crime_against_Women_IPC_SLL) AS CRIME_RANK , STATE, Total_Crime_against_Women_IPC_SLL
FROM CAW_2022
LIMIT 5;

/* number of sexual violence cases towards girl children is greater than the number of selling and buying of minor girls combined
sql*/
SELECT
    State
FROM
    CAW_2022
WHERE
    Sexual_Violence_towards_Girl_Child > (Selling_of_Minor_Girls + Buying_of_Minor_Girls);

-- Retrieve the states where the percentage of cyber crimes against women is highest:
SELECT
    State,
(SUM(Cyber_Crimes_committed_against_Women) / SUM(Total_Crime_against_Women_IPC_SLL)) * 100 AS 
																			  Cyber_Crime_Percentage
FROM
    CAW_2022
GROUP BY
    State
ORDER BY
    Cyber_Crime_Percentage DESC
LIMIT 3;
-- Retrieve the states with the highest number of rape cases in 2022:
SELECT STATE, RAPE
FROM CAW_2022
ORDER BY RAPE DESC
LIMIT 3;
-- Find the states with the highest incidence of insult to the modesty of women in 2022:
SELECT
    State,
    Insult_to_the_Modesty_of_the_women
FROM
    CAW_2022
ORDER BY
    Insult_to_the_Modesty_of_the_women DESC
LIMIT 3;

-- Find the states where the number of attempted rapes is more than 20%of the total reported rape cases:

SELECT
    State, (Attempt_to_Commit_Rape / Rape) * 100  AS Rape_Attempt_Percentage
FROM
    CAW_2022
WHERE
    (Attempt_to_Commit_Rape / Rape) * 100 > 20 
ORDER BY Rape_Attempt_Percentage DESC;
    
    
-- Calculate the percentage of crimes against women that are related to dowry (abatement to suicide, assault due to dowry, dowry deaths):\
SELECT
    State,
    (SUM(Abetment_to_Suicide_of_Women) + SUM(Assault_due_to_Dowry) + SUM(Dowry_Deaths)) / SUM(Total_Crime_against_Women_IPC_SLL) * 100 AS Dowry_Related_Percentage
FROM
    CAW_2022
GROUP BY
    State;
-- Retrieve states where the total crime against women is higher than the average across all states:
SELECT
    State,
    SUM(Total_Crime_against_Women_IPC_SLL) AS Total_Crime
FROM
    CAW_2022
GROUP BY
    State
HAVING
    Total_Crime > (SELECT AVG(Total_Crime_against_Women_IPC_SLL) FROM CAW_2022);

-- what percentage of rape and attempt to rape is of total crime 
SELECT 
    (SUM(RAPE) + SUM(ATTEMPT_TO_COMMIT_RAPE)) / SUM(Total_Crime_against_Women_IPC_SLL) * 100 AS 
														PERCENTAGE_OF_RAPE_AND_ATTEMPT_TO_RAPE
FROM
    CAW_2022;
-- percentage of crime out of total crime
SELECT 
    column_name AS Crime, 
    (maximum_sum / Total_Crime_against_Women_IPC_SLL) * 100 AS Percentage
FROM (
    SELECT 
        'Trafficking' AS column_name, SUM(Trafficking) AS maximum_sum FROM CAW_2022
    UNION ALL
    SELECT 
        'Murder_with_Rape_or_Gang_Rape', SUM(Murder_with_Rape_or_Gang_Rape) FROM CAW_2022
    UNION ALL
    SELECT 
        'Dowry_Deaths', SUM(Dowry_Deaths) FROM CAW_2022
    UNION ALL
    SELECT 
        'Abetment_to_Suicide_of_Women', SUM(Abetment_to_Suicide_of_Women) FROM CAW_2022
    UNION ALL
    SELECT 
        'Miscarriage', SUM(Miscarriage) FROM CAW_2022
    UNION ALL
    SELECT 
        'Acid_Attack', SUM(Acid_Attack) FROM CAW_2022
    UNION ALL
    SELECT 
        'Attempt_to_Acid_Attack', SUM(Attempt_to_Acid_Attack) FROM CAW_2022
    UNION ALL
    SELECT 
        'Cruelty_by_Husband_OR_relatives', SUM(Cruelty_by_Husband_OR_relatives) FROM CAW_2022
    UNION ALL
    SELECT 
        'Kidnapping_OR_Abduction', SUM(Kidnapping_OR_Abduction) FROM CAW_2022
    UNION ALL
    SELECT 
        'Selling_of_Minor_Girls', SUM(Selling_of_Minor_Girls) FROM CAW_2022
    UNION ALL
    SELECT 
        'Buying_of_Minor_Girls', SUM(Buying_of_Minor_Girls) FROM CAW_2022
    UNION ALL
    SELECT 
        'Rape', SUM(Rape) FROM CAW_2022
    UNION ALL
    SELECT 
        'Attempt_to_Commit_Rape', SUM(Attempt_to_Commit_Rape) FROM CAW_2022
    UNION ALL
    SELECT 
        'Assault_to_Outrage_her_Modesty', SUM(Assault_to_Outrage_her_Modesty) FROM CAW_2022
    UNION ALL
    SELECT 
        'Insult_to_the_Modesty_of_the_women', SUM(Insult_to_the_Modesty_of_the_women) FROM CAW_2022
    UNION ALL
    SELECT 
        'Assault_due_to_Dowry', SUM(Assault_due_to_Dowry) FROM CAW_2022
    UNION ALL
    SELECT 
        'Domestic_violence', SUM(Domestic_violence) FROM CAW_2022
    UNION ALL
    SELECT 
        'Cyber_Crimes_committed_against_women', SUM(Cyber_Crimes_committed_against_women)FROM CAW_2022
    UNION ALL
    SELECT 
        'Sexual_Violence_towards_girl_child', SUM(Sexual_Violence_towards_girl_child) FROM CAW_2022
    UNION ALL
    SELECT 
        'Indecent_Representation_of_Women', SUM(Indecent_Representation_of_Women) FROM CAW_2022
) AS max_values
CROSS JOIN (
    SELECT SUM(Total_Crime_against_Women_IPC_SLL) AS Total_Crime_against_Women_IPC_SLL 
    FROM CAW_2022
) AS total
   ORDER BY max_values.maximum_sum DESC;


