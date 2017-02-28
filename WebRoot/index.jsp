<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.j2ee.dao.*"%>
<%@ page import="com.j2ee.crowdfunding_info.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>J2EE众筹首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="众筹,融资,众筹平台,创业融资">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" type="image/png"
	href="http://zcs4.ncfstatic.com/v3/static/images/icon/title.png?v=">
<link rel="stylesheet" type="text/css"
	href="./css/075164029c450604c632bc43bf813389.css">
<script type="text/javascript" async="" src="./js/dc.js.下载"></script>
<script type="text/javascript" async="" src="./js/ag.js.下载"></script>
<script type="text/javascript"
	src="./js/4f35d0fedb9aace74a00250860887ea5.js.下载"></script>
<meta property="qc:admins" content="255367746162076730756375">
<script type="text/javascript" src="./js/sso-lib.js.下载"></script>

<script async="" src="./js/ncfpb.1.1.min.js.下载"></script>
<script async="" src="./js/zcpb.1.0.min.js.下载"></script>
</head>

<%
     DBConnection dbc = new DBConnection();
     Crowdfunding_Info_DAO crowdfunding_Info_DAO = new Crowdfunding_Info_DAO(dbc.getConnection());
     ArrayList<Crowdfunding_Info> crowdfunding_Info_List = crowdfunding_Info_DAO.findAll();
%>

