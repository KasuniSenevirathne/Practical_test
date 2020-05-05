$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});
// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	// Form validation-------------------
	var status = validateItemForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	// If valid------------------------
	var type = ($("#hidDoctorIDSave").val() == "") ? "POST" : "PUT";

	$.ajax({
		url : "DoctorsAPI",
		type : type,
		data : $("#formDoctor").serialize(),
		dataType : "text",
		complete : function(response, status) {
			onDoctorSaveComplete(response.responseText, status);
		}
	});	
});

function onDoctorSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divDoctorsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidDoctorIDSave").val("");
	$("#formDoctor")[0].reset();
}

//DELETE=============================================================================
	$(document).on("click", ".btnRemove", function(event) {
		$.ajax({
			url : "DoctorsAPI",
			type : "DELETE",
			data : "Rdoctor_ID=" + $(this).data("doctorid"),
			dataType : "text",
			complete : function(response, status) {
				onDoctorDeleteComplete(response.responseText, status);
			}
		});
	});
	
	
	function onDoctorDeleteComplete(response, status) {
		if (status == "success") {
			var resultSet = JSON.parse(response);
			if (resultSet.status.trim() == "success") {
				$("#alertSuccess").text("Successfully deleted.");
				$("#alertSuccess").show();
				$("#divDoctorsGrid").html(resultSet.data);
			} else if (resultSet.status.trim() == "error") {
				$("#alertError").text(resultSet.data);
				$("#alertError").show();
			}
		} else if (status == "error") {
			$("#alertError").text("Error while deleting.");
			$("#alertError").show();
		} else {
			$("#alertError").text("Unknown error while deleting..");
			$("#alertError").show();
		}
	}


// UPDATE==========================================
$(document).on(
		"click",
		".btnUpdate",
		function(event) {
			$("#hidDoctorIDSave").val(
					$(this).closest("tr").find('#hidDoctorIDUpdate').val());
			$("#Rdoctor_name").val($(this).closest("tr").find('td:eq(0)').text());
			$("#Rdoctor_address").val($(this).closest("tr").find('td:eq(1)').text());
			$("#Rdoctor_specilaization").val($(this).closest("tr").find('td:eq(2)').text());
			$("#Rdoctor_email").val($(this).closest("tr").find('td:eq(3)').text());
		});
// CLIENTMODEL=========================================================================
function validateItemForm() {
	// DOCTORNAME
	if ($("#Rdoctor_name").val().trim() == "") {
		return "Insert Doctor Name.";
	}
	// DOCTORADDRESS
	if ($("#Rdoctor_address").val().trim() == "") {
		return "Insert Doctor Address.";
	}
	
	// SPECILAIZATION-------------------------------
	if ($("#Rdoctor_specilaization").val().trim() == "") {
		return "Insert Specilaization.";
	}

	// EMAIL------------------------
	if ($("#Rdoctor_email").val().trim() == "") {
		return "Insert Email.";
	}
	
	return true;
}
