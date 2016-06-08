<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="./bootstrap/css/font-awesome.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        
        
        <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/bandComponent.css?_=20160602183753">
		<link rel="stylesheet" type="text/css" href="http://s.cmstatic.net/webclient/dres/20160602183753/css/band.css?_=20160602183753">        
        

<style>
#info .widget {
    min-width: 210px;
    overflow: hidden;
    border: 1px solid #D5D5D5;
    border-radius: 2px;
    background: #FFF;
}
#info .widget .tit {
    overflow: hidden;
    display: block;
    position: relative;
    height: 42px;
    padding: 0 0 0 14px;
    line-height: 43px;
    background: #FDFDFD;
    font-size: 14px;
    color: #333;
    font-weight: 700;
    text-decoration: none!important;
}
#info .widget .tit h2 {
    position: relative;
    z-index: 1;
    display: block;
    color: inherit;
    line-height: inherit;
    font-size: inherit;
    font-weight: inherit;
    text-decoration: inherit;
}
#info .widget .tit .uButton.newChat {
    z-index: 10;
    position: absolute;
    right: 9px;
    top: 9px;
    height: 24px;
    padding: 0 7px;
    border: 1px solid #DDD;
    background: #fdfdfd;
    color: #777;
    line-height: 23px;
    font-size: 12px;
    font-weight: 700;
}
#info .widget .scrollWrap {
    max-height: 330px;
    overflow-x: hidden;
    border-top: 1px solid #EEE;
    overflow: hidden;
    overflow-y: auto;
    -webkit-overflow-scrolling: touch;
}
#info .widget .scrollWrap .maxHeight.heightAuto {
    height: auto!important;
}
#info .widget .scrollWrap .maxHeight {
    max-height: 223px;
}
#info .widget .scrollWrap .maxHeight.heightAuto .nano-content {
    position: relative!important;
    margin-right: 0;
}
#info .widget ul.chat {
    display: table;
    table-layout: fixed;
}
#info .widget ul.chat li {
    display: table-row-group;
    width: 100%;
}
#info .widget ul.chat li a {
    display: table-row;
    line-height: 1.2;
}
#info .widget ul.chat li a>span:first-child {
    width: 42px;
    padding-right: 0;
}
#info .widget ul.chat li a>span {
    display: table-cell;
    width: 100%;
    padding: 11px 10px 10px;
    padding: 13px 0 0;
    vertical-align: middle;
    border-top: 0!important;
    color: #999;
}

#info .widget ul.chat li a img[data-skinfactor=tBorder] {
    border: 2px solid #4374D9;
}
#info .widget ul.chat li a>span {
    display: table-cell;
    width: 100%;
    padding: 11px 10px 10px;
    padding: 13px 0 0;
    vertical-align: middle;
    border-top: 0!important;
    color: #999;
}
#info .widget ul.chat li a>span span, #info .widget ul.chat li a>span strong {
    display: block;
    overflow: hidden;
    max-width: 100%;
    white-space: nowrap;
    word-break: normal;
    word-wrap: normal;
    text-overflow: ellipsis;
}
#info .widget ul.chat li a img {
    width: 32px;
    height: 32px;
    border-radius: 50%;
    vertical-align: top;
}
#info .widget ul {
    overflow: hidden;
    padding: 0 10px 14px;
    border-top: 1px solid #EEE;
}

</style>
<aside id="info" data-uiselector="leftSection" data-skin="skin5" style="width: 200px;">
	
	<!--  chat -->
	<div data-uiselector="summaryRegion">
		<div data-viewname="DBandSummaryItemView">
			<div data-uiselector="bandChannelsRegion" style="min-height: 270px;" class="widget">
				<div data-viewname="DBandChattingChannelListView">
					<div class="tit noArrow">
						<h2>접속중 <font style="color:#F15F5F;">${count}</font></h2>
						<button data-uiselector="btnNewChatChannel" type="button"
							class="uButton newChat">쪽지</button>
					</div>
					<div class="scrollWrap">
						<div class="nano maxHeight heightAuto has-scrollbar" 
							style="height: 59px; overflow: visible;">
							<div class="nano-content" tabindex="0"
								style="margin-right: -17px;">
								<ul data-uiselector="bandChattingChannelList" class="chat"
									style="display: table;">
							<c:forEach var="l" items="${lists}">
								
						
									<li data-viewname="DBandChattingChannelItemView" class="chat">
										<a href="messageWrite.do?uid=${l.userid}"><span> <img
												src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=s150_low"
												width="38" height="38" data-skinfactor="tBorder">
										</span> <span><strong title="123">&nbsp;&nbsp;${l.userid}</strong> <span></span></span></a>
									</li>
						   	</c:forEach>

								</ul>
							</div>
							<div class="nano-pane" style="display: none;">
								<div class="nano-slider"
									style="transform: translate(0px, 0px); height: 20px;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  chat end-->
</aside>