<body>
	<!-- 网站header begin -->
	<div class="siteMTopBox">
		<div class="mainInnerBox clearfix relative">
			<a href="http://www.zhongchou.com/" class="siteMIndexA"> <img
				src="./image/1462795454.png">
			</a>
			<div class="siteHNavBox clearfix">
				<div class="siteHNavItem">
					<a href="http://www.zhongchou.com/" class="siteHNavItemA">首&nbsp;&nbsp;页</a>
				</div>
				<div class="siteHNavItem">
					<a href="http://www.zhongchou.com/browse/di-si_c/"
						class="siteHNavItemA">奖励众筹</a>
					<!--					<div class="siteHNavInner">-->
					<!--						<!--<a href="-->
					<!--" class="btn_ALink">科技</a>-->
					<!--						<a href="-->
					<!--" class="btn_ALink">出版</a>-->
					<!--						<a href="-->
					<!--" class="btn_ALink">娱乐</a>-->
					<!--						<a href="-->
					<!--" class="btn_ALink">艺术</a>-->
					<!--						<a href="-->
					<!--" class="btn_ALink">农业</a>-->
					<!--						-->
					<!--						<a href="-->
					<!--" class="btn_ALink">商铺</a>-->
					<!--						<a href="-->
					<!--" class="btn_ALink">房产</a>-->
					<!--						<a href="-->
					<!--" class="btn_ALink">地方站</a>-->
					<!--						-->
					<!--						-->
					<!--					</div>-->
				</div>
				<div class="siteHNavItem">
					<a href="http://www.zhongchou.com/gongyi" class="siteHNavItemA">公益众筹</a>
				</div>
				<div class="siteHNavItem">
					<a rel="nofollow" href="http://www.yuanshihui.com/"
						class="siteHNavItemA hidden" target="_blank">股权投资</a>
				</div>
				<div class="siteHNavItem">
					<a rel="nofollow" href="http://www.zhongchou.com/download"
						class="siteHNavItemA" target="_blank">APP</a>
				</div>
				<!--<div class="siteHNavItem">
					<a rel="nofollow" href="/special-faqi" class="siteHNavItemA" target="_blank">发起手册</a>
				</div>-->
			</div>
			<!--<a href="" class="siteM_fqBtn btn_ALink">
				<i></i></a>-->
			<!--			<a href="http://zcweb.zhongchou.com/project/launch/dist" class="siteM_fqBtn btn_ALink">-->
			<!--				<i></i>-->
			<!--</a>-->

			<a href="javascript:;"
				data-href="http://f.zhongchou.com/project/launch/dist"
				class="siteM_fqBtn btn_ALink js-checkLogin"><i></i>发起众筹</a>
			<!-- 未登录状态 begin -->
			<div class="siteHLoginBox clearfix">
				<a href="javascript:;" class="siteH_login Js-showLogin">登录</a> <span
					class="line"></span> <a href="javascript:;"
					class="siteH_register Js-showRegister">注册</a>
			</div>
			<div class="other-login">
				<a class="qq" href="http://www.zhongchou.com/qq-login"></a> <a
					class="wechat" href="http://www.zhongchou.com/weixin-login"></a> <a
					class="sina" href="http://www.zhongchou.com/sina-login"></a>
			</div>
			<!-- 未登录状态 end -->
			<div class="siteMSearch siteIlB_box sitePHBox" id="search-box">
				<div class="search-input">
					<input type="text"
						class="siteMSearchInput siteIlB_item sitePHInput" id="searchInput"
						autocomplete="off" placeholder="在这里搜索">
				</div>
				<a href="javascript:;" class="siteMSearchA siteIlB_item fr"
					id="searchBtn"></a> <span class="sitePHTip"
					style="top: 4px;left: 5px;">在这里搜索</span>

				<div class="input-hinter" style="display: none;"></div>
			</div>

			<a href="http://www.zhongchou.com/crowdfund-index"
				class="wdfq btn_ALink my-zc fr" target="_blank"><i></i>管理众筹</a>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(
				function() {
					var hint = new InputHinter({
						container : 'search-box',
						id : "searchInput"
					});
					$('#searchBtn').click(
							function() {
								var $input = $('#searchInput');
								window.location.href = "/search/kw-"
										+ hint.encodeKw($.trim($input.val())
												|| $input.attr('placeholder'));
							});
					$('#searchInput').focus(function() {
						setTimeout(function() {
							$('#search-box').addClass("siteMSearch-focus")
						}, 1)
					})
					$('#searchInput').blur(function() {
						setTimeout(function() {
							$('#search-box').removeClass("siteMSearch-focus")
						}, 1)
					});
					if (!$(".other-login").html()) {
						$('.siteMSearch').css('right', '180px');
					}
				});
		var showCode = '';
	</script>

	<input type="hidden" id="csrf_token" value="63078195">
	<input type="hidden" id="session_name" value="PHPSESSID">
	<!-- 网站header end -->
	<script type="text/javascript"
		src="./js/352249857f6ed0f0bb25be546b087dec.js.下载"></script>
	<link rel="stylesheet" type="text/css"
		href="./css/8c06a6ae51572b94394358b86d29a185.css">

	<!--banner begin -->

	<div class="indexBanner" id="indexBanner">
		<div class="indexBannerView">
			<ul id="slider" class="indexB_ul" style="width: 800%; left: -400%;">
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-634431"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/11/1487217539.jpg);"
					target="_blank"></a></li>
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-628203"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/14/1487226245.jpg);"
					target="_blank"></a></li>
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-647379"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/11/1487217523.jpg);"
					target="_blank"></a></li>
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-641199"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/11/1487217531.jpg);"
					target="_blank"></a></li>
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-634431"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/11/1487217539.jpg);"
					target="_blank"></a></li>
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-628203"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/14/1487226245.jpg);"
					target="_blank"></a></li>
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-647379"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/11/1487217523.jpg);"
					target="_blank"></a></li>
				<li style="width: 12.5%;"><a
					href="http://www.zhongchou.com/deal-show/id-641199"
					style="background-image: url(http://zcr9.ncfstatic.com/attachment/201702/16/11/1487217531.jpg);"
					target="_blank"></a></li>
			</ul>
			<div class="indexBControls" id="indexBControls">
				<div class="indexBPageitem"></div>
				<div class="indexBPageitem"></div>
				<div class="indexBPageitem cur"></div>
				<div class="indexBPageitem"></div>
			</div>
			<div class="indexBPage" id="indexBPage">
				<a href="javascript:;" class="pre" id="bannerPre"></a> <a
					href="javascript:;" class="next" id="bannerNext"></a>
			</div>
		</div>
		<div class="indexBMask">
			<span class="leftItem"></span> <span class="rightItem"></span>
		</div>
	</div>
	<!--banner end-->
	<!-- 数据指标 begin -->
	<!-- 数据指标 end -->

	<!-- 奖励众筹 begin -->
	<div class="indexZCWrap">
		<div class="mainInnerBox">
			<h3 class="indexZCH3">热门推荐</h3>
			<!--	<h3 class="indexZCH3"><a href="-->
			<!--">热门推荐</a></h3>-->
			<ul class="indexZCLabel_ul siteIlB_box">
				<li class="siteIlB_item"><a
					href="http://www.zhongchou.com/browse/di-sb" class="site_ALink"
					target="_blank">最新上线</a></li>
				<li class="geban siteIlB_item">/</li>
				<li class="siteIlB_item"><a
					href="http://www.zhongchou.com/browse/id-23-di-si_c"
					class="site_ALink" target="_blank">公益</a></li>
				<li class="geban siteIlB_item">/</li>
				<li class="siteIlB_item"><a
					href="http://www.zhongchou.com/browse/id-28-di-si_c"
					class="site_ALink" target="_blank">农业</a></li>
				<li class="geban siteIlB_item">/</li>
				<li class="siteIlB_item"><a
					href="http://www.zhongchou.com/browse/id-16-di-si_c"
					class="site_ALink" target="_blank">出版</a></li>
				<li class="geban siteIlB_item">/</li>
				<li class="siteIlB_item"><a
					href="http://www.zhongchou.com/browse/id-10001-di-si_c"
					class="site_ALink" target="_blank">娱乐</a></li>
				<li class="geban siteIlB_item">/</li>
				<li class="siteIlB_item"><a
					href="http://www.zhongchou.com/browse/id-22-di-si_c"
					class="site_ALink" target="_blank">艺术</a></li>
				<li class="moreA siteIlB_item"><a
					href="http://www.zhongchou.com/browse/di-si_c" target="_blank">更多&gt;</a>
				</li>
			</ul>
			<!-- 卡片列表 begin -->
			<div class="indCardListWrap clearfix">
				<div class="indCardItem">
					<a href="http://www.zhongchou.com/deal-show/id-638250"
						class="siteCardItemImgA ind" target="_blank"> 
						<!--<img src="./众筹网-中国专业的一站式综合众筹融资服务平台_files/58a5203c18a5e_640x480_thumb_320x240.jpg"
						alt="《知识工程2.0》是解决中国企业知识管理困局的新方案！">  -->
						<img src="<%=crowdfunding_Info_List.get(0).getPicture1() %>"
						alt="<%=crowdfunding_Info_List.get(0).getTitle() %>">
						 <span
						class="siteCardStatus"></span>
					</a>
					<div class="indCardICBox siteCardICBox">
						<div class="indCardICText">
							<a href="http://www.zhongchou.com/deal-show/id-638250"
								class="siteCardICH3" target="_blank"><%=crowdfunding_Info_List.get(0).getTitle() %></a>
							<p class="siteCardIC_p ind"><%=crowdfunding_Info_List.get(0).getDescription()%></p>
						</div>
						<div class="siteCardFBox">

							<div class="siteCardRatio">
								<div class="siteCardRatioInner" style="width: 36%;"></div>
							</div>
							<div class="siteCardFData">
								<div class="ftDiv">
									<p class="ftP">￥<%=crowdfunding_Info_List.get(0).getTarget()%></p>
									<p class="scP"><%=crowdfunding_Info_List.get(0).getIsCrowdfunding()%></p>
								</div>
								<div class="scDiv">
									<p class="ftP">88</p>
									<p class="scP">支持数</p>
								</div>
								<div class="thDiv">
									<p class="ftP">36%</p>
									<p class="scP">筹款进度</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 卡片列表 end -->
			<a href="http://www.zhongchou.com/browse/di"
				class="indCardListMoreA btn_ALink" target="_blank">浏览更多项目</a>
		</div>
	</div>
	<!-- 奖励众筹 end -->

	<!-- 最新上线 begin -->
	<!-- 最新上线 end -->



	<!-- 成功开始 start -->
	<div class="index_sucBox">
		<div class="mainInnerBox">
			<div class="index_sucHeader clearfix">
				<h3>
					成功案例<span>他们已经成功了，你还在等什么... </span>
				</h3>
				<ul class="index_sucH_ul">
					<li><a href="http://www.zhongchou.com/browse/ds"
						class="site_ALink" target="_blank">奖励</a></li>
					<li class="geban">/</li>
					<li><a href="http://www.zhongchou.com/browse/id-23-ds"
						class="site_ALink" target="_blank">公益</a></li>
				</ul>
			</div>
			<div class="index_sucItem">
				<div class="indSucL clearfix">
					<div class="indSucLImgBox">
						<a href="javascript:;"><img src="./image/default_90.png"></a>
					</div>
					<div class="indSucText">
						<h3 class="indSucText_h3">
							<a href="javascript:;" class="geren"
								style="cursor: default;text-decoration: initial;"
								target="_blank">安宁Aiden</a> <a
								href="http://www.zhongchou.com/deal-show/id-445567"
								class="xiangmu" target="_blank">奖励众筹 "一起来开一家设计师主题咖啡馆@安的咖啡"</a>
						</h3>
						<p class="indSucText_p">我叫安宁，真名。一个做了10年书皮子的设计师，大象设计的联合创始人，2014年转型做了设计师品牌“安的田园”，简单来说就是做吃的。我想做一个设计师主题咖啡馆，不浮夸，不刻意追求形式感，拙朴，自然，舒适，即可。每个月组织一次设计师的相关活动，与别的咖啡馆不同的是，我们的食材大部分出自我们自己的农场。</p>
					</div>
				</div>
				<div class="indSucR">
					<div>
						<p class="ftP">45万</p>
						<p class="scP">已筹资</p>
					</div>
					<div class="geban"></div>
					<div>
						<p class="ftP">122人</p>
						<p class="scP">支持人数</p>
					</div>
				</div>
			</div>
			<div class="index_sucItem">
				<div class="indSucL clearfix">
					<div class="indSucLImgBox">
						<a href="javascript:;"><img
							src="./image/13virtual_avatar_small.jpg"></a>
					</div>
					<div class="indSucText">
						<h3 class="indSucText_h3">
							<a href="javascript:;" class="geren"
								style="cursor: default;text-decoration: initial;"
								target="_blank">天真蓝教育传媒</a> <a
								href="http://www.zhongchou.com/deal-show/id-475630"
								class="xiangmu" target="_blank">奖励众筹
								"“六个口袋”亲子阅读计划——1000个家庭招募中"</a>
						</h3>
						<p class="indSucText_p">一群视阅读如信仰的年轻父母，TA们有1岁到10岁的孩子，为了自由呼吸的教育，发起成立了北京天真蓝教育文化传媒有限公司。计划征集1000个家庭，用6个月时间，以“游戏+阅读”的方式，让孩子在父母的陪伴下，在专家的指导下，爱上阅读，学会阅读。会阅读的孩子有更广阔的未来，有爱好的人精神世界更宽广。</p>
					</div>
				</div>
				<div class="indSucR">
					<div>
						<p class="ftP">47万</p>
						<p class="scP">已筹资</p>
					</div>
					<div class="geban"></div>
					<div>
						<p class="ftP">662人</p>
						<p class="scP">支持人数</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 成功案例 end -->
	<!-- 底部帮助 begin -->
	<div class="siteFooterBox">
		<div class="siteTFooter">
			<div class="mainInnerBox clearfix">
				<div class="siteTFLeft">
					<a href="http://www.zhongchou.com/special-xinshou"
						class="siteTFLeftA btn_ALink" target="_blank"> <i class="xsbz"></i>
						<p>众筹网新手帮助</p>
					</a> <a href="http://www.zhongchou.com/help-specification"
						class="siteTFLeftA btn_ALink" target="_blank"> <i class="xmgf"></i>
						<p>众筹网发起项目规范</p>
					</a> <a href="http://www.zhongchou.com/special-meiti"
						class="siteTFLeftA btn_ALink" target="_blank"> <i class="ttbd"></i>
						<p>众筹网获新闻媒体头条报导</p>
					</a>
				</div>
				<div class="siteTFRight clearfix">
					<div class="siteTFTelBox">
						<i></i>
						<p>010-8992 9043</p>
					</div>
					<div class="siteTFWxBox">
						<img src="./image/weixinCodeFoot.jpg">
						<p>微信公众号</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部帮助 end -->
	<!-- 网站Footer begin -->
	<div class="SiteGoTopBox" style="display: none;">
		<a href="javascript:;" class="btn_ALink" id="SiteGoTopBtn"></a>
	</div>
	<div class="siteFooterBox">
		<div class="mainInnerBox">
			<div class="siteMFooter">
				<div class="siteMFooterABox">
					<a href="http://www.zhongchou.com/help-index" rel="nofollow"
						class="site_hoverCss3A" target="_blank">关于我们</a><span>|</span> <a
						href="http://www.zhongchou.com/help-contact" rel="nofollow"
						class="site_hoverCss3A" target="_blank">联系我们</a><span>|</span> <a
						href="http://www.zhongchou.com/help-term" rel="nofollow"
						class="site_hoverCss3A" target="_blank">服务协议</a><span>|</span> <a
						href="http://www.zhongchou.com/help-specification" rel="nofollow"
						class="site_hoverCss3A" target="_blank">项目发起规范</a><span>|</span> <a
						href="http://www.zhongchou.com/help-center"
						class="site_hoverCss3A" target="_blank">帮助中心</a>
					<!--					<a href="-->
					<!--" class="site_hoverCss3A" target="_blank">合作专区</a>-->
				</div>
				<!--<div class="siteMFooter_gzwmBox siteIlB_box">
					<span class="siteIlB_item">关注我们:</span>
					<a href="http://e.weibo.com/zhongchouwang2013" rel="nofollow" class="wb siteIlB_item" target="_blank"></a>
					<a href="http://user.qzone.qq.com/2357291729" rel="nofollow" class="qq siteIlB_item" target="_blank"></a>
					<a href="http://tieba.baidu.com/f?ie=utf-8&kw=%E4%BC%97%E7%AD%B9%E7%BD%91" rel="nofollow" class="tb siteIlB_item" target="_blank"></a>
					<a href="http://www.douban.com/people/zhongchou_cn/" rel="nofollow" class="db siteIlB_item" target="_blank"></a>
				</div>-->
			</div>
		</div>
		<div class="siteBFooter">
			<div class="siteBF_yqlj siteIlB_box">
				<a href="http://iof.hexun.com/zhongchou/index.html"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">和讯网</a>
				<a href="http://www.leiphone.com/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">雷锋网</a>
				<a href="http://www.hao123.com/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">hao123</a>
				<a href="http://hao.360.cn/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">360安全网址</a> <a
					href="http://jrj.com.cn/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">金融界</a> <a
					href="http://www.caixin.com/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">财新网</a> <a
					href="http://www.tmtpost.com/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">钛媒体</a> <a
					href="http://www.imgii.com/?zhongchou"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">IMGII</a>
				<a href="http://www.m1905.com/film/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">电影网</a>
				<a href="http://www.artron.net/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">雅昌艺术网</a>
				<a href="http://www.vmovier.com/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">V电影</a>
				<a href="http://www.eguan.cn/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">易观网</a> <a
					href="http://www.pedaily.cn/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">投资界 </a> <a
					href="http://home.ebrun.com/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">亿邦动力社区</a> <a
					href="http://www.9888.cn/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">金融工场</a> <a
					href="http://www.trchina.org/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">投融中国联盟</a> <a
					href="http://www.youcheng.org/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">友成基金会</a>
				<a href="http://life.renren.com/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">人人生活</a>
				<a href="http://www.meng800.com/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">众筹导航</a>
				<a href="http://www.qidic.com/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">奇笛网</a> <a
					href="http://www.rong360.com/" class="site_hoverCss3A siteIlB_item"
					rel="nofollow" target="_blank">融360</a> <a
					href="http://www.diyifangdai.com/"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">第一房贷</a>
				<a href="http://finance.ifeng.com/itfinance/index.shtml"
					class="site_hoverCss3A siteIlB_item" rel="nofollow" target="_blank">凤凰互联网金融</a>
				<a href="http://www.huoqiu.cn/" class="site_hoverCss3A siteIlB_item"
					target="_blank">火球网</a> <a href="http://www.renchoubao.com/"
					class="site_hoverCss3A siteIlB_item" target="_blank">认筹宝</a> <a
					href="http://www.kuaidi100.com/"
					class="site_hoverCss3A siteIlB_item" target="_blank">快递查询</a> <a
					href="http://www.csai.cn/" class="site_hoverCss3A siteIlB_item"
					target="_blank">希财网</a> <a href="http://www.ifang.com/"
					class="site_hoverCss3A siteIlB_item" target="_blank">一房网</a> <a
					href="http://www.kuaiyong.com/"
					class="site_hoverCss3A siteIlB_item" target="_blank">快用苹果助手</a>
			</div>
			<p class="siteBFooter_p">©2015 北京网信众筹网络科技有限公司 zhongchou.com 版权所有
				京ICP证150145号 | 出版物经营许可证编号新出发（京）批字第直140141号 | 营业性演出许可证 编号：京市演2102 |
				食品流通许可证 编号：SP1101051410311599 | 京公网安备11010502026064</p>
		</div>
	</div>
	<!-- 网站Footer end -->
	<script type="text/javascript"
		src="./js/03c23c764fd366efaa4b22195502b79e.js.下载"></script>


	<img src="./image/pv" style="display: none; width: 0px; height: 0px;">
	<img src="./众筹网-中国专业的一站式综合众筹融资服务平台_files/pixel"
		style="display: none; width: 0px; height: 0px;">
	<img src="./众筹网-中国专业的一站式综合众筹融资服务平台_files/t.gif"
		style="display: none; width: 0px; height: 0px;">
	<img src="./众筹网-中国专业的一站式综合众筹融资服务平台_files/pixel(1)"
		style="display: none; width: 0px; height: 0px;">
	<img src="./众筹网-中国专业的一站式综合众筹融资服务平台_files/pixel(2)"
		style="display: none; width: 0px; height: 0px;">
	<img src="./众筹网-中国专业的一站式综合众筹融资服务平台_files/cm.fcg"
		style="display: none; width: 0px; height: 0px;">
	<img
		src="http://function%20%28index%29%7B%20%20%20%20%20%20%20%20return%20index%20%3E%20this.length%20/?%20this%20:%20this.splice(index,1)%20&amp;&amp;%20this;%20%20%20%20%20%20}"
		style="display: none; width: 0px; height: 0px;">
</body>
</html>
