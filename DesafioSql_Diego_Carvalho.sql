--Desafio 1
SELECT f.Nome , f.Ano FROM  Filmes f;
--Desafio 2 
SELECT f.Nome , f.Ano , f.Duracao from Filmes f order BY f.Ano;
--Desafio 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
--Desafio 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;
--Desafio 5 
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;
--Desafio 6 
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 order BY Duracao;
--Desafio 7
SELECT  Ano ,COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY  2 DESC ;
--Desafio 8 
SELECT a.Id,a.PrimeiroNome , a.UltimoNome , a.Genero FROM Atores a WHERE a.Genero = 'M';
--Desafio 9 
SELECT a.Id,a.PrimeiroNome , a.UltimoNome , a.Genero FROM Atores a WHERE a.Genero = 'F' ORDER BY a.PrimeiroNome;
--Desafio 10
SELECT f.Nome , g.Genero from Filmes  f  RIGHT JOIN FilmesGenero fg ON fg.IdFilme = f.Id left JOIN Generos g ON g.Id = fg.IdGenero; 
--Desafio 11 
SELECT f.Nome , g.Genero from Filmes  f  RIGHT JOIN FilmesGenero fg ON fg.IdFilme = f.Id left JOIN Generos g ON g.Id = fg.IdGenero  WHERE g.Genero = 'Mistério';
--Desafio 12
SELECT f.Nome , a.PrimeiroNome, a.UltimoNome , ef.Papel  FROM Filmes f left JOIN ElencoFilme ef ON f.Id = ef.IdFilme RIGHT JOIN Atores a ON ef.IdAtor = a.Id;