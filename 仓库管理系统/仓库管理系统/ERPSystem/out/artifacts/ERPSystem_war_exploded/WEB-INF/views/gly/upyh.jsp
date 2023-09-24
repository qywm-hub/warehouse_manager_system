﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
	(function($) {
		$(window).load(
				function() {

					$("a[rel='load-content']").click(
							function(e) {
								e.preventDefault();
								var url = $(this).attr("href");
								$.get(url, function(data) {
									$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
									//scroll-to appended content 
									$(".content").mCustomScrollbar("scrollTo",
											"h2:last");
								});
							});

					$(".content").delegate(
							"a[href='top']",
							"click",
							function(e) {
								e.preventDefault();
								$(".content").mCustomScrollbar("scrollTo",
										$(this).attr("href"));
							});

				});
	})(jQuery);
</script>
</head>
<body>
	<!--header-->
	<header>
		<h1>
			<%-- <img
				src="${pageContext.request.contextPath}/assets/images/admin_logo.png" /> --%>
		</h1>
		<ul class="rt_nav">
			<li><a href="tzzup" class="set_icon">账号设置</a></li>
			
			<li><a href="tzlogin" class="quit_icon">安全退出</a></li>
		</ul>
	</header>
	<!--aside nav-->
	<!--aside nav-->
		<aside class="lt_aside_nav content mCustomScrollbar">

		<ul>
			<li>
				<dl>
					<dt>用户信息管理</dt>
					<!--当前链接则添加-->
					<dd>
						<a href="sy" >用户查询</a>
					</dd>
					<dd>
						<a href="tjyh" class="active">用户添加</a>
					</dd>
				</dl>
			</li>
						<li>
				<dl>
					<dt>货物信息管理</dt>
					<dd>
						<a href="tzhw">货物查询</a>
					</dd>
					<dd>
						<a href="tzkc">库存查询</a>
					</dd>					
				</dl>
			</li>
			<li>
				<dl>
					<dt>入库单信息管理</dt>					
					<dd>
						<a href="tzrk">入库单新建</a>
					</dd>					
					<dd>
						<a href="tzrksh">入库单审核</a>
					</dd>
				</dl>
			</li>
			<li>
				<dl>
					<dt>出库信息管理</dt>									
					<dd>
						<a href="tzck">出库单新建</a>
					</dd>
					<dd>
						<a href="tzcksh">出库单审核</a>
					</dd>

				</dl>
			</li>
			<!-- <li>
				<dl>
					<dt>报表管理</dt>
					<dd>
						<a href="tzbb">生成报表</a>
					</dd>
				</dl>
			</li>	 -->
		</ul>
	</aside>

	
<section class="rt_wrap content mCustomScrollbar">
<form action="insert" method="post">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">请输入用户信息</h2>
      </div>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">用户账号：</span>
        <input type="text" name="name" class="textbox textbox_225"  placeholder="用户账号..."/>
       
       </li>
       <li>
        <span class="item_name" style="width:120px;">登陆密码：</span>
        <input type="password" name="password" class="textbox textbox_225"  placeholder="登录密码..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;" name="sex">性别：</span>
        <select class="select" name="sex">
         <option value="0" name="sex">男</option>
         <option value="1" name="sex">女</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;">年龄：</span>
        <input type="text"  name="year" class="textbox textbox_225" placeholder="年龄..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;">联系电话：</span>
        <input type="tel" name="phone" class="textbox textbox_225"  placeholder="联系电话..."/>
       </li>
       <li>
        <span class="item_name" style="width:120px;"  name="t1">角色分配：</span>
        <select class="select"  name="t1">
          <option name="t1" value="0">管理员</option>
         <option name="t1" value="1" >经理</option>
         <option name="t1" value="2" >销售</option>
         <option name="t1" value="3" >采购</option>
        </select>
       </li>
        <li>
        <span class="item_name" style="width:120px;" name="t2">验证：</span>
        <select class="select" name="t2">
          <option value="0" name="t2">通过</option>
         <option value="1" name="t2">不通过</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn" value="更新/保存"/>
       </li>
      </ul>
 </div>
 </form>
</section>

</body>
</html>
