$(function(){
	var id=$(".title").attr("value");
	$(".title").click(function(){
		console.log(id);
		$.ajax({
		     type: "POST",
		     url: "/article/selectGetOne?id="+id,
		     dataType: "json",
		     success: function (jsonResult) {
		        
		     }
		 });
	}) 

})
