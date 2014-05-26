package com.june.app.board.service;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.june.app.board.model.Comment;


/**
 * Mostly used as a facade for all Petclinic controllers
 *
 * @author Michael Isvy
 */
public interface CommentService {
   
	
	public Map<?,?> commentList(Comment vo) throws DataAccessException;
	
	public void save (Comment vo) throws DataAccessException;
	
}
