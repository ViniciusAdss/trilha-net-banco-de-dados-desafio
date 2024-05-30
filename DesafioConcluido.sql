-- 1

SELECT Nome, Ano
	FROM FILMES

--2
SELECT Nome, Ano
	FROM Filmes
	ORDER BY Ano

-- 3

SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE UPPER(Nome) = UPPER('De Volta para o futuro')

-- 4

SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano = 1997

-- 5

SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Ano > 2000

-- 6

SELECT Nome, Ano, Duracao 
	FROM Filmes
	WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7

SELECT ANO, COUNT(Id) Quantidade
	FROM Filmes
	GROUP BY Ano
	ORDER BY COUNT(Id) DESC

-- 8

SELECT * 
	FROM Atores

-- 9

SELECT *
	FROM Atores
	WHERE Genero = 'F'
	ORDER BY PrimeiroNome

-- 10

SELECT F.Nome, G.Genero
	FROM Filmes F,
		 Generos G,
		 FilmesGenero FG
	WHERE F.Id = FG.IdFilme
		AND G.Id = FG.IdGenero

-- 11

SELECT F.Nome, G.Genero
	FROM Filmes F,
		 Generos G,
		 FilmesGenero FG
	WHERE F.Id = FG.IdFilme
		AND G.Id = FG.IdGenero
		AND UPPER(G.Genero) = UPPER('Mistério')

-- 12

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
	FROM Filmes F,
		 Atores A, 
		 ElencoFilme E
	WHERE F.Id = E.IdFilme
		AND A.Id = E.IdAtor
