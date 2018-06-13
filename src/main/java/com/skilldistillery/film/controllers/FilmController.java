package com.skilldistillery.film.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.DatabaseAccessorObject;
import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private DatabaseAccessorObject db;

	@RequestMapping(path = "searchFilm.do", params = "id", method = RequestMethod.GET)
	public ModelAndView searchFilmId(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();

		Film filmDetails = null;
		try {
			filmDetails = db.getFilmById(id);
			System.out.println("******" + filmDetails.getTitle());

		} catch (SQLException e) {
			e.printStackTrace();
		}

		mv.addObject("film", filmDetails);
		mv.setViewName("WEB-INF/filmDetails.jsp");
		return mv;
	}
	
	// Adding film section
	
	@RequestMapping(path = "addFilm.do", method = RequestMethod.GET)
	public ModelAndView addFilmToDatabase(Film film) {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/addFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "addFilm.do", method = RequestMethod.POST)
	public String addFilm(Film film) {


		db.addFilm(film);
		return "WEB-INF/filmDetails.jsp";
	}
	@RequestMapping(path = "addActor.do", method = RequestMethod.GET)
	public ModelAndView addActorToDatabase(Actor actor) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("WEB-INF/addActor.jsp");
		return mv;
	}
	
	@RequestMapping(path = "addActor.do", method = RequestMethod.POST)
	public String addActor(Actor actor) {
		
		try {
			db.addActor(actor);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "WEB-INF/actorDetails.jsp";
	}
	
	// Edit film section
	
	@RequestMapping(path = "editFilm.do", method = RequestMethod.GET)
	public ModelAndView updateFilmInDatabase(Film film) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject(film);
		mv.setViewName("WEB-INF/editFilm.jsp");
		return mv;
	}
	
	// use a RequestParam inside of the method here to insert the value of the requested
	// film from the film details
	@RequestMapping(path = "editFilm.do", method = RequestMethod.POST)
	public String updateFilm(Film film) {
		
		
		db.addFilm(film);
		return "WEB-INF/filmDetails.jsp";
	}
	
	// Delete film section
	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.GET)
	public ModelAndView deleteFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		try {
			db.deleteFilm(film);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.setViewName("redirect:index.html");
		return mv;
	}

}
