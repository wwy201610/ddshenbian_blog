<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>幸运大转盘</title>
	<style type="text/css">
		*{
			margin: 0;padding: 0;text-decoration: none;
		}
		body{
			background-color: #f6a620;
		}
		body>img{
			width: 100%;
		}
		.container{
			width: 100%;
		}
		.title {
		    font-weight: bold;
		    font-size: 1.8rem;
		    padding-left: 0.5rem;
		    margin-bottom: 2rem;
		}
		.title span{
			display: inline-block;
			background-color: #000;
			color: #fff;
			padding: 0.1rem 0.5rem;
			margin: 0 0.5rem;
		}
		.title img{
			float: right;
			margin-right: 0.5rem;
			width: 40%;
		}
		.zhuan{
			height: 30rem;
			position: relative;
		}
		.img1 {
		    width: 98%;
		    position: absolute;
		    left: 1%;
		}
		.img2 {
		    width: 88%;
		    position: absolute;
		    top: 5.6%;
		    left: 6%;
		}
		.img3 {
		    position: absolute;
		    width: 30%;
		    top: 35%;
		    left: 35%;
		}
		.cbtn{
			
		}
		.cbtn img {
		    width: 60%;
		    position: relative;
		    left: 20%;
		    margin-bottom: 2rem;
		}
		.list{
			width: 100%;
			height: 20rem;
			background:url(http://m.fullrong.com/wap/theme/wapdial/list.png) no-repeat;
			background-size: 100%;
		}
		.list ul {
		    position: relative;
		    top: 20%;
		    padding-left: 10%;
		    padding-right: 10%;
		    list-style: none;
		    height: 11rem;
		}
		.more {
		    text-align: center;
		    height: 2rem;
		    line-height: 2rem;
		    position: relative;
		    top: 3rem;
		}
		.more a{
			color: #000;
		}
		.list li:nth-child(odd){
			background-color: #eeeeee;
		}
		.list li{
			font-size: 1.2rem;
			height: 2rem;
			line-height: 2rem;
		}
		#mask {
		    width: 100%;
		    height: 100%;
		    background: #2a2a2a;
		    opacity: 0.7;
		    filter: alpha(opacity=70);
		    position: fixed;
		    top: 0;
		    left: 0;
		    display: none;
		}
		.zhongjiang {
		    display: none;
		    position: fixed;
		    top: 10%;
		    left: 50%;
		    margin-left: -9rem;
		    width: 18rem;
		    height: 15rem;
		    background: url(http://m.fullrong.com/wap/theme/wapdial/zhonjiang.png) no-repeat 0px 0px;
		    background-size: 100%;
		    /* background-size: 100%; */
		}
		.big-font {
		    font-size: 1.1rem;
		    text-align: center;
		    position: relative;
		    top: 7rem;
		}
		.small-font {
		    font-size: 0.6rem;
		    text-align: center;
		    position: relative;
		    top: 8rem;
		}
		.gameover{
			display: none;
			position: fixed;
			top: 10%;
			left: 50%;
			margin-left: -9.5rem;
			width: 19rem;
			height: 15rem;
			background: url(http://m.fullrong.com/wap/theme/wapdial/gameover.png) no-repeat 0px 0px;
			background-size: 100%;
		}
		.zero{
			display: none;
			position: fixed;
			top: 10%;
			left: 50%;
			margin-left: -9.5rem;
			width: 19rem;
			height: 15rem;
			background: url(http://m.fullrong.com/wap/theme/wapdial/zero.png) no-repeat 0px 0px;
			background-size: 100%;
		}
		.mylist {
		    width: 24rem;
		    height: 12rem;
		    position: fixed;
		    top: 10%;
		    left: 50%;
		    margin-left: -12rem;
		    background-color: #fff;
		    border-radius: 10px;
		    display: none;
		}
		.mylist .close {
		    background: url(http://m.fullrong.com/wap/theme/wapdial/close.png) no-repeat;
		    background-size: 100%;
		    position: absolute;
		    top: -2rem;
		    right: 0;
		}
		.list-title {
		    text-align: center;
		    font-size: 1.5rem;
		    background-color: #fee40c;
		    height: 3rem;
		    line-height: 3rem;
		    border-radius: 10px 10px 0px 0px;
		}
		.odd{
			background-color: #eee;
		}
		.mylist ul {
		    overflow-y: scroll;
		    height: 7.7rem;
		}
		.mylist li {
		    height: 2rem;
		    line-height: 2rem;
		    padding: 0rem 2rem;
		    font-size: 1rem;
		}
		.mylist .nodata{
			height: 280px;
			line-height: 280px;
			text-align: center;
			font-size: 24px;
		}
		.mylist i {
		    display: inline-block;
		    width: 13px;
		    height: 13px;
		    padding: 0 10px;
		    background: url(http://m.fullrong.com/wap/theme/wapdial/dot.png) no-repeat 0px 0px;
		}
		.close {
		    width: 2rem;
		    height: 2rem;
		    display: block;
		}
		.zhongjiang .close {
		    position: relative;
		    top: 3.8rem;
		    left: 15.5rem;
		}
		.gameover .close, .zero .close {
		    position: relative;
		    top: 3.8rem;
		    left: 16.4rem;
		}.color{
			color: #ef1616;
		}
		.notice {
		    font-size: 1.2rem;
		    padding: 0 0.5rem;
		    line-height: 1.7rem;
		}
		.list li .span1 {
		    width: 40%;
		    text-align: center;
		    display: inline-block;
		}
		.list li .span2{
			color: #f5165a;
		}
	</style>
</head>
<body>
	<img src="http://m.fullrong.com/wap/theme/wapdial/1.jpg">
	<!-- <button>刷新页面</button> -->
	<div class="container">
		<p class="title">抽奖次数为<span class="playnum">1</span><img src="http://m.fullrong.com/wap/theme/wapdial/mylist.png"></p>
		<p class="notice"><span class="color">温馨提示：</span>抽奖功能需要APP最新版本支持，IOS老用户请先至AppStore更新(安卓用户不需要），以免
影响中奖^-^</p>
		<div class="zhuan">
			<img class="img1" src="http://m.fullrong.com/wap/theme/wapdial/bg1.png">
			<img class="img2" src="http://m.fullrong.com/wap/theme/wapdial/pan1.png">
			<img class="img3" src="http://m.fullrong.com/wap/theme/wapdial/playbtn.png">
		</div>
		<a href="javascript:;" class="cbtn"><img src="http://m.fullrong.com/wap/theme/wapdial/invest.png" alt=""></a>
		<div class="list">
			<ul>
				<!-- <li><span>135****2356</span><span>获得 200元京东e卡1张</span></li>
				<li><span>135****2356</span><span>获得 200元京东e卡1张</span></li>
				<li><span>135****2356</span><span>获得 200元京东e卡1张</span></li>
				<li><span>135****2356</span><span>获得 200元京东e卡1张</span></li>
				<li><span>135****2356</span><span>获得 200元京东e卡1张</span></li> -->
			</ul>
				<p class="more"><a href="javascript:;">更多获奖记录》</a></p>
		</div>
	</div>
	<img src="http://m.fullrong.com/wap/theme/wapdial/2.jpg">
	<div id="mask"></div>
	<div class="zhongjiang">
		<a href="javascript:;" class="close"></a>
		<p class="big-font">恭喜，您抽中了XX元代金券</p>
		<p class="small-font">请至“我的资产-我的奖励“查看，快去领福利吧</p>
	</div>
	<div class="gameover">
		<a href="javascript:;" class="close"></a>
	</div>
	<div class="zero">
		<a href="javascript:;" class="close"></a>
	</div>
	<div class="mylist">
		<a href="javascript:;" class="close"></a>
		<p class="list-title">我的中奖记录</p>
		<ul>
			<!-- <p class='nodata'>暂无记录</p> -->
			<!-- <li><i></i>200元京东e卡</li>
			<li><i></i>200元京东e卡</li>
			<li><i></i>200元京东e卡</li>
			<li><i></i>200元京东e卡</li>
			<li><i></i>200元京东e卡</li> -->
		</ul>
	</div>
	<script>
	   (function (doc, win) {
	       var docEl = doc.documentElement,
	       	resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
	       	recalc = function () {
	          var clientWidth = docEl.clientWidth;
		  if (!clientWidth) return;
		  docEl.style.fontSize = 26 * (clientWidth / 750) + 'px';
	       	};
		
		if (!doc.addEventListener) return;
		win.addEventListener(resizeEvt, recalc, false);
	        doc.addEventListener('DOMContentLoaded', recalc, false);
	   })(document, window);
	</script>
	<script src="http://m.fullrong.com/wap/theme/wapdial/jquery-1.8.3.min.js"></script>
	<script src="http://m.fullrong.com/wap/theme/wapdial/jquery.rotate.min.js"></script>
	<script type="text/javascript" src="http://m.fullrong.com/wap/theme/wapdial/index.js"></script>
</body>
</html>