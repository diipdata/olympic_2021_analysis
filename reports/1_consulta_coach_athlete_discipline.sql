-- 1- Quem são os técnicos (coaches) e atletas das equipes de Handball? 


-- Listar técnicos e atletas de Handball
	-- Técnicos de Handball sem atletas correspondentes ainda aparecem.
	-- Atletas de Handball sem técnicos ainda aparecem.
SELECT 
    C.name AS coach_name,
    C.discipline AS coach_discipline,
    A.name AS athlete_name,
    A.discipline AS athlete_discipline
FROM 
    olympic_data.coaches AS C
FULL JOIN 
    olympic_data.athletes AS A
ON 
    C.discipline = A.discipline
WHERE 
    C.discipline = 'Handball'
     OR A.discipline = 'Handball';



-- Traz todos os técnicos de Handball e tenta encontrar atletas com a mesma disciplina (Handball). 
-- Se não houver correspondência, o técnico ainda será listado.
SELECT 
    C.name AS coach_name,
    C.discipline AS coach_discipline,
    A.name AS athlete_name,
    A.discipline AS athlete_discipline
FROM 
    olympic_data.coaches AS C
LEFT JOIN 
    olympic_data.athletes AS A
ON 
    C.discipline = A.discipline
WHERE 
    C.discipline = 'Handball';



-- Mostramos todos os técnicos e atletas de Handball separadamente
SELECT 
    name AS individual_name,
    'Coach' AS role
FROM 
    olympic_data.coaches
WHERE 
    discipline = 'Handball'

UNION

SELECT 
    name AS individual_name,
    'Athlete' AS role
FROM 
    olympic_data.athletes
WHERE 
    discipline = 'Handball';
