<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20160608160250/css/bandComponent.css?_=20160608160250">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20160608160250/css/band.css?_=20160608160250">
<link rel="stylesheet" type="text/css"
	href="http://s.cmstatic.net/webclient/dres/20160608160250/css/bandLayout.css?_=20160608160250">
        

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
    max-height: 150px;
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


   <div class="commside" style="width: 30%; float: left; height: 100%;">
  <aside id="info" data-uiselector="leftSection" data-skin="skin5" style="min-width:210px;max-width:210px;float: right; margin-right: 30px;">

	<!-- pool -->

	<div data-viewname="DBandCoverItemView">
		<div class="uCover aside" data-type="type2">
			<div class="bandUri">
				<div class="cover" data-skinfactor="beforeBg">
					<a href="/#!/band/61355066"><img class="coverImg"
						src="http://coresos.phinf.naver.net/a/2gegeb_c/18aUd015f6anox25rtzm_5ksoqj.jpg?type=cover_a264"
						alt=""></a>
				</div>
				<div class="bandName">
					<div class="bandWrap">
						<p class="uriText">
							<a href="/#!/band/61355066">123</a>
						</p>
						<p class="desc" data-uiselector="bandDescription"
							style="word-wrap: break-word;">
							<a href="#" class="more _seeMoreDescBtn" style="display: none;">&nbsp;더보기</a>
						</p>
						<p class="member -type2">
							멤버 2 <a href="/#!/band/61355066/invite" data-icon="invite"
								data-skinfactor="color">초대</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</div>
	<br>


	<!--  chat -->
<div data-uiselector="summaryRegion">
		<div data-viewname="DBandSummaryItemView">
			<div data-uiselector="bandChannelsRegion" style="min-height: 100px;" class="widget">
				<div data-viewname="DBandChattingChannelListView">
					<div class="tit noArrow">
						<h2 style="margin-top: 0;">접속중 <font style="color:#F15F5F;">${count}</font></h2>
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
										<a href="javascript:uid='${l.userid }';msgOpen();"><span> <img
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
    
    </div>     
    
<div style="width: 30%; position:absolute; height: 100%;right : 200px;z-index: 0;">
<aside id="banner" data-uiselector="bannerRegion">
						<div data-viewname="DBannersView" class="inner">
							<div data-uiselector="bandBannerRegion" class="widget myBand">
								<div data-viewname="DBandBannerView">
									<div class="tit _myBandListTitle" data-skin="skin5">
										<h2>내 카풀</h2>
									</div>
									<div class="dummy" data-uiselector="dummy">
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
									</div>
									<div class="scrollWrap">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<ul data-uiselector="bandList">
													<li data-viewname="DBandBannerItemView" data-skin="skin5" class=""><a href="#"><span data-skinfactor="beforeBg"></span> <span><strong title="">가입된 카풀1</strong> </span></a></li>
													<li data-viewname="DBandBannerItemView" data-skin="skin4" class=""><a href="#"><span data-skinfactor="beforeBg"></span> <span><strong title="">가입된 카풀2</strong> </span></a></li>
													<li data-viewname="DBandBannerItemView" data-skin="skin3" class=""><a href="#"><span data-skinfactor="beforeBg"></span> <span><strong title="">가입된 카풀3</strong> </span></a></li>
													<li data-viewname="DBandBannerItemView" data-skin="skin2" class=""><a href="#"><span data-skinfactor="beforeBg"></span> <span><strong title="">가입된 카풀4</strong> </span></a></li>
												</ul>
											</div>
											<div class="nano-pane" style="display: block;">
												<div class="nano-slider" style="height: 201px; transform: translate(0px, 35px);"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div data-uiselector="recommendBandBannerRegion" class="widget proposeBand">
								<div data-viewname="DBandBannerRecommendBandsCompositeView">
									<h2 class="tit">
										<a href="#" data-icon="right" data-uiselector="btnMoveDiscover">이런 밴드는 어때요</a>
									</h2>
									<div class="dummy" data-uiselector="recommendBandsDummy">
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
										<div></div>
									</div>
									<div class="scrollWrap">
										<div class="nano has-scrollbar">
											<div class="nano-content" tabindex="0" style="right: -17px;">
												<ul data-uiselector="recommendBands">
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin9"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2gei0a_0/7f8Ud015h6bj6qmqnig5_tycu2s.jpg?type=s150_low" width="44" height="44" alt="팩토리크루" data-skinfactor="border"></span> <span><strong title="팩토리크루">여행을 떠나요</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin10"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2h0j6c_e/e7bUd015spyt7qyt1tz3_wptrrw.jpg?type=s150_low" width="44" height="44" alt="흔남들의 여심저격 스타일링" data-skinfactor="border"></span> <span><strong title="흔남들의 여심저격 스타일링">잉행 공장 ㄱㄱ</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin3"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2h40bb_e/03jUd015anb6lqiyi6pz_enolh1.jpg?type=s150_low" width="44" height="44" alt="우울증 이야기(동양과 서양매체를 이용한 심리상담)" data-skinfactor="border"></span> <span><strong title="우울증 이야기(동양과 서양매체를 이용한 심리상담)">급구 부산가실 분																	서양매체를 이용한 심리상담)</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin4"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2h4c7e_j/354Ud015xl4ref2geqzt_y9wczf.jpg?type=s150_low" width="44" height="44" alt="어린이집교사 상담전문" data-skinfactor="border"></span> <span><strong title="어린이집교사 상담전문">ㅋㅋㅋㅋ</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin4"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2ghcj3_8/48cUd015b4dhvztxjp90_aq02eu.jpg?type=s150_low" width="44" height="44" alt="치아 교정하는 사람들" data-skinfactor="border"></span> <span><strong title="치아 교정하는 사람들">쑤갱네 조</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin2"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2h2iee_2/919Ud015gskg9cpebv2d_308wvj.jpg?type=s150_low" width="44" height="44" alt="놀이기구 정ㅋ벅ㅋ" data-skinfactor="border"></span> <span><strong title="놀이기구 정ㅋ벅ㅋ">모여라</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin5"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2gfi9e_i/5hiUd01558ym1u0xk8n1_13rgio.jpg?type=s150_low" width="44" height="44" alt="립스틱만 50개째" data-skinfactor="border"></span> <span><strong title="립스틱만 50개째">갈데 없음 오셈</strong> </span></a></li>
													<li data-viewname="DBandBannerRecommendBandsItemView" data-skin="skin10"><a href="#" data-uiselector="goTargetBand"><span data-skinfactor="beforeBg"><img src="http://coresos.phinf.naver.net/a/2g1jf2_8/6geUd0151j5a495obd9u8_bwwo23.jpg?type=s150_low" width="44" height="44" alt="김필(Kim Feel) 팬 밴드" data-skinfactor="border"></span> <span><strong title="김필(Kim Feel) 팬 밴드"></strong>몰라 뭐하지</span></a></li>
												</ul>
											</div>
											<div class="nano-pane">
												<div class="nano-slider" style="height: 174px; transform: translate(0px, 0px);"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div>
