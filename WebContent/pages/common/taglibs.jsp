<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="cn" dir="ltr" class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="maximum-scale=1.0,width=device-width,initial-scale=1.0,user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>异步 </title>
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/msofficexp.png" media="screen" />
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/style.css" rel="stylesheet" />
    <link href="../assets/css/nprogress.css" rel="stylesheet" />
    <link rel="stylesheet" href="../assets/css/nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../assets/css/default.css" type="text/css" media="screen" />
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/jquery.nivo.slider.pack.js"></script>
    <script src="../assets/js/nprogress.js"></script>
</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">
              Toggle navigation
            </span>
            <span class="icon-bar">
            </span>
            <span class="icon-bar">
            </span>
            <span class="icon-bar">
            </span>
            </button>
            <a class="navbar-brand" href="/article/index">
                <img src="../assets/img/msofficexp.png" class="logo"/>
            </a>
            <a class="navbar-brand" href="/article/index">
                <img src="../assets/img/logo.png" class="logo"/>
            </a>
        </div>
        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav header-menu">
                <li>
                    <a href="/article/index">
                        首页
                    </a>
                </li>
                <li>
                    <a href="/pages/about.jsp">
                        关于
                    </a>
                </li>
                <li>
                    <a href="/article/selectArticle">
                        博客
                    </a>
                </li>
                <li>
                    <a href="/works/selectWorks">
                        作品
                    </a>
                </li>
                <li>
                    <a href="/pages/contact.jsp">
                        联系
                    </a>
                </li>
                <li>
                    <a href="/pages/help.jsp">
                        帮助
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="leftbar">
    <!-- 左菜单 -->
    <div class="left_menu">
        <ul class="menu_link">
           <li>
                <img src="../assets/img/cg.jpg">
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable">
                    <img src="../assets/img/java.png">
              <span>
                Java
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="../assets/img/sql.png">
              <span>
                sql
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
            <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="../assets/img/data.png">
              <span>
                data
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
             <li>
                <a href="" class="simptip-position-right simptip-smooth simptip-movable"
                   data-tooltip="自定义链接">
                    <img src="../assets/img/frame.png">
              <span>
                frame
              </span>
                    <div class="clearfix">
                    </div>
                </a>
            </li>
        </ul>
    </div>
</div>
<div class="container-filed" id="banner_container">
    <div class="row">
        <div class="col-md-12">
            <div class="slider-wrapper theme-default">
                <div id="slider" class="nivoSlider">
                    <img src="../assets/img/owl.jpg" data-thumb="../assets/img/owl.jpg" alt="" />
                    <img src="../assets/img/owl2.jpg" data-thumb="../assets/img/owl.jpg" alt="" />
                    <img src="../assets/img/owl.jpg" data-thumb="../assets/img/owl.jpg" alt="" />
                    <img src="../assets/img/owl2.jpg" data-thumb="../assets/img/owl2.jpg" alt="" />
                </div>
            </div>
        </div>
    </div>
</div>