function valid()
{
	var reach=document.create;
	var one=reach.regno.value;
	alert(document.create.regno.value);
	var two=reach.travels.value;
	var three=reach.origin.value;
	var four=reach.stop.value;
	var five=reach.am.value;
	var six=reach.type.checked;
	var seven=reach.seats.value;
	var eight=reach.price.value;
	
	// validation
	if(one.match("[A-Z]{2}[0-9]{2}[A-Z]{1}[0-9]{4}"))
	{
		alert("Regno vaidated");
	}
	else
	{
		alert("Not matched");
	}
}