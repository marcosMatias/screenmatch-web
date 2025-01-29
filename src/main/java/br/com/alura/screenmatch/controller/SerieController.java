package br.com.alura.screenmatch.controller;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.alura.screenmatch.dto.EpisodioDto;
import br.com.alura.screenmatch.dto.SerieDto;
import br.com.alura.screenmatch.service.SerieService;



@RestController
@RequestMapping("/series")
public class SerieController {

	private final SerieService serieService;

	public SerieController(SerieService serieService) {
		this.serieService = serieService;
	}

	@GetMapping
	public List<SerieDto> listarSeries() {

		return serieService.obterSeries();
	}

	
	
	@GetMapping("/top5")	
	public List<SerieDto> listarTop5Series() {

		return serieService.obterTop5Series();
	}
	
	
	@GetMapping("/lancamentos")
	public List<SerieDto> listarLancamentos(){
		
		return serieService.obterLancamentos();
	}
	
	
	@GetMapping("/{id}")
	public SerieDto obterPorId(@PathVariable Long id) {
		
		return serieService.obterPorId(id);
	}
	
	
	@GetMapping("/{id}/temporadas/todas")
	public List<EpisodioDto> obterTodasTemporadas(@PathVariable Long id){
	        return serieService.obterTodasTemporadas(id);
	}

	
	@GetMapping("/{id}/temporadas/{numero}")
	public List<EpisodioDto> obterTemporadasPorNumero(@PathVariable Long id, @PathVariable Long numero ){
		
		return serieService.obterTemporadaPorNumero(id,numero);
	}
	
	
	
	
	@GetMapping("/categoria/{nomeGenero}")
	public List<SerieDto> obterSeriesPorCategoria(@PathVariable String nomeGenero){
		
		return serieService.obeterSeriesPorCategoria(nomeGenero);
		
	}
	
	
	@GetMapping("/{id}/temporadas/top")
	public List<EpisodioDto> obterTop5episodios(@PathVariable Long id){
		
		return serieService.obterTop5episodios(id);
		
	}
}
