-- 1, buscar nome e ano dos filmes
select Nome, Ano from Filmes

-- 2,  Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select * from Filmes order by Ano asc

-- 3,  Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from Filmes where Nome = 'De Volta para o Futuro'

-- 4, Buscar os filmes lançados em 1997
select * from Filmes where Ano = 1997

-- 5, Buscar os filmes lançados APÓS o ano 2000
select * from Filmes where Ano > 2000

-- 6, Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao > 100 and Duracao < 150
ORDER BY Duracao ASC

-- 7, Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, COUNT(*) AS Quantidade from Filmes
GROUP BY Ano
ORDER BY Quantidade DESC, MAX(Duracao) DESC

-- 8, Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'M'

-- 9, Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome FROM Atores where Genero = 'F'
ORDER BY PrimeiroNome;

-- 10, Buscar o nome do filme e o gênero
select F.Nome, G.Genero from Filmes F
JOIN FilmesGenero FG
ON F.Id = FG.IdFilme
JOIN Generos G
ON FG.IdGenero = G.Id


-- 11, Buscar o nome do filme e o gênero do tipo "Mistério"
select F.Nome, G.Genero from Filmes F
JOIN FilmesGenero FG
ON F.Id = FG.IdFilme
JOIN Generos G
ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


-- 12, Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel  from Filmes F
JOIN ElencoFilme EF
ON F.Id = EF.IdFilme
JOIN Atores A
ON EF.IdAtor = A.Id

