
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
							<div class="col-md-2 "></div>

							<div class="col-md-8 ">
								<article class="singlepost colored">
									<div class="singlwrap">

										<div class="singlwrap linetopbtm bumps">
											<h3 class="nomargin">REGISTER</h3>
										</div>
										<div id="respond" class="comment-respond">
											<!-- <h3 id="reply-title" class="comment-reply-title">LOG IN
											</h3> -->
											<form
												action="http://aonethemes.com/infinitygrid/wp-comments-post.php"
												method="post" id="commentform" class="comment-form">
												<p class="comment-form-comment">
													<label for="userId">아이디 <span class="required">*</span></label>
													<input id="userId" name="userId" type="text" value=""
														class="auth" size="48" aria-required="true"
														style="width: 100%;" />
												</p>
												<p class="comment-form-comment" style="margin-bottom: 20px;">
													<input name="submit" type="button" id="goDupAjax"
														value="중복확인" class="submit" style="width: 100%;" />
													<!-- <input name="submit" type="button" id="" value="중복확인" class="submit"
														style="width: 100%;" data-toggle="modal"
														data-target="#myModal" /> -->
												</p>
												<p class="comment-form-comment">
													<label for="url">비밀번호 <span class="required">*</span></label>
													<input id="url" name="url" type="text" value=""
														class="auth" style="width: 100%;" />
												</p>
												<p class="comment-form-comment">
													<label for="url">비밀번호 확인<span class="required">*</span></label>
													<input id="url" name="url" type="text" value=""
														style="width: 100%;" />
												</p>

												<p class="comment-form-comment">
													<label for="url">이름 <span class="required">*</span></label>
													<input id="url" name="url" type="text" value=""
														style="width: 100%;" />
												</p>
												<p class="comment-form-comment">
													<label for="url">이메일 <span class="required">*</span></label>
													<input id="url" name="url" type="text" value=""
														style="width: 100%;" />
												</p>
												<p class="comment-form-comment">
													<input name="submit" type="button" id="submit" value="가입하기"
														class="submit" style="width: 100%;" />
												</p>

											</form>
										</div>
										<!-- #respond -->

									</div>
								</article>
							</div>
							<div class="col-md-2 "></div>
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
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">아이디 중복체크</h4>
				</div>
				<div class="modal-body">
					<p>
						<input id="author" name="author" type="text" value="" size=""
							aria-required="true" style="width: 70%;" /> <input name="submit"
							type="button" id="" value="중복확인"
							style="width: 20%; margin-left: 10px;" class="submitRow" />
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<!-- <button type="button" class="btn btn-primary">Save changes</button> -->
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			//$('#myModal').modal();
			$("#goDupAjax").on('click', function() {
				/** ID 정규시*/
				var regExp = /^[a-z0-9_]{4,20}$/;
				var userId = $("#userId").val();
				if (regExp.test(userId)) {
					$.ajax({
						type : "POST",
						url : "<c:url value='/idDupCheck.json'/>",
						data : {
							userId : userId
						}
					}).done(function(json) {
						var result = json.result;
						if(Boolean(result) && result < 1){
							alert("사용할수 있는 아이디 입니다.");
						} else {
							alert("사용할수 없는 아이디 입니다.");
							return false;
						}
						
					});
					return false;
				} else {
					alert("아이디는 4~20 자리의 영문,숫자만 허용됩니다.");
					return false
				}
			});
		});
	</script>
</body>
</html>