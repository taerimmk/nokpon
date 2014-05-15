
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

							<div class="col-md-9">
								<h1 class="nomargin lh-40">AccessDenied Error</h1>
							</div>
							<!--end 9 col-->

							<div class="col-md-3">
								<form method="get" id="searchForm"
									action="http://aonethemes.com/infinitygrid/">
									<div class="search-wrapper">
										<div class="search-icon"></div>
										<input type="text" maxlength="30" name="s" id="s"
											class="search_input"> <input type="submit"
											id="searchSubmit">
									</div>
								</form>
							</div>
							<!--end 3col-->

						</div>
						<!--end row-->
					</div>
					<!--end container-->
				</section>
				<section class="section-wrap nopads">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="hrrule"></div>
							</div>
						</div>
					</div>
				</section>

				<section class="section-wrap">
					<div class="container">
						<div class="row">

							<div class="col-md-12">
								<h1>Please checked your Account. Sorry!</h1>
							</div>
							<!--end span 12-->

						</div>
						<!--end row-->
					</div>
					<!--end container-->
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