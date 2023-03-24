
<?php

@session_start();

if(!isset($_SESSION['customer_email'])){

echo "<script>window.open('../checkout.php','_self')</script>";

}

?>

<center><!-- center Starts -->

<h1> Pay on Delivery   </h1>

<p class="text-muted" >

If you have any questions, please feel free to <a href="../contact.php" >contact us,</a> 24/7 available services 

</p>

</center><!-- center Ends -->

<hr>


<div class="table-responsive" ><!-- table-responsive Starts -->

<table class="table table-bordered table-hover table-striped" ><!-- table table-bordered table-hover table-striped Starts -->

<thead><!-- thead Starts -->

<tr>

<th> Bank Account Details </th>

<th> Easy Paisa,UBL Omni,Mobi Cash Details: </th>

<th> Western Union Details: </th>

</tr>

</thead><!-- thead Ends -->

<tbody><!-- tbody Starts -->

<tr>




</tr>

</tbody><!-- tbody Ends -->


</table><!-- table table-bordered table-hover table-striped Ends -->

</div><!-- table-responsive Ends -->