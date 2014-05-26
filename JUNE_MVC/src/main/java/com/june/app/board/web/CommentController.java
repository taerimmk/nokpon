package com.june.app.board.web;

import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.june.app.board.model.Comment;
import com.june.app.board.service.CommentService;
import com.june.app.cmn.service.FileService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommentController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommentController.class);
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private FileService fileService;
	
	@RequestMapping(value = "/comment/list/{div}/{pNttId}/{pageIndex}", method = {RequestMethod.POST, RequestMethod.GET})
	public String getCommentList(Locale locale,
			@ModelAttribute("comment") Comment comment,
			@PathVariable String div,
			@PathVariable int pNttId,
			@PathVariable int pageIndex,
			Model model) {
		/**페이지당 보여주는 게시물 수*/
		comment.setPageSize(5);
		/**현재 페이지*/
		comment.setPageIndex(pageIndex);
		/**게시판 ID*/
		comment.setpNttId(pNttId);
	
		Map<?,?> commentList = commentService.commentList(comment);
		
		long totalCnt = (long) commentList.get("commentListCnt");
		comment.setTotalCnt(totalCnt);
		
		model.addAttribute("commentList", commentList.get("commentList") );
		model.addAttribute("commentListCnt", totalCnt );
		
		
		
		return "board/commentList";
	}
	
	
}
