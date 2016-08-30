// JavaScript Document
  
		      /* var oDiv1= document.getElementById('findmima_body');
			   var oDiv2=document.getElementById('mailFindPwd');
			   var oDiv3=document.getElementById('mailRenzheng');
			   var oDiv4=document.getElementById('modifyPwd');
			   var oDiv5=document.getElementById('finishRenzheng');*/
		   
			 function show(){
				  if($('#findmima_body').css('display','block')){
			        $('#findmima_body').hide();
			        }
			       $('#mailFindPwd').show();
			   }
			   
               function show1(){
			          $('#mailFindPwd').hide();
			          $('#mailRenzheng').show();
			    }    
			  function show2(){
			          $('#mailRenzheng').hide();
			          $('#modifyPwd').show();
			    }  	
	          function show3(){
			          $('#modifyPwd').hide();
			          $('#finishRenzheng').show();
			    }    