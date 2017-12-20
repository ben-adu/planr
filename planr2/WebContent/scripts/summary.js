//$('bo').click(function(){ 
//	swal({
//		  title: 'Creating Event',
//		  text: 'Hold on tight',
//		  timer: 2000,
//		  onOpen: () => {
//			    swal.showLoading()
//			  }
//		}).then(
//		  function () {},
//		  // handling the promise rejection
//		  function (dismiss) {
//		    if (dismiss === 'timer') {
//		    	var link = '<c:out value="planEvent/${event.id }"/>'; 
//		    	window.location.href = link;
//		    }
//		  }
//		)
//});

swal({
  title: 'Creating Event',
  text: 'Hold on tight',
  timer: 2500,
  onOpen: () => {
    swal.showLoading()
  }
}).catch(swal.noop)