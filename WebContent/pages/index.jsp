<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ include file="/pages/common/taglibs.jsp"%>
<!--End banner img-->
<!--主要内容 -->
    <div class="container-fluid main-container" id="main-container" >
        <div class="row top-title">
            <div class="col-md-12">
                <h1 class="page-title">最新文章</h1>
            </div>
        </div>
	    <!--main Start-->
	   <div class="container" style="height:1100px;">
	        <c:forEach items="${page.data}" var="entity">
<%-- 	        <input type="text" id="type" value="${entity.type.id}" hidden="hidden"/> --%>
			    <div class="row">
	                <div class="col-md-12 post-container">
			            <h2 class="post-title">
			                <a class="title" href="/article/selectOne?id=${entity.id}" value="${entity.id}">${entity.title}</a>
			            </h2>
				        <div class="meta-box">
				            <span class="m-post-date">
				              <i class="fa fa-calendar-o">
				              </i>
				              ${entity.createDate }
				            </span>
				            <span class="comments-link">
<!-- 				              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年"> -->
<!-- 				                  <i class="fa fa-comments-o"></i> 留言 -->
<!-- 				              </a> -->
				            </span>
			            </div>
			            <div class="post-content">
			                   ${entity.context }
			            </div>
			            <div class="meta-box">
				            <span class="cat-links">
				              <i class="fa fa-navicon">
				              </i>
				              <b>分类:</b>
				              <a>${entity.type.name }</a>
				            </span>
				            <span class="tag-links">
				              <i class="fa fa-tags">
				              </i>
				              <b>标签: </b>
				              <a>${entity.label}</a>
				            </span>
		           		 </div>
		            </div>
			    </div>
		    </c:forEach>
	    </div>
    </div>
    </div>
<script src="/assets/js/samsung/masonry.pkgd.min.js"></script>
<script src="/assets/js/samsung/imagesloaded.pkgd.min.js"></script>
<script src="/assets/js/samsung/classie.js"></script>
<script src="/assets/js/samsung/colorfinder-1.1.js"></script>
<script src="/assets/js/samsung/gridScrollFx.js"></script>
<!-- <script src="/assets/js/article/article.js"></script> -->
<%@ include file="/pages/common/script.jsp"%>
<script type="text/javascript">
	$(function(){
		var row=$(".post-content");
		row.each(function(){
			var context=$(this).text();
			 if (context.length > 400) { 
				 context = context.substring(0,400)+" ...."
			 }
			 $(this).html(context);
		})		
	})
</script>
