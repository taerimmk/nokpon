
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en-US">
<head>
<title>main</title>
<jsp:include page="/WEB-INF/jsp/cmn/inc/headerResource.jsp" />
<style type="text/css" class="options-output">
h1 {
	font-family: Varela Round;
	font-weight: 400;
	font-style: normal;
	font-size: 28px;
	line-height: 40px;
	color: #757575;
}

h2 {
	font-family: Varela Round;
	font-weight: 400;
	font-style: normal;
	font-size: 24px;
	line-height: 40px;
	color: #757575;
}

h3 {
	font-family: Varela Round;
	font-weight: 400;
	font-style: normal;
	font-size: 18px;
	line-height: 30px;
	color: #757575;
}

h4 {
	font-family: Varela Round;
	font-weight: 400;
	font-style: normal;
	font-size: 16px;
	line-height: 30px;
	color: #757575;
}

h5 {
	font-family: Varela Round;
	font-weight: 400;
	font-style: normal;
	font-size: 14px;
	line-height: 30px;
	color: #757575;
}

h6 {
	font-family: Varela Round;
	font-weight: 400;
	font-style: normal;
	font-size: 14px;
	line-height: 30px;
	color: #757575;
}

h1 a,h2 a,h3 a,h4 a,h5 a,h6 a {
	color: #757575;
}

h1 a:hover,h2 a:hover,h3 a:hover,h4 a:hover,h5 a:hover,h6 a:hover {
	color: #e87e70;
}

body,p {
	font-family: Lato;
	font-weight: 400;
	font-style: normal;
	font-size: 14px;
	line-height: 22px;
	color: #999;
}

.sf-menu-primary a {
	font-family: Lato;
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	line-height: 22px;
	color: #757575;
}

article a,p a,.sidebar a {
	color: #757575;
}

article a:hover,p a:hover,.sidebar a:hover {
	color: #e87e70;
}

.accent a {
	color: #e87e70;
}

.accent a:hover {
	color: #e87e70;
}

.sf-menu-primary a {
	color: #757575;
}

.sf-menu-primary a:hover,.sf-menu-primary .current-menu-item a {
	color: #e87e70;
}

.sf-menu-primary ul li a,ul.sf-menu-primary ul li.current-menu-item a {
	color: #c8c8c8;
}

.sf-menu-primary ul li a:hover,ul.sf-menu-primary ul li.current-menu-item a:hover
	{
	color: #efefef;
}

