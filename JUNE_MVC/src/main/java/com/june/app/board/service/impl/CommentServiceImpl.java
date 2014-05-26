/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.june.app.board.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.june.app.board.model.Comment;
import com.june.app.board.repository.CommentRepository;
import com.june.app.board.service.CommentService;

/**
 * Mostly used as a facade for all Petclinic controllers Also a placeholder for @Transactional
 * and @Cacheable annotations
 * 
 * @author Michael Isvy
 */
@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentRepository commentRepository;

	
	
	@Override
	@Transactional(readOnly = true)
	public Map<?,?> commentList(Comment vo) throws DataAccessException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("commentList", commentRepository.commentList(vo));
		map.put("commentListCnt", commentRepository.commentListCnt(vo));
		return map;
	}
	
	
	@Override
	@Transactional(readOnly = true)
	public void save (Comment vo) throws DataAccessException {
		commentRepository.save(vo);
	}

}
