/*或者不用jquery*/  
/*商品数量框输入*/  
function keyup(){  
    var noneText = document.getElementById("noneText").value;  
    if(isNaN(noneText) ||  parseInt(noneText)!=noneText || parseInt(noneText)<1){  
    	noneText = 1;  
        return;  
    }  
}  
  
/*商品数量+1*/  
function numAdd(){  
    var noneText = document.getElementById("noneText").value;  
    var num_add = parseInt(noneText)+1;  
    var price=document.getElementById("price").value;  
    if(noneText==""){  
        num_add = 1;  
    }    
    document.getElementById("noneText").value=num_add;  
    var Num=price*num_add;  
    document.getElementById("shopPrice").innerHTML=Num.toFixed(2);  
}  

/*商品数量-1*/  
function numDec(){  
    var noneText = document.getElementById("noneText").value;  
    var price=document.getElementById("price").value;  
    var num_dec = parseInt(noneText)-1;  
    if(num_dec>0){  
        document.getElementById("noneText").value=num_dec;  
        var Num=price*num_dec;  
         document.getElementById("shopPrice").innerHTML=Num.toFixed(2);  
    }  
}  
function show()  
{  
    document.getElementById("shopPrice").innerHTML=3.25*2;  
}    