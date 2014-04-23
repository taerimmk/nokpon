
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!doctype html>
<html lang="en-US">
<head>
<jsp:include page="/WEB-INF/jsp/cmn/inc/headerResource.jsp" />

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
							<div class="col-md-4 "></div>

							<div class="col-md-4 ">
								<article class="singlepost colored">
									<div class="singlwrap">

										<div class="singlwrap linetopbtm bumps">
											<h3 class="nomargin">LOG IN</h3>
										</div>
										<div id="respond" class="comment-respond">
											<!-- <h3 id="reply-title" class="comment-reply-title">LOG IN
											</h3> -->
											<form
												action="http://aonethemes.com/infinitygrid/wp-comments-post.php"
												method="post" id="commentform" class="comment-form">
												<p class="comment-form-comment">
													<label for="author">아이디 <span class="required">*</span></label>
													<input id="author" name="author" type="text" value=""
														size="48" aria-required="true" style="width: 100%;" />
												</p>
												<p class="comment-form-comment">
													<label for="url">비밀번호 <span class="required">*</span></label>
													<input id="url" name="url" type="text" value=""
														style="width: 100%;" />
												</p>
											</form>
											<p class="comment-form-comment">
												<input name="submit" type="button" id="submit"
													value="LOG IN" style="width: 100% !important;" />
											</p>
											<p class="comment-form-comment">
												<a href="<c:url value="/registerUser" />" ><input name="submit" type="button" id="submit"
													value="REGISTER" style="width: 100% !important;" /></a>
											</p>
										</div>
										<!-- #respond -->

									</div>
								</article>
							</div>
							<div class="col-md-4 "></div>
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