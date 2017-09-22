function getPrice(a){
	var name=a.name;
	//categoryId=2&price_min=0&price_max=99
	var names=name.split('&');
	var categoryId=names[0].split('=')[1];
	var price_min=names[1].split('=')[1];
	var price_max=names[2].split('=')[1];
	var arr=a.parentNode.childNodes;
	for(var i=1;i<arr.length;i=i+2){
		arr[i].style.color="";
	}
	a.style.color="red";
	document.getElementById("list_price").innerHTML=a.innerHTML;
	var list_ajax=document.getElementById("list_ajax");
	$.ajax({
		type:"GET",
		url:"ajax/priceRank?categoryId="+categoryId+"&price_min="+price_min+"&price_max="+price_max,
		success:function(datas){
			console.log(datas);
			list_ajax.innerHTML=datas;
		}
	});
}

function getPublish(a){
	var name=a.name;
	//categoryId=1&publishId=2
	var names=name.split('&');
	var categoryId=names[0].split('=')[1];
	var publishId=names[1].split('=')[1];
	document.getElementById("list_publish").innerHTML=a.innerHTML;
	var arr=a.parentNode.childNodes;
	for(var i=1;i<arr.length;i=i+2){
		arr[i].style.color="";
	}
	a.style.color="red";
	var list_ajax=document.getElementById("list_ajax");
	$.ajax({
		type:"GET",
		url:"ajax/publish?categoryId="+categoryId+"&publishId="+publishId,
		success:function(datas){
			console.log(datas);
			list_ajax.innerHTML=datas;
		}
	});
}

function getOrder(a){
	var name=a.name;
	//categoryId=1&method=p.id
	var names=name.split('&');
	var categoryId=names[0].split('=')[1];
	var method=names[1].split('=')[1];
	var arr=a.parentNode.parentNode.childNodes;
	for(var i=1;i<arr.length;i=i+2){
		arr[i].className="";
	}
	a.parentNode.className="current";
	var list_ajax=document.getElementById("list_ajax");
	$.ajax({
		type:"GET",
		url:"ajax/order?categoryId="+categoryId+"&method="+method,
		success:function(datas){
			console.log(datas);
			list_ajax.innerHTML=datas;
		}
	});
}
