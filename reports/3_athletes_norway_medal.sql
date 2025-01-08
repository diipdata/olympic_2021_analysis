-- Quais atletas da Noruega receberam medalhas de Ouro ou Prata?

SELECT 
	DISTINCT A."name",
	A.noc

FROM olympic_data.athletes AS A

LEFT JOIN olympic_data.medal AS M
ON A.noc = M.noc

WHERE A.noc = 'Norway' AND M.gold > 0 AND M.silver > 0