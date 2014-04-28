
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!doctype html>
<html lang="en-US">
<head>
<jsp:include page="/WEB-INF/jsp/cmn/inc/headerResource.jsp" />
<style type="text/css">
.errors{
color :red;
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
											<form:form id="frm" name="frm" commandName="userInfo"
												action="<c:url value='/registerUser'/>"
												method="post" >
												<p class="comment-form-comment">
													<label for="userId">아이디 <span class="required">*</span></label>
													<input id="userId" name="userId" type="text" value=""
														class="auth form-control" size="48" aria-required="true"
														placeholder="영문, 숫자 혼용 4~20자 이내로 입력해 주세요" /> <input
														type="hidden" id="userIdDup" name="userIdDup" />
														
												</p>
												<p class="comment-form-comment" style="margin-bottom: 20px;">
													<input name="" type="button" id="goDupAjax"
														value="중복확인" class="submit" style="width: 100%;" />
													<!-- <input name="submit" type="button" id="" value="중복확인" class="submit"
														style="width: 100%;" data-toggle="modal"
														data-target="#myModal" /> -->
												</p>
												<p class="comment-form-comment">
													<label for="password">비밀번호 <span class="required">*</span></label>
													<form:input id="password" path="password" type="password" value=""
														class="auth form-control"
														placeholder="영문, 숫자 특수문자 혼용 6~20자 이내로 입력해 주세요" />
														<form:errors path="password" class="errors" />
														 
												</p>
												<p class="comment-form-comment">
													<label for="passwordCert">비밀번호 확인<span
														class="required">*</span></label> <input id="passwordCert"
														name="passwordCert" type="password" value=""
														class="auth form-control" />
												</p>

												<p class="comment-form-comment">
													<label for="name">이름 <span class="required">*</span></label>
													<input id="name" name="name" type="text" value=""
														class="auth form-control" placeholder="이름을 입력해 주세요" />
												</p>
												<p class="comment-form-comment">
													<label for="email">이메일 <span class="required">*</span></label>
													<input id="email" name="email" type="email" value=""
														class="auth form-control" placeholder="이베일을 입력해 주세요." />
												</p>
												<p class="comment-form-comment">
													<input name="goRester" type="button" id="goRester"
														value="가입하기" class="submit" style="width: 100%;" />
												</p>

											</form:form>
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
						if (result == 0) {
							alert("사용할수 있는 아이디 입니다.");
							$("#userIdDup").val(userId);
						} else {
							alert("사용할수 없는 아이디 입니다.");
							return false;
						}

					});
					return false;
				} else {
					alert("아이디는 4~20 자리의 영문,숫자만 허용됩니다.");
					return false;
				}

			});

			$("#goRester").on("click", function(event) {
				 
				
				//HTMLFormElement.prototype.submit.call($('#frm')[0]);
				//document.frm.submit();
				
				 var val = validation();
				console.log("##"+val);
				if (val){
					$("#frm").attr("action", "<c:url value='/registerUser'/>").submit();	
				}
				return false;
			});
		});
		var validation = function() {

			var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			var regPass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,20}$/;
			var userId = $("#userId").val();
			var userIdDup = $("#userIdDup").val();
			var name = $("#name").val();
			var email = $("#email").val();
			var password = $("#password").val();
			var passwordCert = $("#passwordCert").val();

			if (!Boolean(userId)) {
				alert("아이디를 입력해 주세요.");
				return false;
			}
			if (!Boolean(userIdDup)) {
				alert("아이디 중복체크를 해주세요.");
				return false;
			}
			if ( userId != userIdDup ) {
				alert("아이디 중복체크를 다시 해주세요.");
				return false;
			}
			
			if (!Boolean(password)) {
				alert("비밀번호를 입력해 주세요.");
				return false;
			}
			if (!regPass.test(password)) {
				alert("비밀번호는 6~20자리의 영문,숫자 및 특수문자가 포함되어있어여 합니다..");
				return false;
			}
			if (password != passwordCert) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			if (!Boolean(name)) {
				alert("이름을 입력해 주세요.");
				return false;
			}
			if (!Boolean(email)) {
				alert("이메일은 필수입력값 입니다.");
				return false;
			}
			if (!regEmail.test(email)) {
				alert("올바른 이메일 형식이 아닙니다.");
				return false;
			}
			return true;
		};
	</script>
</body>
</html>
