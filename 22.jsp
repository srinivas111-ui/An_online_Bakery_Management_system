<%@ page import="java.sql.*,java.util.*" ;content="text/html">
<html>
<head>
	<title>
		Address 
	</title>
	<style>
			table
{
    border: px solid black;
  border-radius: 10px;
  background-color: rgb(251,72,196);
}
body
{
	background-image: url(https://tse2.mm.bing.net/th?id=OIP.laRTa1pdwAKGHFVV2jM6ZAHaHa&pid=Api&P=0);
}
	</style>
<script>
function ra()
{
var p=localStorage.getItem("pname");
var w=localStorage.getItem("weight");
var Q=localStorage.getItem("Quantity");
document.getElementById("pname").innerHTML = p;
document.getElementById("weight").innerHTML = w;
document.getElementById("Quantity").innerHTML = Q;
}
</script>
</head>


	</head>
<body onload="ra()">
<jsp:include page="Baklava1.html" />
<jsp:include page="Baklava2.html" /> 
<jsp:include page="Baklava3.html" /> 
<jsp:include page="Baklava4.html" /> 
<jsp:include page="Baklava5.html" /> 
<jsp:include page="browny1.html" /> 
<jsp:include page="browny2.html" /> 
<jsp:include page="browny3.html" /> 
<jsp:include page="browny4.html" /> 
<jsp:include page="browny5.html" /> 
<jsp:include page="browny6.html" /> 
<jsp:include page="browny7.html" /> 
<jsp:include page="browny8.html" /> 
<jsp:include page="browny9.html" /> 
<jsp:include page="cakes1.html" /> 
<jsp:include page="cakes2.html" /> 
<jsp:include page="cakes3.html" /> 
<jsp:include page="cakes4.html" /> 
<jsp:include page="cakes5.html" /> 
<jsp:include page="cakes6.html" /> 
<jsp:include page="cakes7.html" /> 
<jsp:include page="cakes8.html" /> 
<jsp:include page="cakes9.html" /> 
<jsp:include page="cakes10.html" /> 
<jsp:include page="Cookies2.html" /> 
<jsp:include page="cookies1.html" />
<jsp:include page="cookies3.html" /> 
<jsp:include page="cookies4.html" /> 
<jsp:include page="cookies5.html" /> 
<jsp:include page="cookies6.html" /> 
<jsp:include page="cookies7.html" /> 
	
<jsp:include page="cookies8.html" />
<jsp:include page="cookies9.html" /> 
<jsp:include page="cookies10.html" /> 
<jsp:include page="donuts1.html" /> 
<jsp:include page="donuts2.html" /> 
<jsp:include page="donuts3.html" /> 
<jsp:include page="donuts4.html" /> 
<jsp:include page="donuts5.html" /> 
<jsp:include page="donuts6.html" /> 
<jsp:include page="donuts7.html" /> 
<jsp:include page="donuts8.html" /> 
<jsp:include page="donuts9.html" /> 
<jsp:include page="donuts10.html" /> 
<jsp:include page="Pastry1.html" /> page="Baklava1.html" /> 
<jsp:include page="Pastry2.html" /> 
<jsp:include page="Pastry3.html" /> 
<jsp:include page="Pastry4.html" /> 
<jsp:include page="Pastry5.html" /> 
<jsp:include page="Pastry6.html" /> 
	
<jsp:include page="Pastry7.html" />
<jsp:include page="Pastry8.html" /> 
<jsp:include page="Pastry9.html" /> 
<jsp:include page="Pastry10.html" /> 

		<table width="40%" align="center">
<tr><td>
		<table align="center" width="100%" cellpadding="5"><tr><td align="center"><h3>Order Confirmation page</h3></td></tr>
<tr><td><h2 id="pname" name="pname"></h2></td></tr>
<tr><td><h2 id="Quantity" name="Quantity"></h2></td></tr>
<tr><td><h2 id="weight" name="weight"></h2></td></tr>
			<tr><td>enter your Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
			<td>enter your gender</td>
			<td><input type="radio" name="Gender">male
				<input type="radio" name="Gender">female
				</td>
			</tr>
			<tr>
				<td>enter your father name</td>
				<td><input type="text" name="Fathername"></td>
			</tr>
			<tr>
				<td>enter your village/city</td>
				<td><input type="text" name="village"></td>
			</tr>
			<tr>
				<td>enter your mandal</td>
				<td><input type="text" name="mandal"></td>
			</tr>
			<tr>
				<td>enter your district</td>
				<td><input type="text" name="district"></td>
			</tr>
			<tr>
				<td>enter your mobile number</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			<tr>
				<td>enter your pincode</td>
				<td><input type="text" name="pin"></td>
			</tr>
			<tr>
				<td>country</td>
	<td><input type="text" name="country">
			</td>
		</tr><br><br></table>
	</td>
</tr>
<tr>
	<td>
		<table align="center">
		<tr align="center">
									<td><input type="submit" value="submit" style="height:30px;width:300px;background-color: dodgerblue;></tr>
		</table>
	</td></tr></table>
	<tr>
<td>
		<table align="center">
			<td><input type="reset" value="Reset" style="height:30px;width:300px;background-color: dodgerblue;></td></tr>
			<tr><td><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0ODQ0NDQ4ODQ0NCA0NCAgIDQ8NDQgNFREWFhURExUYHSggGBolGxMVITEhJSkrLi4uFx83ODMsNzQtLisBCgoKDg0OGBAPFS0ZGB03LTc3LTcrLS0tKy0tLisrMS0rKys3KysrKy0tKy0rLS04Ky0tLSstKystKys3Nys3K//AABEIAKgBKwMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAAAQIEAwUG/8QAMhABAAIBAgMECAUFAAAAAAAAAAECEQMEEiExQVFhcQUTYoGRocHRIjKx4fEUM0JS8P/EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMGBP/EAB4RAQEAAwADAQEBAAAAAAAAAAABAhESAyExUTIi/9oADAMBAAIRAxEAPwD6kB4B64AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAJEJACUJtUiMmTYkBUAAARkVIjKMgnJlVEyi6WyZc8rcE+Eea6tPUWynKnD4/JbBqokVysgkRCVQAAAAAAAAAAAAQS53lLVibXiHL+pxOY/dS7jZmZe2+XqaevW0c+ft1+sLzpZ51nMeDxa6lqzmPfE9JbNvu4t28Nu7PXyl13L9c7hZ8abUlV1jWntiJ+Uk8M+HmzcPxN2fY45TladP3+Mc1Jq5XcallTkyphCdrp0yjKmVJusyWYusyibM99eIZdbedzc3fka5brasR1lk19/Ecq/GWC+ra045zPZWvOVq7HWv0pNfHU/D+vN1ww1/SXSLel9SnSKzPfaJn6s1/Tm5mcRNYz0itInPxejp+g4n+5fzrpR9Z+zTNNttYzFa1nHLH4tS/lnm7dY/m28bhPk3XkafpncRbF5iefOtqRGH0ehfirS3TNYtju5ZfK7jVtudxFscOeGlaxzxHjPb1fVRXhrER2VisfBjy6xPLJ69aqYWhWFofPHKphKIS0gAIAAAAAAAAAAiXO0OqswlWM9quVqtVqudqsWOkrLarlajZNHOaG2tuelub09qO63WPe2aW7pbt4Z7rfdlmik6bUyZuMr1I/6U5n+ebyq8VfyzMeETydq7rUjrEW+Ut9Ri4N6JpH8Mtd9HbWfdMSvG9p7UecGsanNjtOlHj8vspO2rPbb4x9lf6zT75+Eone08fdBJif6TOx0+3inztP0TXZaMf4V87fi/Vztv69lbT54hytvrz0rEeeZb6kOcq3RERyiIjwrGHPW3NK/mtGf9Y5z8HnX1NS3W0+Uco+StdvM9jN8jU8a+49IWnlpxw+1bnb9nma2na0zM5taeszzmXr6ez72rT0a16R70mf41LMfjx/Q2zmNTivWY4Yz+KMZl7c8zCcJllcr7TLLd2QmBKMkJIFZAAAAAAAAAAAAAARMKzVcTS7cZqrNXfCuGdNbcJoiaO/CcJpemfgVnTauFHCaOmX1aPVNfCngPZ0x+qPVNnAcBqr0x+qXjQaoomKnNTpwrow6xSIXwLMYzckYMLDSbVwnCUAAkAAQAAAAAAAAAAAAAAAAABAkFQJAQJAQkAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH/2Q==" width="450px" height="50px" align="center"></td></tr>
		
	</table>
</td>
</tr>
</table>
<jsp:forward page="Buy.jsp" />
</body>
</html>>