-- 1 - Buscar o nome e ano dos filmes
select f.nome, f.ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select f.nome, f.ano from Filmes
order by f.ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select * from Filmes
where nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
select * from Filmes
where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes
where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes
where duracao between 100 and 150

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, COUNT(*) AS quantidade
FROM Filmes
GROUP BY ano
ORDER BY quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select * from Atores
where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * from Atores
where Genero = 'F'

-- 10 - Buscar o nome do filme e o gênero
select f.nome, g.Genero from Filmes f
inner join FilmesGenero fg (nolock) on f.Id = fg.IdFilme
inner join Genero g (nolock) on g.Id = fg.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.nome, g.Genero from Filmes f
inner join FilmesGenero fg (nolock) on f.Id = fg.IdFilme
inner join Genero g (nolock) on g.Id = fg.IdGenero
where fg.Genero = 10

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
    f.Nome AS NomeFilme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes f
INNER JOIN 
    ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN 
    Atores a ON a.Id = ef.IdAtor;

