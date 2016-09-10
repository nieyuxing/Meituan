$.post("option/details?gid=" + $("#gid").val(), function(data) {
	alert(data);
}, "json");