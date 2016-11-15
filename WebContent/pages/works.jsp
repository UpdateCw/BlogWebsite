<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ include file="/pages/common/taglibs.jsp"%>
<!--End banner img-->
<div class="container-fluid main-container" id="main-container">
    <div class="row top-title">
        <div class="col-md-12">
            <h1 class="page-title">作品</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 post-container">
            <h2 class="post-title"><a href="book.htm" rel="bookmark">阅读列表</a></h2>
            <div class="meta-box"></div>
            <div class="post-content">
                <p>存放一些作品,或者是相册。</p>
                <hr />
                <style>
                    .book-opt-sort{margin-left:10px;}
                </style>
                <div class="btn-group book-opt-filter"><a class="btn btn-primary btn-sm" data-filter="*">显示所有</a>
                    <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown"><span class="caret"></span><span class="sr-only">筛选内容</span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a data-filter=".book-cat-recommend">推荐</a></li>
                        <li><a data-filter=".book-cat-oreilly">“前端”</a></li>
                        <li><a data-filter=".book-cat-oreilly">“后端”</a></li>
                    </ul>
                </div>
                <div class="btn-group book-opt-sort"><a class="btn btn-primary btn-sm" data-sort-by="original-order">默认排序</a>
                    <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown"><span class="caret"></span><span class="sr-only">切换排序</span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a data-sort-by="name">类型</a></li>
                        <li><a data-sort-by="author">时间</a></li>
                        <li class="divider"></li>
                        <li><a data-sort-by="pubdate">开源</a></li>
                        <li><a data-sort-by="publisher">购买</a></li>
                    </ul>
                </div>
                <div class="book-container clearfix">
                    <div class="meta-box"></div>
                    <div class="row">

                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                    <div class="row">
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group1"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                    <div class="row">
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group2"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                    <div class="row">
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                        <div class="col-md-3"><a  class = "fancybox"  rel = "group3"  href = "assets/img/backgrounds/1.jpg" ><img  src = "assets/img/backgrounds/1.jpg"  alt = ""  width="100%"/></a></div>
                    </div>
                    <div class="meta-box"></div>
                </div>
            </div>
            <div class="meta-box"></div>
        </div>
    </div>
     <%@ include file="/pages/common/footer.jsp"%>
</div>
<script type="text/javascript">
    $(function () { $("[data-toggle='tooltip']").tooltip(); });
</script>
  <%@ include file="/pages/common/script.jsp"%>