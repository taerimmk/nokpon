
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
												action="<c:url value='j_spring_security_check'/>" method="POST"
												id="commentform" class="comment-form">
												<p class="comment-form-comment">
													<label for="author">아이디 <span class="required">*</span></label>
													<input id="username" name="j_username" type="text" value=""
														size="48" aria-required="true" class="auth form-control"/>
												</p>
												<p class="comment-form-comment">
													<label for="url">비밀번호 <span class="required">*</span></label>
													<input id="password" name="j_password" type="password" value=""
														class="auth form-control" />
												</p>
											
											<p class="comment-form-comment">
												<input name="" type="submit" id="submit"
													value="LOG IN" style="width: 100% !important;" />
											</p>
											<p class="comment-form-comment">
												<a href="<c:url value="/register/registerUser" />" ><input name="" type="button" id=""
													value="REGISTER" class="submit" style="width: 100%;" /></a>
											</p>
											</form>
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