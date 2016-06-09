<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"
	class="scrollHtml win win7 chrome chrome50 webkit webkit537">
<head>
<title>123 (2) - 채팅</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="format-detection" content="telephone=no">
<meta name="robots" content="noindex">
<link rel="shortcut icon"
	href="http://s.cmstatic.net/webclient/res/20160608160250/images/favicon.ico">

<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20160608160250/css/bandComponent.css?_=20160608160250">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20160608160250/css/band.css?_=20160608160250">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20160608160250/css/bandLayout.css?_=20160608160250">

<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">





<script type="text/javascript">
    
    document.domain = "band.us";
    
    window.isOriginMobile = false;
    window.isOriginTablet = false;
    window.isOriginNormal = true;
    
    window.isMobile = false;
    window.isTablet = false;
    window.isNormal = true;
    window.isMobileView = false;
    window.isDesktopView = true;

    window.isFacebookInapp = false;
    window.isFacebookMessengerInapp = false;
    window.isTwitterInapp = false;
    window.isWeChatInapp = false;

    window.scriptBaseUrl = "http://s.cmstatic.net/webclient/script/20160608160250";

    
    
    
    window.resBaseUrl = "http://s.cmstatic.net/webclient/dres/20160608160250";
    
    

    window.resDevicePath = "/desktop";
    window.version = "20160608160250";
    window.apiDomain = "api.band.us";
    window.apiStickerDomain = "sapi.band.us";
    window.uploadServerDomain = "up.band.us";
    window.helpServerDomain = "help.campmobile.com";
    window.apiViewDomain = "view.band.us";
    window.advertisementApiDomain = "ad-api.band.us";
    window.promotionServerDomain = "promotion.band.us";
    window.wssServerDomain = "wss2.band.us";
    window.authDomain= "auth.band.us";
    window.reportDomain= "report.band.us";
    window.pcWebDomain= "band.us";
    window.bizcenterDomain="bizcenter.band.us";
    window.scvDomain="kr-scv.band.us";
    window.passDomain="pass.band.us";
    window.stickerBasePath = "http://s.cmstatic.net";

    
    window.formatjsLang = "ko";
    window.formatjsRelativeformatLang = "ko";
    window.momentjsLang = "ko";
    window.messageLang = "ko";
    window.ttsLang = "ko-kr";
    window.countryCode = "KR" || "US";
    
    
    window.introLang = "ko";
    window.intlLang = "ko";

    // IE console 에러 방어 코드
    if (!window.console) {
        window.console = {log: function () {}};
    }
</script>
<script type="text/javascript" charset="UTF-8"
	src="http://s.cmstatic.net/webclient/script/20160608160250/require.js"></script>
<script type="text/javascript" charset="UTF-8"
	src="http://s.cmstatic.net/webclient/script/20160608160250/requireConfig.js"></script>
</head>
<style>
.sChatPop {
    position: relative;
    width: 100%;
    height: 100%;
    min-width: 400px!important;
    min-height: 54px!important;
    max-height: 120px;
    margin: 0 auto;
    padding-top: 54px;

}
.sChatPop .cCommentWrite .writeWrap {
    position: relative;
    height: 100%;
    margin: 0;
    padding: 10px 0px 10px 20px;
    border: 0;
    border-top: 0;
    background: #fff;
}
</style>
<body data-skin="skin5" style="padding-right: 0px; overflow: visible;">
	<div data-viewname="DChattingRoomLayoutView" id="wrap" class="sChatPop">
		<div class="all">
			<header class="header" data-skinfactor="bg">
				<div class="group">
					<div>
						<h1 data-uiselector="titleBig">보낸사람 :${sendid}</h1>
						<h2 data-uiselector="titleSmall" style="display: none;"></h2>
					</div>
				</div>
			</header>
			
			<div class="chatInputWrap">
				<div class="cCommentWrite" style="min-height: 200px;max-height:300px;;top: 54px;" data-uiselector="messageInputRegion">
					<div data-viewname="DSimpleMessageInputView" style="height: 100%;">
						<div class="senddate">
							<ul>
								<li><label>&nbsp;&nbsp;받은 날짜 : ${senddate}</label></li>
							</ul>
						</div>
						<form name="mWrite" action="messageSend.do">
						<input type="hidden" name="sendid" value="${userid}">
						<input type="hidden" name="receiveid" value="${rid}">
						<div class="writeWrap" data-uiselector="mentionListParent">
							<label class="gSrOnly" for="write_comment_view21"></label>
						
							<textarea cols="18" rows="2"
								class="commentWrite _use_keyup_event" id="write_comment_view21"
								name="content" data-uiselector="messageTextArea" disabled style="width:370px;height:170px">${contents}</textarea>
						</div>
						</form>
						<div class="uploadPreview" style="display: none;"
							data-uiselector="previewArea">
							<div class="imgWrap">
								<img src="" alt="" width="165" height="165"
									class="_prevent_context" data-uiselector="previewImage">
								<img
									src="http://s.cmstatic.net/webclient/dres/20160608160250/images/common/loading4.gif"
									width="32" height="32" title="로딩중" class="loading"
									data-uiselector="loadingImage">
							</div>
							<button class="closePreview" type="button" data-icon="pc-delete"
								data-uiselector="closePreviewButton">
								<span class="gSrOnly">Close</span>
							</button>
						</div>
						<div data-uiselector="stickerSelectRegion" style="display: none;"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="layerContainer"></div>
	</div>
</body>
</html>