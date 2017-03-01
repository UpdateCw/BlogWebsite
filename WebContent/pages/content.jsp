<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ include file="/pages/common/taglibs.jsp"%>
<!--End banner img-->
<div class="container-fluid main-container" id="main-container">
    <div class="row top-title">
        <div class="col-md-12">
            <h1 class="page-title right">
                <a href="blog.html">博客</a> >> <a href="content.html">${article.title}</a>
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
                            <div id="player3" class="aplayer"></div>
                        </div>
                    </div>
                </section>
                <div class="meta-box">
                </div>
            </div>
        </div>
    </div>
     <%@ include file="/pages/common/footer.jsp"%>
</div>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/APlayer/dist/APlayer.min.js"></script>
<script src="/assets/APlayer/demo/demo.js"></script>
<link rel="stylesheet" href="/assets/APlayer/dist/APlayer.min.css">
<%@ include file="/pages/common/script.jsp"%>