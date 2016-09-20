
$(function(){
	$('#b_body_left>ul>li').hover(function() {
		$(this).toggleClass('sel');
		var str = this.childNodes[0].innerHTML;
		$.get("type/listAll",function(data) {
			var listStr = "";
			for (var i = 0; i < data.length; i++) {
			if (data[i].name == str) {
			listStr += '<li class="typess"><a href="goods/type?tid='+data[i].tid+'">'+data[i].tname+'</a></li>';
								}
							}
							$("#types").html(listStr);
						}, "json");
				$('#b_body_center').show();
			});
	
	//实物评价
	$.get("goods/evaluate",function(data) {
		var listStr ="";	
		for (var i = 0; i < data.length; i++) {
			if(data[i].tid==101){
				listStr+='<li class="left-box02-down-li">' ;
				listStr+= '<div class="li-left">';
				listStr+='listStr+=	<img src="../images/ip01.jpg" alt="头像">';
				listStr+='<p>ssss</p>';
				listStr+= '</div>'
				listStr+= '<div class="li-right">';
				listStr+= '<div class="li-right-up">';
				listStr+=		'<div class="li-right-up-left">星星星星星</div>';
				listStr+=		'<span>2016-8-31</span>';
				listStr+=	'</div>';
				listStr+=	'<div class="li-right-down">';
				listStr+=		'<p id="" class="content">';
				listStr+=			'我们这次点的是奥尔良味道比上次吃的好吃多了，还点了一份烤翅和两杯饮料，其实后来算了一下，还不如59的套餐更好，多了份薯条，鸡翅味道不错，儿子一下子就吃光了4个，披萨也还错，上次好像点的是水果的没今天点的好吃。';
				listStr+=		'</p>';
				listStr+=	'</div>';
				listStr+=  '</div>';
				listStr+='</li>'; 	
			}
		}
		$("#pingjia").html(listStr);
	}, "json");
});    

$.post("option/details?gid=" + $("#gid").val(), function(data) {
	alert(data);
}, "json");
