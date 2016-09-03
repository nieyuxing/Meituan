// JavaScript Document
	$(function(){
	menuA();
});
var flag=false;
function menuA(){
	
	
	$("#box2").click(function() {
		$("html,body").animate({
			scrollTop : 0
		}, 500);//回到顶部
	});
			
	$(document).ready(function(){
        $('#money').hover(function(){
            $("#checkPrick").css('display', 'block');
        }, function() {
           $("#checkPrick").css('display', 'none');
       		});
            $("#checkPrick").hover(function() {
                $(this).css('display', 'block');;
            }, function() {
                $(this).css('display', 'none');
            });
 	})
 	
 	$(document).ready(function(){
        $('#b_head_left').hover(function(){
           $("#b_body_left").css('display', 'block');
        }, function() {
        	$("#b_body_left").css('display', 'none');
       	});
        
        $("#b_body_left").hover(function() {
           $(this).css('display', 'block');
           $("#b_body_center").css('display', 'block');
        }, function() {
           $(this).css('display', 'none');
        });  
        
        $('#b_body_center').hover(function(){
        	$("#b_body_left").css('display', 'block');
            $(this).css('display', 'block');
        }, function() {
         	$(this).css('display', 'none');
        });
 	})
 	
	
 	
	var dv = $('#nowLook'), st;
	dv.attr('otop', dv.offset().top); //存储原来的距离顶部的距离
	$(window).scroll(function () {
	st = Math.max(document.body.scrollTop || document.documentElement.scrollTop);
	if (st > parseInt(dv.attr('otop'))) {
	if (dv.css('position') != 'fixed') dv.css({ 'position': 'fixed', top: -20 ,right:189});
	} else if (dv.css('position') != 'static') dv.css({ 'position': 'static' });
	});
}