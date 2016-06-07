<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
<!--
.arrowblue{
	width: 100px; /*width of menu*/
	border-style: solid solid none solid;
	border-color: #ededed;
	border-size: 1px;
	border-width: 1px;
}

.arrowblue ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
}
	
.arrowblue li a{
	font: bold 12px tahoma, Arial, Helvetica, sans-serif;
	display: block;
    border: 1px solid #becbd2;
	background: #47a3da;
	height: 40px; /*Set to height of bg image- padding within link (ie: 32px - 4px - 4px)*/
	padding: 4px 0 4px 10px;
	line-height: 40px; /*Set line-height of bg image- padding within link (ie: 32px - 4px - 4px)*/
	text-decoration: none;
	text-align: center;
}	

.arrowblue li a:link, .arrowblue li a:visited {
	color: #0033CC;
}

.arrowblue li a:hover{
	color: #000;
	background-position: 100% -32px;
}
.arrowblue li a.selected{
	color: #000;
	background-position: 100% -64px;
}
body{margin-top:20px;}
.fa-fw {width: 2em;}
-->
</style>
<!DOCTYPE html>

        <div class="col-md-2">
            <ul class="nav nav-pills nav-stacked" style=" text-align: center;">
                <li class="active"><a href="#">고객센터</a></li>
                <li><a href="csCenter.do">공지사항</a></li>
               <li><a href="qnaList.do">자주묻는질문(Q&A)</a></li>
              <li><a href="oneAndOne.do">1:1문의</a></li>
	           <li><a href="useGuideList.do">이용안내</a></li>
            </ul>
        </div>
  
<!-- <div class="arrowblue">
	<ul>
	<li><a href="csCenter.do">공지사항</a></li>
	<li><a href="qnaList.do">자주묻는질문(Q&A)</a></li>
	<li><a href="oneAndOne.do">1:1문의</a></li>
	<li><a href="useGuideList.do">이용안내</a></li>
	</ul>
</div> -->