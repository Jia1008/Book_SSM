function add(stock,a){
		var nodes=a.parentNode.childNodes;
		var Singleprice=a.parentNode.nextSibling.nextSibling;
	//	alert(a.parentNode.nextSibling.nextSibling.innerHTML);
		var price=a.parentNode.previousSibling.previousSibling.firstChild.nextSibling.innerHTML;
		//alert(a.parentNode.previousSibling.previousSibling.firstChild.nextSibling.innerHTML);
		var num=nodes[3].value;
		var sgprice=0;
		price=price.substring(1);
		if(num<stock){
			num++;
			nodes[3].value=num;	
			sgprice=parseFloat(price)*parseFloat(num)*1.0;
			Singleprice.innerHTML="¥"+sgprice.toFixed(1)+"元";
		}else{
			alert("库存不足");
		}
		checkOne();
		//Singleprice.innerHTML=Integer.parseInt(price)*num;
	}
	function sub(a){
		var nodes=a.parentNode.childNodes;
		var Singleprice=a.parentNode.nextSibling.nextSibling;
		var price=a.parentNode.previousSibling.previousSibling.firstChild.nextSibling.innerHTML;
		var num=nodes[3].value;
		var sgprice=0;
		price=price.substring(1);
		if(num>=1){
			num--;	
		}
		nodes[3].value=num;
		sgprice=parseFloat(price)*parseFloat(num)*1.0;
		Singleprice.innerHTML="¥"+sgprice.toFixed(1)+"元";
		checkOne();
	}
	
	function checkall(){
		var goods = document.getElementsByTagName("input");
		var ck=document.getElementsByName("ck");
       if(ck.checked==true){
        	for(var i=0;i<goods.length;i++){
        		goods[i].checked=false;
        	}
        	document.getElementsByName("ck").checked=false;
        }else{
        	for(var j=0;j<goods.length;j++){
        		goods[j].checked=true;
        	}
        	document.getElementsByName("ck").checked=true;
        }
       checkOne();
	}
	function checkOne(){
		var goods=document.getElementsByTagName("input");
		var size=document.getElementById("fone_size");//选中商品的个数
		var total_price=document.getElementById("total_price");//总价钱
		var totalprice=0;
		var x=0;//选中商品的个数
		for(var i=0;i<goods.length;i++){
			if(goods[i].checked==true){
				//获取input的父元素下面有多少个子元素，input那列长度15,如果>14就表明是商品那一列的input
				if(goods[i].parentNode.childNodes.length>14){
					var single_price=goods[i].parentNode.lastChild.previousSibling.previousSibling.previousSibling.innerHTML;
					//过滤掉¥进行计算
					single_price=single_price.substring(1);
					x++;
					totalprice=totalprice+parseFloat(single_price);
				}
			}
		}
		size.innerHTML=x;
		total_price.innerHTML="¥"+totalprice.toFixed(2)+"元";
	}
	
	function getMessage(){
		var goods=document.getElementsByTagName("input");
		var json = new Array();
		var k=0;
		for(var i=0;i<goods.length;i++){
			if(goods[i].checked==true){
				//alert("dshdj");
				//获取input的父元素下面有多少个子元素，input那列长度15,如果>14就表明是商品那一列的input
				if(goods[i].parentNode.childNodes.length>14){
					var id=goods[i].parentNode.id;
					var num=goods[i].parentNode.lastChild.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.childNodes[3].value;
					//alert("ejufrjj");
					var a = {"id":id,"num":num};
					json[k++]= a;
				}
			}
		}
		console.log(json);
		console.log(JSON.stringify(json));
		if(k>0){
			window.location.href="OrderLineServlet?json="+JSON.stringify(json);
		}else{
			alert("你为未选择商品！");
		}
	}
	