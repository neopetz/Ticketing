<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <script src="https://www.paypal.com/sdk/js?client-id=AcqOxKtEj1LRFdSV71H3WTWXcnrW9gqVsSg1P_K8o2qJScgwq4RMMaPhM6e-2w0tN8qSBUMo9kgCAKln&currency=PHP"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>


<div class="container-fluid">
  
    <div class="jumbotron text-center">
        <h3>Summary of Charges</h3>
      </div>
        
      <div class="container">
        <div class="row">
          <div class="col-sm-5">
            <h5>Cubao to Cebu</h5>
            Departure Schedule : <p>March 28 2022 / 6:30 AM  </p>
            Selected Seat No. : <p>16</p>
          </div>
          <div class="col-sm-5">
            <h5>Fare Amount</h5>        
            Fare Amount : <p>1 Passenger x 581.00 = 581.00</p>
            Reservation Fee : <p>(50.00) x  1 Passenger = 50.00</p>
          </div>
          <div class="col-sm-2">
            <h5>Total Amount</h5>        
            <p id="price">631.00</p>

          </div>
        </div>
      </div>

</div>

<form action="<%=request.getContextPath()%>/PaymentController" method="POST">
    <input id="transaction_code" type="hidden" name="transaction">
    <input id="payer" type="hidden" name="payer_name">
     <input id="payer_email" type="hidden" name="payer_email">
     <input id="status" type="hidden" name="status">
     
         <input type="hidden" name="arrival_date" value="March 29,2022">
         <input type="hidden" name="bus_seat" value="16">
     
     <input type="hidden" name="price" value="631.00">
     <input type="hidden" name="departure_location" value="MNL">
     <input type="hidden" name="arrival_location" value="CEB">
     <input type="hidden" name="departure_date" value="March 28,2022">
     <input type="hidden" name="bus_class" value="First Class">
     <input type="hidden" name="bus_number" value="IWT 2022">
     <input type="hidden" name="passenger_name" value="Juan Dela Cruz">
     <input type="hidden" name="driver" value="Jhon Doe">
    
 	<div id="paypal-button-container" class="text-center"></div>
<center>
	<h3 id="payment_status"  style="display:none;">Payment Completed</h3>
    <button class="btn btn-primary" type="submit" id="receipt" style="display:none;">Proceed to Receipt</button>
</center>
</form>

</body>

    <script type="text/javascript">
        var transaction_code = document.getElementById('transaction_code').innerHTML;
        var price = document.getElementById('price').innerHTML;
       var payment_button = document.getElementById('paypal-button-container');
       var receipt_btn = document.getElementById('receipt');
       var payment_status = document.getElementById('payment_status');
         
        paypal.Buttons({
            createOrder: function(data, actions){
                return actions.order.create({
                    purchase_units:[{
                        amount: {
                            value: price
                          //  currency_code: 'PHP'
                        }
                    }]
                })
            },
            onApprove: function(data, actions){
                console.log('DATA : '+ data);
                console.log('ACTION : '+ actions);
                return actions.order.capture().then(function(details){
                    console.log(details);
                    document.getElementById("payer").value =  details.payer.name.given_name+" "+details.payer.name.surname;
                    document.getElementById("transaction_code").value = details.id;
                    document.getElementById("payer_email").value = details.payer.email_address;
                    document.getElementById("status").value = details.status;
                    payment_button.style.display = "none";   
                    receipt_btn.style.display = "block";   
                    payment_status.style.display = "block"; 
                })
            }
        }).render('#paypal-button-container');
        
        
        
    </script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
</html>