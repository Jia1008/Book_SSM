
	var newframe=1;
	var maxframe=4;
	function show(d1){
		if(Number(d1)){
			clearTimeout(theTimer);
			newframe=d1;
		}
		for(var i=1;i<maxframe+1;i++){
			if(i==newframe){
				document.getElementById('div'+newframe).style.display='';
			}else{
				document.getElementById('div'+i).style.display='none';
			}
		}
		if(newframe==maxframe){
			newframe=1;
		}else{
			newframe++;
		}
		theTimer=setTimeout('show()',4000);
	}
