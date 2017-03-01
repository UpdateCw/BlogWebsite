<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<%@ include file="/pages/common/taglibs.jsp"%>
<!--End banner img-->
<!--主要内容 -->
    <div class="container-fluid main-container" id="main-container">
        <div class="row top-title">
            <div class="col-md-12">
                <h1 class="page-title">
                    最新文章
                </h1>
            </div>
        </div>
	    <!--main Start-->
	   <div class="container">
	     	<section class="grid-wrap">
				<ul class="grid swipe-down" id="grid">
				    <c:forEach items="${page.data}" var="entity">
				    <li>
				    	<a href="#/15944679/Kenpo-News-April-2014-issue">
						        <div class="col-md-12 post-container">
						            <h2 class="post-title">
						                <a href="/article/selectOne?id=${entity.id}" >${entity.title}</a>
						            </h2>
						            <div class="meta-box">
							            <span class="m-post-date">
							              <i class="fa fa-calendar-o"></i>
							              ${entity.createDate}
							            </span>
							            <span class="comments-link">
							              <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">
							                  <i class="fa fa-comments-o">
							                  </i>
							              </a>
							            </span>
						            </div>
						            <div class="post-content">
						                <h4 style="text-indent:20px">${entity.context}</h4>
						            </div>
						            <div class="meta-box">
							            <span class="cat-links">
							              <i class="fa fa-navicon">
							              </i>
							              <b>分类:</b>
							              <a href="topics/life/diary.htm">${entity.type.name}</a>
							            </span>
							            <span class="tag-links">
							              <i class="fa fa-tags"></i>
							              <b>标签:</b>
							              <a href="tags/毕业.htm" rel="tag">${entity.label}</a>
							            </span>
						            </div>
						        </div>
						    <h3>2015年5月20日  队列消息</h3>
					    </a>
					</li>
			  	  	</c:forEach>
				</ul>
			</section>
	    </div>
	    <!--推荐阅读-->
	    <div class="row">
	        <div class="col-md-12 post-container m-recommend-page">
	            <div class="row">
	                <div class="col-md-4">
	                    <a href="" class="thumbnail">
	                        <img src="/assets/img/works.png" alt="作品展示">
	                    </a>
	                </div>
	                <div class="col-md-4">
	                    <a href="" class="thumbnail">
	                        <img src="/assets/img/study.png" alt="学习生活">
	                    </a>
	                </div>
	                <div class="col-md-4">
	                    <a href="" class="thumbnail">
	                        <img src="/assets/img/book.png" alt="作品推荐">
	                    </a>
	                </div>
	            </div>
	        </div>
    </div>
  <%@ include file="/pages/common/footer.jsp"%>
</div>
<script src="/assets/js/samsung/masonry.pkgd.min.js"></script>
<script src="/assets/js/samsung/imagesloaded.pkgd.min.js"></script>
<script src="/assets/js/samsung/classie.js"></script>
<script src="/assets/js/samsung/colorfinder-1.1.js"></script>
<script src="/assets/js/samsung/gridScrollFx.js"></script>
<script>
	new GridScrollFx( document.getElementById( 'grid' ), {
		viewportFactor : 0.4
	} );
</script>
  <%@ include file="/pages/common/script.jsp"%>