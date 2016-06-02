<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-2.2.3.js"></script>
<link href="/final02/CSS/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="/final02/CSS/menu.css" rel="stylesheet" type="text/css" />
<script src="/final02/bootstrap/js/bootstrap.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-findcond navbar-fixed-top">
    <div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Findcond</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-fw fa-bell-o"></i> Bildirimler <span class="badge">0</span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#"><i class="fa fa-fw fa-tag"></i> <span class="badge">Music</span> sayfası <span class="badge">Video</span> sayfasında etiketlendi</a></li>
						<li><a href="#"><i class="fa fa-fw fa-thumbs-o-up"></i> <span class="badge">Music</span> sayfasında iletiniz beğenildi</a></li>
						<li><a href="#"><i class="fa fa-fw fa-thumbs-o-up"></i> <span class="badge">Video</span> sayfasında iletiniz beğenildi</a></li>
						<li><a href="#"><i class="fa fa-fw fa-thumbs-o-up"></i> <span class="badge">Game</span> sayfasında iletiniz beğenildi</a></li>
					</ul>
				</li>
				<li class="active"><a href="#">Ana Sayfa <span class="sr-only">(current)</span></a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Admin <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Geri bildirim</a></li>
						<li><a href="#">Yardım</a></li>
						<li class="divider"></li>
						<li><a href="#">Ayarlar</a></li>
						<li><a href="#exit">Çıkış yap</a></li>
					</ul>
				</li>
			</ul>
			<form class="navbar-form navbar-right search-form" role="search">
				<input type="text" class="form-control" placeholder="Search" />
			</form>
		</div>
	</div>
</nav>
<ul id="cbp-tm-menu" class="cbp-tm-menu">
	<li onclick="location.href='index.do'">
		<a href="#">Home</a>
	</li>

	<li>
		<a href="myPage.do">마이페이지</a>
	</li>
	<li>
	
		<a href="#"><img width="20px" height="20px"src="/final02/icons/car.png">카풀</a>
		<ul class="cbp-tm-submenu">
			<li><a href="poolMain.do" class="cbp-tm-icon-archive">메인</a></li>
			<li><a href="poolAdd.do" class="cbp-tm-icon-archive">등록하기</a></li>
			<li><a href="poolMemberList.do" class="cbp-tm-icon-cog">탈래요</a></li>
			<li><a href="poolMasterList.do" class="cbp-tm-icon-location">타세요</a></li>
			<li><a href="shortPoolList.do" class="cbp-tm-icon-users">단기카풀</a></li>
			<li><a href="longPoolList.do" class="cbp-tm-icon-earth">정기카풀</a></li>
			<li><a href="poolStatus.do" class="cbp-tm-icon-location">예약하기</a></li>
		</ul>
	</li>
	<li>
		<a href="carList.do">차량관리</a>
	</li>
	<li>
		<a href="carBookInfo.do">차계부</a>
		<ul class="cbp-tm-submenu">
			<li><a href="cost.do" class="cbp-tm-icon-archive">차계부</a></li>
			<li><a href="cost.do" class="cbp-tm-icon-archive">비용</a></li>
			<li><a href="graph.do" class="cbp-tm-icon-cog">그래프</a></li>
		</ul>
	</li>
	<li>
		<a href="comm.do">커뮤니티</a>
		<ul class="cbp-tm-submenu">
			<li><a href="comm.do" class="cbp-tm-icon-screen">전체글</a></li>
			<li><a href="calendar.do" class="cbp-tm-icon-mail">일정</a></li>
			<li><a href="commMember.do" class="cbp-tm-icon-contract">멤버</a></li>
		</ul>
	</li>
	<li>
		<a href="csCenter.do">고객센터</a>
		<ul class="cbp-tm-submenu">
			<li><a href="csCenter.do" class="cbp-tm-icon-screen">공지사항</a></li>
			<li><a href="qnaList.do" class="cbp-tm-icon-screen">자주묻는질문</a></li>
			<li><a href="oneAndOne.do" class="cbp-tm-icon-mail">1:1문의</a></li>
			<li><a href="useGuideList.do" class="cbp-tm-icon-contract">이용안내</a></li>
		</ul>
	</li>
</ul>

		<script>
			var menu = new cbpTooltipMenu( document.getElementById( 'cbp-tm-menu' ) );
		</script>
			  </ul>
	<!-- --------------------------------------------------------------------------------------------------- -->
		
</body>
</html>