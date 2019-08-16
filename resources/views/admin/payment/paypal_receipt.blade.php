<!DOCTYPE html>
<html>
<head>
	<title>Receipt</title>

	<style type="text/css">
		table.border,table.border td,table.border th {
		    border: 1px solid black;
		}
		table.border {
		    border-collapse: collapse;
		    width: 100%;
		}
		/*th {
		    height: 50px;
		}*/
		.text-center {
			text-align: center;
		}
		.text-left {
			text-align: left;
		}
		.text-right {
			text-align: right;
		}
		.active {
			background-color: #CCC;
		}
		p { margin:0 }
	</style>
</head>
<body>
	
	<div style="text-align: center">
		<img src="{{asset('site-assets/images/Biddyanondo-resized.png')}}" alt="" class="img img-responsive">
		<h4>Money Receipt</h4>
	</div>
   

   <table class="border">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Payment</th>
			<th>Comments</th>
			<th>Bill ({{ $paypal_payment->currency or null }})</th>
		</tr>

		<tr>
			<td>{{ $paypal_payment->user->name or null }}</td>
			<td>{{ $paypal_payment->user->email or null }}</td>
			<td>Paypal</td>
			<td>{{ $paypal_payment->order->comments or null }}</td>
			<td class="text-right">{{ $paypal_payment->amount or null }} Dollar</td>
		</tr> 

		<tr>
			<td colspan="4" class="text-right">
				Total Bill
			</td>
			<td class="text-right active">{{ $paypal_payment->amount or null }} Dollar</td>
		</tr>  
		<tr>
			<td colspan="4" class="text-right">
				Paid
			</td>
			<td class="text-right active">{{ $paypal_payment->amount or null }} Dollar</td>
		</tr>
		<tr>
			<td colspan="4" class="text-right">
				Due
			</td>
			<td class="text-right active">0.00 Dollar</td>
		</tr>	
   </table>


<br>
<br>
<img src="{{asset('uploads/settings/paid-stamp.png')}}" alt="" class="img img-responsive">
<br>
<br>
Payment Date : {{ $paypal_payment->payment_date or null }}
</body>
</html>