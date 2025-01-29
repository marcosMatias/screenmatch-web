package br.com.alura.screenmatch.model;

public enum Categoria {
	ACTION("ACTION", "Ação"),
    ROMANCE("ROMANCE", "Romance"),
    COMEDY("COMEDY", "Comédia"),
    DRAMA("DRAMA", "Drama"),
    CRIME("CRIME", "Crime"),
    MYSTERY("MYSTERY","Mistério"),
    ADVENTURE("ADVENTURE","Aventura"),
    FANTASY("FANTASY","Fantasy");
  

    private String categoriaOmdb;
    private String categoriaPortugues;

    Categoria(String categoriaOmdb, String categoriaPortugues){
        this.categoriaOmdb = categoriaOmdb;
        this.categoriaPortugues = categoriaPortugues;
    }

    public static Categoria fromString(String text) {
        for (Categoria categoria : Categoria.values()) {
            if (categoria.categoriaOmdb.equalsIgnoreCase(text)) {
                return categoria;
            }
        }
        throw new IllegalArgumentException("Nenhuma categoria encontrada para a string fornecida: " + text);
    }

    public static Categoria fromPortugues(String text) {
        for (Categoria categoria : Categoria.values()) {
            if (categoria.categoriaPortugues.equalsIgnoreCase(text)) {
                return categoria;
            }
        }
        throw new IllegalArgumentException("Nenhuma categoria encontrada para a string fornecida: " + text);
    }
}
