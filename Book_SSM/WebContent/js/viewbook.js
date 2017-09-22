function change(a){
	for(var i=1;i<=4;i++){
		document.getElementById("vb_title_"+i).className="";
		document.getElementById("vb_ggcs_"+i).style.display="none";
	}
	if(a==1){
		document.getElementById("vb_ggcs_1").style.display="block";
		document.getElementById("vb_title_1").className="current";
	}else if(a==2){
		document.getElementById("vb_ggcs_2").style.display="block";
		document.getElementById("vb_title_2").className="current";
	}else if(a==3){
		document.getElementById("vb_ggcs_3").style.display="block";
		document.getElementById("vb_title_3").className="current";
	}else if(a==4){
		document.getElementById("vb_ggcs_4").style.display="block";
		document.getElementById("vb_title_4").className="current";
	}
}


function addShopCart(bookname){
	var mes=document.getElementById("shopcarid").href;
	var num=document.getElementById("book_num").value;
	var p=mes.lastIndexOf("=");
	var message=mes.substring(0,p+1);
	message=message+num;
	document.getElementById("shopcarid").href=message;
	alert(bookname+"  加入购物车成功!");
}
//加一
function add(a){
	var num=document.getElementById("book_num").value;
	if(num<a){
		num++;
		document.getElementById("book_num").value=num;	
	}else{
		alert("库存不足");
	}
}
//减1
function sub(){
	var num=document.getElementById("book_num").value;
	if(num>1){
		num--;	
	}
	document.getElementById("book_num").value=num;
}

$(function(){
	$(".pro_select_vals li").on("click",function(){
		$(".pro_select_vals li").removeClass("red_publish");
		$(this).addClass("red_publish");
		/*var $p=$("#shopcarid");
		if($(this).html()=="精装版"){
			var $href=$p.attr("href");
			var x=$href.lastIndexOf("=")+1;
			
			$p.attr("href",$href.sub+"&publishId=1");
			alert($p.attr("href"));
		}else if($(this).html()=="简装版"){
			$p.attr("href",$p.attr("href")+"&publishId=3");
			alert($p.attr("href"));
		}else if($(this).html()=="收藏版"){
			$p.attr("href",$p.attr("href")+"&publishId=7");
			alert($p.attr("href"));
		}*/
			
	});
});