//分页查询获取是否滚蛋跳在底部
	var nScrollHight = 0; //滚动距离总长(注意不是滚动条的长度)  
	var nScrollTop = 0;   //滚动到的当前位置  
	var count=1;
	var nDivHight = $("#main-container").height();  
	var type=$("#type").val();
	$("#main-container").scroll(function(){  
	  nScrollHight = $(this)[0].scrollHeight;  
	  nScrollTop = $(this)[0].scrollTop;  
	  if(nScrollTop + nDivHight >= nScrollHight){
		  count=count+1;
		  $.ajax({
	            type: "POST",
	            url: "/article/pagingData?pageNo="+count+"&id="+type,
	            dataType: "json",
	            success: function (data) {
					$.each(data.data,function(key,value){
						var html ='<div class="row">';
							html+='<div class="col-md-12 post-container">';
							html+='<h2 class="post-title">';
							html+='<a class="title" href="/article/selectOne?id=${entity.id}" value="${entity.id}">'+value.title+'</a>';
							html+='</h2>';
							html+='   <div class="meta-box">';
							html+='   <span class="m-post-date">';
							html+='      <i class="fa fa-calendar-o">';
							html+='     </i>';
							html+=value.createDate;
							html+='   </span>';
							html+='   <span class="comments-link">';
							html+='    <a href="" class="ds-thread-count" data-thread-key="9500" title="Comment on 毕业两周年">';
							html+='         <i class="fa fa-comments-o"></i> 留言';
							html+='      </a>';
							html+='   </span>';
							html+='   </div>';
							html+='   <div class="post-content">';
							html+='       <p>';
							html+=value.context;
							html+='       </p>';
							html+='    </div>';
							html+='   <div class="meta-box">';
							html+='   <span class="cat-links">';
							html+='      <i class="fa fa-navicon">';
							html+='     </i>';
							html+='     <b>分类:</b>';
							html+='     <a>'+value.type.name+'</a>';
							html+='   </span>';
							html+='   <span class="tag-links">';
							html+='     <i class="fa fa-tags">';
							html+='     </i>';
							html+='     <b>标签: </b>';
							html+='     <a>'+value.type.label+'</a>';
							html+='   </span>';
							html+='   </div>';
							html+='  </div>';
							html+='  </div>';
							$(".container").append(html);
					})
	            }
	        }); 
	  }
 	 });  