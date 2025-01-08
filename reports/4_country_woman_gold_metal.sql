-- Quais países tiveram mulheres conquistando medalhas de Ouro?

SELECT
	DISTINCT A.noc,
	M.gold
	
FROM olympic_data.athletes AS A

LEFT JOIN olympic_data.gender AS G
ON A.discipline = G.discipline

LEFT JOIN olympic_data.medal AS M
ON A.noc = M.noc

LEFT JOIN olympic_data.teams as T
ON A.discipline = T.noc

WHERE M.gold > 0 AND M.gold IS NOT NULL AND T.event LIKE 'Women%'