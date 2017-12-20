function getCustomer(url, id) { 
	
	$(document).ready(function() {
		$.getJSON(url+id, function(data) {
			
			$("#customer"+id).append("First Name" + data.customer.eventName + "<br />");
			$("#customer"+id).append("Song Writer:" + data.customer.company + "<br />");
			$("#customer"+id).append("Genre:" + data.customer.address);
			
		});
	});
	
	$("#a"+id).attr("onclick", "");
	
}
