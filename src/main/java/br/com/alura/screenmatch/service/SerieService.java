package br.com.alura.screenmatch.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.alura.screenmatch.dto.EpisodioDto;
import br.com.alura.screenmatch.dto.SerieDto;
import br.com.alura.screenmatch.model.Categoria;
import br.com.alura.screenmatch.model.Serie;
import br.com.alura.screenmatch.repository.SerieRepository;

@Service
public class SerieService {

	private final SerieRepository serieRepository;

	public SerieService(SerieRepository serieRepository) {
		this.serieRepository = serieRepository;

	}

	@Transactional(readOnly = true)
	public List<SerieDto> obterSeries() {
		return converteDados(serieRepository.findAll());
	}

	@Transactional(readOnly = true)
	public List<SerieDto> obterTop5Series() {

		return converteDados(serieRepository.findTop5ByOrderByAvaliacaoDesc());

	}

	@Transactional(readOnly = true)
	public List<SerieDto> obterLancamentos() {
		
		return converteDados(serieRepository.encontrarEpisodiosMaisRecentes());
	}


	
	
	
	
	
	
	private List<SerieDto> converteDados(List<Serie> series){
		
		return  series.stream()
                      .map(s -> new SerieDto(s.getId(), s.getTitulo(), s.getTotalTemporadas(),s.getAvaliacao(), s.getGenero(), s.getAtores(), s.getPoster(), s.getSinopse()))
                      .collect(Collectors.toList());
	}

	
	
	public SerieDto obterPorId(Long id) {

		Optional<Serie> serie = serieRepository.findById(id);

		if (serie.isPresent()) {
			Serie s = serie.get();
			return new SerieDto(s.getId(), s.getTitulo(), s.getTotalTemporadas(), s.getAvaliacao(), s.getGenero(),
					s.getAtores(), s.getPoster(), s.getSinopse());
		}

		return null;
	}

	public List<EpisodioDto> obterTodasTemporadas(Long id) {
		
		
		Optional<Serie> serie = serieRepository.findById(id);

		if (serie.isPresent()) {
			Serie s = serie.get();
			return s.getEpisodios()
					.stream()
					.map(e -> new EpisodioDto(e.getTemporada(),e.getNumeroEpisodio(),e.getTitulo()))
					.collect(Collectors.toList());		
		}
		
		return null;
	}

	
	public List<EpisodioDto> obterTemporadaPorNumero(Long id, Long numero) {	
		
		return serieRepository.obterEpisodiosPorTemporada(id, numero)
				              .stream()
				              .map(e -> new EpisodioDto(e.getTemporada(),e.getNumeroEpisodio(),e.getTitulo()))
				              .collect(Collectors.toList());		
	}
	

	public List<SerieDto> obeterSeriesPorCategoria(String nomeGenero) {
		
		Categoria categoria = Categoria.fromPortugues(nomeGenero);
		
		return converteDados(serieRepository.findByGenero(categoria));
	}

	
	public List<EpisodioDto> obterTop5episodios(Long id) {
		
		
		return serieRepository.listarTop5Episodios(id)
				              .stream()
				              .map(e -> new EpisodioDto(e.getTemporada(),e.getNumeroEpisodio(),e.getTitulo())) 
				              .collect(Collectors.toList());
	}
	
}
