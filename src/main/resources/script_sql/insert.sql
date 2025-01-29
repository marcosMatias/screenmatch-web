-- series
INSERT INTO public.series(
    id, titulo, total_temporadas, avaliacao, genero, atores, poster, sinopse)
VALUES 
(1, 'Breaking Bad', 5, 9.5, INITCAP('DRAMA'), 'Bryan Cranston, Aaron Paul, Anna Gunn', 'https://m.media-amazon.com/images/M/MV5BMzU5ZGYzNmQtMTdhYy00OGRiLTg0NmQtYjVjNzliZTg1ZGE4XkEyXkFqcGc@._V1_SX300.jpg', 'Um professor de química do ensino médio vira um fabricante de metanfetamina.'),
(2, 'Game of Thrones', 8, 9.3, INITCAP('FANTASY'), 'Emilia Clarke, Kit Harington, Peter Dinklage', 'https://m.media-amazon.com/images/M/MV5BMTNhMDJmNmYtNDQ5OS00ODdlLWE0ZDAtZTgyYTIwNDY3OTU3XkEyXkFqcGc@._V1_SX300.jpg', 'Luta pelo trono de ferro em um mundo medieval fantástico.'),
(3, 'Stranger Things', 4, 8.7, INITCAP('SCI-FI'), 'Millie Bobby Brown, Finn Wolfhard, Winona Ryder', 'https://poster.strangerthings.com', 'Crianças descobrem mistérios sobrenaturais em sua cidade.'),
(4, 'The Office', 9, 8.9, INITCAP('COMEDY'), 'Steve Carell, Rainn Wilson, John Krasinski', 'https://m.media-amazon.com/images/M/MV5BZjQwYzBlYzUtZjhhOS00ZDQ0LWE0NzAtYTk4MjgzZTNkZWEzXkEyXkFqcGc@._V1_SX300.jpg', 'Vida cotidiana dos funcionários de um escritório.'),
(5, 'The Crown', 5, 8.6, INITCAP('DRAMA'), 'Olivia Colman, Tobias Menzies, Helena Bonham Carter', 'https://m.media-amazon.com/images/M/MV5BODcyODZlZDMtZGE0Ni00NjBhLWJlYTAtZDdlNWY3MzkwMGVhXkEyXkFqcGc@._V1_SX300.jpg', 'A história do reinado da Rainha Elizabeth II.'),
(6, 'Sherlock', 4, 9.1, INITCAP('MYSTERY'), 'Benedict Cumberbatch, Martin Freeman', 'https://m.media-amazon.com/images/M/MV5BNTQzNGZjNDEtOTMwYi00MzFjLWE2ZTYtYzYxYzMwMjZkZDc5XkEyXkFqcGc@._V1_SX300.jpg', 'Sherlock Holmes em uma Londres moderna.'),
(7, 'Friends', 10, 8.9, INITCAP('COMEDY'), 'Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'https://m.media-amazon.com/images/M/MV5BOTU2YmM5ZjctOGVlMC00YTczLTljM2MtYjhlNGI5YWMyZjFkXkEyXkFqcGc@._V1_SX300.jpg', 'Seis amigos vivem em Nova York.'),
(8, 'The Mandalorian', 3, 8.7, INITCAP('SCI-FI'), 'Pedro Pascal, Gina Carano, Carl Weathers', 'https://poster.mandalorian.com', 'A jornada de um caçador de recompensas no universo Star Wars.'),
(9, 'The Witcher', 3, 8.2, INITCAP('FANTASY'), 'Henry Cavill, Anya Chalotra, Freya Allan', 'https://m.media-amazon.com/images/M/MV5BMTQ5MDU5MTktMDZkMy00NDU1LWIxM2UtODg5OGFiNmRhNDBjXkEyXkFqcGc@._V1_SX300.jpg', 'Um caçador de monstros luta para encontrar seu lugar no mundo.'),
(10, 'Dark', 3, 8.8, INITCAP('SCI-FI'), 'Louis Hofmann, Lisa Vicari, Andreas Pietschmann', 'https://poster.dark.com', 'Mistérios de viagem no tempo em uma pequena cidade alemã.'),
(11, 'Black Mirror', 5, 8.8, INITCAP('SCI-FI'), 'Bryce Dallas Howard, Jon Hamm, Hayley Atwell', 'https://poster.blackmirror.com', 'Histórias de ficção científica que exploram os efeitos da tecnologia.'),
(12, 'Peaky Blinders', 6, 8.8, INITCAP('DRAMA'), 'Cillian Murphy, Helen McCrory, Paul Anderson', 'https://m.media-amazon.com/images/M/MV5BM2ZiNThlNzItNmY3Ny00NjA2LWJlMjItNTk1NDI3MDMyMTk4XkEyXkFqcGc@._V1_SX300.jpg', 'Gangsters em Birmingham, no início do século 20.'),
(13, 'The Boys', 3, 8.7, INITCAP('ACTION'), 'Karl Urban, Jack Quaid, Antony Starr', 'https://m.media-amazon.com/images/M/MV5BMWJlN2U5MzItNjU4My00NTM2LWFjOWUtOWFiNjg3ZTMxZDY1XkEyXkFqcGc@._V1_SX300.jpg', 'Um grupo de vigilantes enfrenta super-heróis corruptos.'),
(14, 'Lucifer', 6, 8.1, INITCAP('DRAMA'), 'Tom Ellis, Lauren German, Kevin Alejandro', 'https://m.media-amazon.com/images/M/MV5BYzMwNzI3MWItZTIzYi00YjkxLThhOWQtYmUwYjg4NWM0ZWI1XkEyXkFqcGc@._V1_SX300.jpg', 'O Senhor do Inferno decide viver em Los Angeles.'),
(15, 'Vikings', 6, 8.5, INITCAP('DRAMA'), 'Travis Fimmel, Katheryn Winnick, Clive Standen', 'https://m.media-amazon.com/images/M/MV5BOTFmZmExYTEtYmE0Mi00MzRmLWE4ZDYtOThiNzNlOTIyODljXkEyXkFqcGc@._V1_SX300.jpg', 'A saga de Ragnar Lothbrok, um lendário viking.'),
(16, 'House of the Dragon', 1, 8.6, INITCAP('FANTASY'), 'Paddy Considine, Matt Smith, Emma D''Arcy', 'https://m.media-amazon.com/images/M/MV5BM2QzMGVkNjUtN2Y4Yi00ODMwLTg3YzktYzUxYjJlNjFjNDY1XkEyXkFqcGc@._V1_SX300.jpg', 'A história da Casa Targaryen antes de Game of Thrones.'),
(17, 'Better Call Saul', 6, 8.9, INITCAP('DRAMA'), 'Bob Odenkirk, Rhea Seehorn, Jonathan Banks', 'https://m.media-amazon.com/images/M/MV5BNDdjNTEzMjMtYjM3Mi00NzQ3LWFlNWMtZjdmYWU3ZDkzMjk1XkEyXkFqcGc@._V1_SX300.jpg', 'A jornada de Jimmy McGill antes de se tornar Saul Goodman.'),
(18, 'The Last of Us', 1, 9.0, INITCAP('DRAMA'), 'Pedro Pascal, Bella Ramsey', 'https://m.media-amazon.com/images/M/MV5BY2JiNjU3NWYtMTRlYS00NzY3LWE2NDQtZGFkNWE2MDU4OTExXkEyXkFqcGc@._V1_SX300.jpg', 'Um homem e uma adolescente atravessam um mundo pós-apocalíptico.'),
(19, 'How I Met Your Mother', 9, 8.3, INITCAP('COMEDY'), 'Josh Radnor, Jason Segel, Cobie Smulders', 'https://m.media-amazon.com/images/M/MV5BNjg1MDQ5MjQ2N15BMl5BanBnXkFtZTYwNjI5NjA3._V1_SX300.jpg', 'A história de como Ted conheceu a mãe de seus filhos.'),
(20, 'Westworld', 4, 8.5, INITCAP('SCI-FI'), 'Evan Rachel Wood, Thandiwe Newton, Jeffrey Wright', 'https://poster.westworld.com', 'Parque de diversões futurista com anfitriões robóticos.');

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- episodios
INSERT INTO public.episodios(
	id, temporada, titulo, numero_episodio, avaliacao, data_lancamento, serie_id)
VALUES 
-- Episódios para Breaking Bad
(1, 1, 'Pilot', 1, 9.5, '2008-01-20', 1),
(2, 1, 'Cat''s in the Bag...', 2, 8.8, '2008-01-27', 1),
(3, 1, '...And the Bag''s in the River', 3, 8.7, '2008-02-10', 1),
(4, 2, 'Seven Thirty-Seven', 1, 9.2, '2009-03-08', 1),
(5, 2, 'Grilled', 2, 9.0, '2009-03-15', 1),

-- Episódios para Game of Thrones
(6, 1, 'Winter Is Coming', 1, 9.0, '2011-04-17', 2),
(7, 1, 'The Kingsroad', 2, 8.8, '2011-04-24', 2),
(8, 1, 'Lord Snow', 3, 8.7, '2011-05-01', 2),
(9, 2, 'The North Remembers', 1, 9.0, '2012-04-01', 2),
(10, 2, 'The Night Lands', 2, 8.6, '2012-04-08', 2),

-- Episódios para Stranger Things
(11, 1, 'The Vanishing of Will Byers', 1, 9.1, '2016-07-15', 3),
(12, 1, 'The Weirdo on Maple Street', 2, 8.8, '2016-07-15', 3),
(13, 1, 'Holly, Jolly', 3, 9.0, '2016-07-15', 3),
(14, 2, 'MadMax', 1, 8.7, '2017-10-27', 3),
(15, 2, 'Trick or Treat, Freak', 2, 8.9, '2017-10-27', 3),

-- Episódios para The Crown
(16, 1, 'Wolferton Splash', 1, 8.7, '2016-11-04', 4),
(17, 1, 'Hyde Park Corner', 2, 8.9, '2016-11-04', 4),
(18, 1, 'Windsor', 3, 8.8, '2016-11-04', 4),
(19, 2, 'Misadventure', 1, 8.6, '2017-12-08', 4),
(20, 2, 'A Company of Men', 2, 8.7, '2017-12-08', 4),

-- Episódios para House of the Dragon
(21, 1, 'The Heirs of the Dragon', 1, 8.9, '2022-08-21', 16),
(22, 1, 'The Rogue Prince', 2, 8.8, '2022-08-28', 16),
(23, 1, 'Second of His Name', 3, 8.7, '2022-09-04', 16),
(24, 1, 'King of the Narrow Sea', 4, 8.8, '2022-09-11', 16),
(25, 1, 'We Light the Way', 5, 8.9, '2022-09-18', 16);

INSERT INTO public.episodios(
    id, temporada, titulo, numero_episodio, avaliacao, data_lancamento, serie_id
)
VALUES
-- Episódios para The Last of Us
(26, 1, 'When You''re Lost in the Darkness', 1, 9.3, '2023-01-15', 18),
(27, 1, 'Infected', 2, 9.0, '2023-01-22', 18),
(28, 1, 'Long, Long Time', 3, 9.2, '2023-01-29', 18),
(29, 1, 'Please Hold to My Hand', 4, 8.9, '2023-02-05', 18),
(30, 1, 'Endure and Survive', 5, 9.5, '2023-02-12', 18),

-- Episódios para The Boys
(31, 1, 'The Name of the Game', 1, 8.6, '2019-07-26', 13),
(32, 1, 'Cherry', 2, 8.8, '2019-07-26', 13),
(33, 1, 'Get Some', 3, 8.7, '2019-07-26', 13),
(34, 2, 'The Big Ride', 1, 8.9, '2020-09-04', 13),
(35, 2, 'Proper Preparation and Planning', 2, 8.8, '2020-09-04', 13),

-- Episódios para The Witcher
(36, 1, 'The End''s Beginning', 1, 8.2, '2019-12-20', 9),
(37, 1, 'Four Marks', 2, 8.0, '2019-12-20', 9),
(38, 1, 'Betrayer Moon', 3, 8.3, '2019-12-20', 9),
(39, 2, 'A Grain of Truth', 1, 8.7, '2021-12-17', 9),
(40, 2, 'Kaer Morhen', 2, 8.6, '2021-12-17', 9);


----------------------------------
UPDATE series
SET genero = UPPER(genero);

delete  from series where genero ='SCI-FI';
delete from episodios where serie_id in (select id from series where genero ='SCI-FI');