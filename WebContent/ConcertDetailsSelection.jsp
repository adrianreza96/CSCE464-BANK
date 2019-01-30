<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Font Awesome Icon Library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	.checked {
	  color: orange;
	}
}
</style>
<meta charset="UTF-8">
<title>Concert Details</title>
</head>
	<style>
		input[type=submit] {
		    width: 20em;  height: 2em;
		    background-color: cornsilk;
		}
		* {
		 	font-family: Arial;
		} 
		body {
		 	background-color: lightblue;
		}
	</style>
	<body>
		<link rel="stylesheet" type="text/css" href="NavigationBarTheme.css">
		<div class="topnav">
		  <a class="active" href="CustomerHomePage.jsp">Home</a>
		  <a href="ViewOrders.jsp">Orders</a>
		  <a href="Login.jsp" style="float:right">Log Out</a>
		</div>
		<table>
			<tr>
				<td>
					<form action="ConcertSearchResults.jsp">
						<input type=submit value="Back">
					</form>
				</td>
				<td>
					<form action="ViewAndCheckoutShoppingCart.jsp">
						<input type=submit value="Add to Cart">
					</form>
				</td>
				
			</tr>
		</table>
		
		
		<h1 style="text-align:center">Details</h1>
		<h2 style="text-align:center">Chance the Rapper</h2>
		<table>
			<tr>
				<td style="text-align:center">With a sound and style all his own, armed with an extra helping of swagger and boundless enthusiasm, Chance the Rapper became one of the most talked about up and coming Hip-Hop artists when he was barely twenty years old. When Chance was suspended for ten days during his senior year of High School in Chicago, he hatched his first mixtape, "10 Day" which would garner the attention of Childish Gambino. He subsequently appeared on tracks with his peers, such as Hoodie Allen and Joey Bada$$. His next mixtape, "Acid Rap," came out in 2013 to universal acclaim, and featured Action Bronson, Vic Mensa, Ab-Soul, and Twista, featuring production from the likes of Jake One and Nosaj Thing. Chance quickly gained a reputation for his unconventional, gravelly sing-rap delivery and his conscious, acute, and playful lyricism. He has since appeared at major festivals including Lollapalooza, and has launched his own tour which ended in December, 2013.</td>
			</tr>
			<tr>
				<td style="text-align:center"><img src="Pics/ChanceAlbum.jpeg" alt="" border=3 height=200 width=200></img></td>
			</tr>
			<tr>
				<td style="text-align:center">9:00pm February 24, 2019</td>
			</tr>
			<tr>
				<td style="text-align:center">Opener: Kyle</td>
			</tr>
			<tr>
				<td style="text-align:center">General Admission (Floor): $100.00</td>
			</tr>
			<tr>
				<td style="text-align:center">Lower Bowl: $80:00</td>
			</tr>
			<tr>
				<td style="text-align:center">Upper Bowl: $50.00</td>
			</tr>
			<tr>
				<td style="text-align:center">Available Seats: 200</td>
			</tr>
		</table>
		
		
		<h3>Reviews for Pinnacle Bank Arena</h3>
		<span class="heading">User Rating</span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		
		<br>
		<br>
		
		<table style="width:100%">
			<tr>
				<th>Name</th>
				<th>Date</th>
				<th>Rating</th>
				<th>Review</th>
			</tr>
			<tr>
				<td style="text-align:center">Sam Johnson</td>
				<td style="text-align:center">January 12th, 2019</td>
				<td style="text-align:center">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star"></span>
				</td>
				<td style="text-align:center">Facility was nice and people where mostly nice.</td>
			</tr>
			<tr>
				<td style="text-align:center">Kathy Hendriks</td>
				<td style="text-align:center">August 30th, 2018</td>
				<td width="100" style="text-align:center">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
				</td>
				<td style="text-align:center">Loved this venue I was front row and loved every minute of the concert.</td>
			</tr>
			<tr>
				<td style="text-align:center">Austin Larson</td>
				<td style="text-align:center">August 15th, 2018</td>
				<td style="text-align:center">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
				</td>
				<td style="text-align:center">Very clean facility with helpful staff.</td>
			</tr>
			<tr>
				<td style="text-align:center">Mary Appleton</td>
				<td style="text-align:center">June 27th, 2018</td>
				<td style="text-align:center">
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star checked"></span>
					<span class="fa fa-star "></span>
					<span class="fa fa-star "></span>
					<span class="fa fa-star"></span>
				</td>
				<td style="text-align:center">Concerts should not be help here. The top deck should not even be sold for concerts because you cannot hear anything.</td>
			</tr>
		</table>
	
	</body>
</html>