html {
	background-color: #efefef;
}
</style>
</head>
<body class="home blog">
	<jsp:include page="/WEB-INF/jsp/cmn/inc/headerContentsMobile.jsp" />

	<div class="entire-site-wrap">
		<div class="site-margin">
			<div class="site-wrap-shadow">
				<jsp:include page="/WEB-INF/jsp/cmn/inc/headerContents.jsp" />

				<section class="section-wrap">
					<div class="container">
						<div class="row">

							<div id="mainmasonry">

								<div class="col-md-4 bump" id="">
									<div class="colored nopbump rel">
										<div
											class="post-77 post type-post status-publish format-quote hentry category-post-formats category-quotes tag-famous-quotes tag-quote"></div>

										<div class="singlecp quotelight">
											<a
												href="http://aonethemes.com/infinitygrid/a-quote-from-oscar/">
												"The only difference between the saint and the sinner is
												that every saint has a past, and every sinner has a future."
												<p>Oscar Wilde</p>
											</a>
										</div>

									</div>
									<!--colored-->
								</div>
								<!--four col-->
								<div class="col-md-4 bump" id="">
									<div class="colored nopbump rel">
										<div
											class="post-31 post type-post status-publish format-video hentry category-post-formats category-video-clips tag-video-format tag-vimeo"></div>

										<div class="fit-vids bumpsm">
										<!-- <div class="singlecp bumpsm dark"> -->
											<!-- <iframe
												src="//player.vimeo.com/video/32655795?title=0&amp;byline=0&amp;portrait=0"
												width="1100" height="619" frameborder="0"
												webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> -->
											${video.nttLink }	
										</div>

										<div class="post-text-grip accent">
											<!-- <a
												href="http://aonethemes.com/infinitygrid/category/post-formats/"
												title="View all posts in Post formats" rel="category tag">Post
												formats</a>, <a
												href="http://aonethemes.com/infinitygrid/category/video-clips/"
												title="View all posts in Video clips" rel="category tag">Video
												clips</a> -->
										</div>

										<h3 class="fully">
											<a
												href="<c:url value="/site/video/get/${video.nttId}/1"/>" >${video.nttSj}</a>
										</h3>

										<div class="post-text-grip topbtmbumpmin">
											<p>
												${video.nttCn}<a
													class="read-more"
													href="http://aonethemes.com/infinitygrid/vimeo-video-post/">[...]</a>
											</p>
										</div>

										<div class="post-text-grip linetop-pads">
											<div class="infodiv accent pull-left bumpright">3
												months ago</div>

											<div class="infodiv chatimg pull-right">0</div>


											<div class="infodiv countimg pull-right">
												<span class="heartcount">5</span>
											</div>
										</div>
									</div>
									<!--colored-->
								</div>
								<div class="col-md-4 bump" id="">
									<div class="colored nopbump rel">
										<div
											class="post-64 post type-post status-publish format-image hentry category-audio category-photography tag-photos"></div>
										<div class="singlecp bumpsm dark">
											<a
												href="http://aonethemes.com/infinitygrid/too-many-hours-of-gaming/">
												<img
												src="http://aonethemes.com/infinitygrid/wp-content/uploads/sites/10/2014/01/kidinseat-710x443.jpg"
												alt="" class="img-responsive opac" />
											</a>
										</div>
										<div class="post-text-grip accent">
											<a href="http://aonethemes.com/infinitygrid/category/audio/"
												title="View all posts in Audio" rel="category tag">Audio</a>,
											<a
												href="http://aonethemes.com/infinitygrid/category/photography/"
												title="View all posts in Photography" rel="category tag">Photography</a>
										</div>

										<h3 class="fully">
											<a
												href="http://aonethemes.com/infinitygrid/too-many-hours-of-gaming/">Too
												many hours of gaming</a>
										</h3>

										<div class="post-text-grip topbtmbumpmin">
											<p>
												He lay on his armour-like back, and if he lifted his head a
												little he could see his brown belly, slightly domed <a
													class="read-more"
													href="http://aonethemes.com/infinitygrid/too-many-hours-of-gaming/">[...]</a>
											</p>
										</div>

										<div class="post-text-grip linetop-pads">
											<div class="infodiv accent pull-left bumpright">3
												months ago</div>

											<div class="infodiv chatimg pull-right">0</div>


											<div class="infodiv countimg pull-right">
												<span class="heartcount">42</span>
											</div>
										</div>
									</div>
									<!--colored-->
								</div>
								<!--four col-->
								
								<!--four col-->
								<div class="col-md-4 bump" id="masonryme">
									<div class="colored nopbump rel">
										<div
											class="post-52 post type-post status-publish format-gallery hentry category-photography category-post-formats tag-blonde tag-models tag-photos"></div>
										<div class="singlecp bumpsm dark">
											<a
												href="http://aonethemes.com/infinitygrid/beautiful-girls-slideshow/">
												<img
												src="http://aonethemes.com/infinitygrid/wp-content/uploads/sites/10/2014/01/greenbgblond-710x946.jpg"
												alt="" class="img-responsive opac" />
											</a>
										</div>


										<div class="post-text-grip accent">
											<a
												href="http://aonethemes.com/infinitygrid/category/photography/"
												title="View all posts in Photography" rel="category tag">Photography</a>,
											<a
												href="http://aonethemes.com/infinitygrid/category/post-formats/"
												title="View all posts in Post formats" rel="category tag">Post
												formats</a>
										</div>

										<h3 class="fully">
											<a
												href="http://aonethemes.com/infinitygrid/beautiful-girls-slideshow/">Beautiful
												girls slideshow</a>
										</h3>

										<div class="post-text-grip topbtmbumpmin">
											<p>
												Maecenas nec odio et ante tincidunt tempus. Donec vitae
												sapien ut libero venenatis faucibus. Nullam quis ante. Etiam
												sit amet orci eget <a class="read-more"
													href="http://aonethemes.com/infinitygrid/beautiful-girls-slideshow/">[...]</a>
											</p>
										</div>

										<div class="post-text-grip linetop-pads">
											<div class="infodiv accent pull-left bumpright">3
												months ago</div>

											<div class="infodiv chatimg pull-right">1</div>


											<div class="infodiv countimg pull-right">
												<span class="heartcount">46</span>
											</div>
										</div>




									</div>
									<!--colored-->
								</div>
								<!--four col-->


								<div class="col-md-4 bump" id="masonryme">
									<div class="colored nopbump rel">
										<div
											class="post-50 post type-post status-publish format-quote hentry category-post-formats category-quotes tag-famous-quotes tag-quote"></div>






										<div class="singlecp quotelight">
											<a href="http://aonethemes.com/infinitygrid/a-great-quote/">
												"When you are courting a nice girl an hour seems like a
												second. When you sit on a red-hot cinder a second seems like
												an hour. That's relativity."
												<p>Albert Einstein</p>
											</a>
										</div>

									</div>
									<!--colored-->
								</div>
								<!--four col-->

							</div>
							<!--end masonry grid-->
							<!-- <div class="col-md-4 col-md-offset-4">
								<div class="pagination-load-more">
									<div class="pagination-me centertext">
										<a href="http://aonethemes.com/infinitygrid/page/2/">Load
											more</a>
									</div>

									<span class="pagination-span-load"></span>
								</div>
							</div> -->
							<!--span12-->



						</div>
					</div>
				</section>



				<jsp:include page="/WEB-INF/jsp/cmn/inc/footerContents.jsp" />
				<!--colored section footer-->

			</div>
			<!--shadow-->
		</div>
		<!--margin-->
	</div>
	<!--end entiresite wrap-->
	<jsp:include page="/WEB-INF/jsp/cmn/inc/footerResource.jsp" />
</body>
</html>