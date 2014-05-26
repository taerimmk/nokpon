package com.june.app.site.web;

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

import com.june.app.site.model.Video;
import com.june.app.site.service.VideoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class VideoController {
	
	private static final Logger logger = LoggerFactory.getLogger(VideoController.class);
	
	@Autowired
	private VideoService videoService;
	
	@RequestMapping(value = "/site/video/list/{pageIndex}", method = {RequestMethod.POST, RequestMethod.GET})
	public String getVideoList(Locale locale,
			@ModelAttribute("video") Video video,
			@PathVariable int pageIndex,
			Model model) {
		logger.debug("=====] call getVideoList [=====");
		/**페이지당 보여주는 게시물 수*/
		video.setPageSize(9);
		/**현재 페이지*/
		video.setPageIndex(pageIndex);
		Map<?,?> videoList = videoService.videoListWithPaging(video);

		long totalCnt = (long) videoList.get("videoListCnt");
		video.setTotalCnt(totalCnt);
		
		model.addAttribute("videoList", videoList.get("videoList") );
		model.addAttribute("videoListCnt", totalCnt );
		
		return "site/videoList";
	}
	
	
	@RequestMapping(value = "/site/video/get/{nttId}/{pageIndex}", method = RequestMethod.GET)
	public String getVideoDetail(Locale locale,
			@PathVariable Integer nttId,
			@PathVariable int pageIndex,
			Model model) {
		logger.debug("=====] call getVideoDetail [=====");
		Video video = videoService.videoGet(nttId);
		video.setPageIndex(pageIndex);
        model.addAttribute("video", video);
		return "site/videoDetail";
	}
	
	
}
