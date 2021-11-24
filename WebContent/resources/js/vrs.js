$(document).ready(function(){
	//to add user
	$('button#addNewUser').click(function() {
		window.location.href = 'view.vrs?view=add&folder=user';
	});
  
});

function deleteUser(userId) {
	if(confirm('Are you sure you want to delete user?')){
		window.location.href = 'user.vrs?action=delete&userId='+userId;
	}
}

function deleteInsurance(insId) {
	if(confirm('Are you sure you want to delete Insurance?')){
		window.location.href = 'insurance.vrs?action=delete&insId='+insId;
	}
}

function deleteVehicle(vehId) {
	if(confirm('Are you sure you want to delete Vehicle?')){
		window.location.href = 'vehicle.vrs?action=delete&vehId='+vehId;
	}
}



