$(function(){
	$.get("goods/listAll",function(data){
		alert(data);
	},"json");
	menuA();
});

var flag=false;
function menuA(){
	$('#b_body_left>ul>li').hover(function(){
		$(this).toggleClass('sel');
		var str=this.childNodes[0].innerHTML;
		$.get("type/listAll",function(data){
			var listStr="";
			for(var i=0;i<data.length;i++){
				if(data[i].ftname==str){
					listStr += '<li class="typess"><a href="goods/type?tname=data[i].name">'+data[i].name+'</a></li>';
				}
			}
			$("#types").html(listStr);
		},"json");
		$('#b_body_center').show();
	});
	
	$('#b_body_left').mouseout(function(){
		if(!flag){
			$('#b_body_center').hide();
		}
	});
	
	$('#b_body_center').mouseout(function(){
		$('#b_body_center').hide();
		flag=false;
	});
	$('#b_body_center').mouseover(function(){
		$('#b_body_center').show();
		flag=true;
	});
	
	var dv = $('#nowLook'), st;
	dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
	$(window).scroll(function () {
	st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
	if (st > parseInt(dv.attr('otop'))) {
	if (dv.css('position') != 'fixed') dv.css({ 'position': 'fixed', top: 0});
	} else if (dv.css('position') != 'static') dv.css({ 'position': 'static' });
	});
}
$(function() {
	$("#box2").click(function() {
		$("html,body").animate({
			scrollTop : 0
		}, 500);//回到顶部
	});

	$("#a1").click(function() {
		$("html,body").animate({
			scrollTop : $("#meishi").offset().top
		}, 1000);//定位到该位置	
	});

	$("#a2").click(function() {
		$("html,body").animate({
			scrollTop : $("#xiuxian").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a3").click(function() {
		$("html,body").animate({
			scrollTop : $("#dianying").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a4").click(function() {
		$("html,body").animate({
			scrollTop : $("#jiudian").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a5").click(function() {
		$("html,body").animate({
			scrollTop : $("#shenghuo").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a6").click(function() {
		$("html,body").animate({
			scrollTop : $("#gouwu").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a7").click(function() {
		$("html,body").animate({
			scrollTop : $("#liren").offset().top
		}, 1000);//定位到该位置

	});
	
	$("#a8").click(function() {
		$("html,body").animate({
			scrollTop : $("#lvyou").offset().top
		}, 1000);//定位到该位置

	});
});