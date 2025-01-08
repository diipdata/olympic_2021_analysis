-- Quem são os técnicos (coaches) dos atletas da Austrália que receberam medalhas de Ouro?

SELECT
	DISTINCT C."name" as coach_name
	
FROM olympic_data.coaches AS C

LEFT JOIN olympic_data.medal as M
ON C.noc = M.noc

WHERE C.noc = 'Australia' and M.gold > 0