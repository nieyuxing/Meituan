    // Firefox, Google Chrome, Opera, Safari, Internet Explorer from version 9
    //span 标签变颜色
   function OnInput (){
	     if($("#uspwd").val().length==0){
	    	   $("#s1" ).css("background","#EEEEEE");
	    	   $("#s2" ).css("background","#EEEEEE");
	   		   $("#s3" ).css("background","#EEEEEE");
	       }else if ($("#uspwd").val().length<=7){
    	    $("#s1" ).css("background","#F76120");
    	    $("#s2" ).css("background","#EEEEEE");
   		    $("#s3" ).css("background","#EEEEEE");
    	 }else if($("#uspwd").val().length<=11){
    		 $("#s1" ).css("background","#FF8900");
    		 $("#s2" ).css("background","#FF8900");
    		 $("#s3" ).css("background","#EEEEEE");
    	 }else if($("#uspwd").val().length<=18){
    		$("#s1" ).css("background","#5BAB3C");
   		    $("#s2" ).css("background","#5BAB3C");
   		    $("#s3" ).css("background","#5BAB3C");
    	}
    }
	
     
      var num=0;
      $(".email").blur(function(){
    	  var emailText=$(".email").val();
    	   if(/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/.test(emailText)){
    		    // $("#emialP").html("*邮箱格式正确");
				$.post("user/emailverify?email="+emailText,function(data){
					//alert(data);
					if(data){
						$("#emialP").css("color","red");
						$("#emialP").html("*邮箱已注册");
						num++;
					}else{
						$("#emialP").css("color","#999999");
						$("#emialP").html("*邮箱认证通过");
					}
				},"json");
			 }else{
				 $("#emialP").css("color","red");
				 $("#emialP").html("*邮箱格式不正确");
				num++;
			 }
      });
      
      $("#uspwd").blur(function(){
    	  var uspwd=$("#uspwd").val();
    	  if(/^[A-Za-z0-9_\S-]{6,18}$/.test(uspwd)){
    		  $("#uspwdP").css("color","#999999");
    		  $("#uspwdP").html("*密码符合要求");
			}else{
				 $("#uspwdP").css("color","red");
				$("#uspwdP").html("*密码不符合要求");
				num++;
			}
      });
      
       $("#uspwd2").blur(function(){
    	   var uspwd=$("#uspwd").val();
    	   var uspwd2=$("#uspwd2").val();
    	  if(uspwd==uspwd2){
    		  $("#uspwd2P").css("color","#999999");
    		  $("#uspwd2P").html("*前后密码一致");
			}else{
				 $("#uspwd2P").css("color","red");
				$("#uspwd2P").html("*前后密码不一致");
				num++;
			}
       });
      
      function check(){
    	  // alert(num);
    	  if(num>0){
    		  alert("很遗憾，注册失败！！！");
    		  window.location.reload();
    		  return false;
    	  }else{
    		  return true;
    		  alert("恭喜你，注册成功...");
    	  }
      } 
