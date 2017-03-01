<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/pages/common/taglibs.jsp"%>
<!--End banner img-->
<div class="container-fluid main-container" id="main-container">
    <div class="row">
        <div class="col-md-12 top-title">
            <h2 class="page-title"> 博客文章</h2>
        </div>
    </div>
    <c:forEach items="${page.data}" var="entity">
	    <div class="row">
	        <div class="col-md-12 post-container">
	            <h2 class="post-title">
	                <a class="title" value="${entity.id}">${entity.title}</a>
	            </h2>
	            <div class="meta-box">
	            <span class="m-post-date">
	              <i class="fa fa-calendar-o">
	              </i>
	              ${entity.createDate }
	            </span>
	            <span class="comments-link">
	              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
	                  <i class="fa fa-comments-o"></i> 留言
	              </a>
	            </span>
	            </div>
	            <div class="post-content">
	                <p>
	                   ${entity.context }
	                </p>
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
    <!--分页进入第二页，一页多少可分配-->
    <div class="row post-pagination">
        <div class="col-md-12">
            <p>
                <a href="" class="btn btn-primary btn-sm">
              <span class="glyphicon glyphicon-refresh">
              </span>
              <span>浏览之前的文章</span>
                </a>
            </p>
        </div>
    </div>
    <!--评论内容-->
    <div class="row page-comments-container">
        <div class="col-md-12">
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
        </div>
    </div>
    <%@ include file="/pages/common/footer.jsp"%>
</div>
<%@ include file="/pages/common/script.jsp"%>
