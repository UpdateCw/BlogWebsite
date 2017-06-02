<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ include file="/pages/common/taglibs.jsp"%>
<!--End banner img-->
<div class="container-fluid main-container" id="main-container">
    <div class="row top-title">
        <div class="col-md-12">
            <h1 class="page-title right">
                <a href="/article/selectArticle">博客</a> >> <a href="javascript:">${article.title}</a>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title">
                <a href="/article/selectArticle" rel="bookmark">
                    ${article.title}
                </a>
            </h2>
            <div class="meta-box">
            </div>
            <div class="post-content">
                <p>
                 ——知其然知其所以然
                </p>
                <hr/>
                <section>
                    <div class="main-container">
                        <div class="row">
                            <p>
                         		${article.context}
                            </p>
                            <br><br><br>
                            <p>
                            	 ——决定一个人有多优秀的，并不是看他有多努力，而是看这个人的思维模式。
                            </p>
                            <br><br>
                            <div id="player3" class="aplayer"></div>
                        </div>
                    </div>
                </section>
                <div class="meta-box">
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/APlayer/dist/APlayer.min.js"></script>
<script src="/assets/APlayer/demo/demo.js"></script>
<link rel="stylesheet" href="/assets/APlayer/dist/APlayer.min.css">
<%@ include file="/pages/common/script.jsp"%>