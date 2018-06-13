package com.skilldistillery.film.data;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.skilldistillery.film.entities.Film;

public class DAOTests {
	public DatabaseAccessorObject dao;
	@Before
	public void setUp() throws Exception {
		dao = new DatabaseAccessorObject();
	}

	@After
	public void tearDown() throws Exception {
		dao = null;
	}

	@Test
	public void test_film_search_by_id() {
		Film f = null;
		try {
			f = dao.getFilmById(1000);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("Academy Dinosaur", f.getTitle());
	}

}
