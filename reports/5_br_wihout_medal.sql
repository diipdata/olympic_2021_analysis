-- Quais atletas Brasileiros não receberam medalhas? 

SELECT
	C.name AS athlete_name
	
FROM olympic_data.athletes AS C

LEFT JOIN olympic_data.medal AS M
ON C.noc = M.noc

WHERE M.noc = 'Brazil'