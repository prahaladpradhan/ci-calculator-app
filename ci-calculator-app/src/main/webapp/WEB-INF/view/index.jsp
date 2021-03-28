<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		function add(){
			var val1 = document.getElementById("val1").value;
			var val2 = document.getElementById("val2").value;
			console.log(val1+" "+val2);
			
				//window.location = '/add?val1={'+val1+'}&val2={'+val2+'}';
				//document.getElementById("addForm").submit();
				
				$.ajax({
				    type : "GET",
				    url : "/calculator/add",
				    data : {
				        "val1" : val1,
				        "val2" : val2
				    },
				    success: function(data){
				        $('#result').val(data);
				    }
				});
			
			
		}
	</script>
</head>
<body>
<h2>Calculator Demo App</h2>

 <form id="addForm" action="/add">
<table>
	<thead>
		<tr><td>A</td><td>B</td><td>A+B</td></tr>
	</thead>
	<tbody>
		<tr><td> <input type="text" id="val1"  title="Enter First Value"> </td><td><input type="text" id="val2" onkeyup="add()"></td><td><input type="text" id="result" readonly="readonly" disabled="disabled" value="${result}"></td></tr>
	</tbody>
</table>
</form>
<input type="text" onkeypress="alert('Hillo')" value="${result}">
</body>
</html>
