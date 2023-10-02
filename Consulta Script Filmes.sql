-- 1
SELECT Nome, Ano
FROM filmes

-- 2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY ano ASC;

-- 3
SELECT nome, ano, duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro';

-- 4
SELECT nome, ano, duracao
FROM Filmes
WHERE ano = 1997;

-- 5
SELECT nome, ano, duracao
FROM Filmes
WHERE ano > 2000;

-- 6
SELECT nome, ano, duracao
FROM Filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

-- 7
SELECT ano, COUNT(*) AS quantidade_de_filmes
FROM Filmes
GROUP BY ano
ORDER BY quantidade_de_filmes DESC;

-- 8
SELECT Id,PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE genero = 'M';

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id;

-- 11
SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- 12 
SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
JOIN Atores AS A ON EF.IdAtor = A.Id;






