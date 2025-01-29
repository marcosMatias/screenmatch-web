CREATE TABLE series (
    id SERIAL PRIMARY KEY, -- Chave primária gerada automaticamente
    titulo VARCHAR(255) NOT NULL, -- Campo para o título da série
    total_temporadas INT NOT NULL, -- Total de temporadas da série
    avaliacao DOUBLE PRECISION, -- Avaliação da série
    genero VARCHAR(50), -- Gênero da série (ENUM no Java, representado como string no banco)
    atores TEXT, -- Lista de atores
    poster TEXT, -- URL ou caminho do poster
    sinopse TEXT -- Sinopse da série
);


CREATE TABLE episodios (
    id SERIAL PRIMARY KEY, -- Chave primária gerada automaticamente
    temporada INT NOT NULL, -- Temporada à qual o episódio pertence
    titulo VARCHAR(255) NOT NULL, -- Título do episódio
    numero_episodio INT NOT NULL, -- Número do episódio dentro da temporada
    avaliacao DOUBLE PRECISION DEFAULT 0, -- Avaliação do episódio (padrão: 0)
    data_lancamento DATE, -- Data de lançamento do episódio
    serie_id INT NOT NULL, -- Chave estrangeira para a tabela 'series'
    CONSTRAINT fk_serie FOREIGN KEY (serie_id) REFERENCES series (id) ON DELETE CASCADE -- Relacionamento com exclusão em cascata
);