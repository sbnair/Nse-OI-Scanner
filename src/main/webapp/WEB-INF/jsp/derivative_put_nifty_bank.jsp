<!doctype html>
<html>
  <head>
    <title>put nifty bank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="js_css_include.jsp"/>
 
   
    <script type="text/javascript">

    $(document).ready(function() {
        $('#example').DataTable( {
            "processing": true,
            "ajax": "https://jsr101.herokuapp.com/derivative/put/put_nifty_bank",
            "columns": [
						{ "data": "instrumentType" },
						{ "data": "symbol",
						  	 render: function ( data, type, row ) {
						         
						         return '<span class="symbol">'+data+'</span>';
						       
						     } 
						},
						{ "data": "expiryDate" },
						{ "data": "optionType" },
						{ "data": "strikePrice" },
						{ "data": "perChange" ,
							render: function ( data, type, row ) {
						        if (data >= 0) {
						          return '<span class="positive">'+data+' %</span>';
						        } else {
						          return '<span class="negative">'+data+' %</span>';
						        }
						      }
						},
						{ "data": "openInterest" },
						{ "data": "lastTradedPrice" },
						{ "data": "noOfContractsTraded" },
						{ "data": "contractValueRsLakhs" },
						{ "data": "contractValuePremRsLakhs" },
						{ "data": "timestamp" }
            ]
        } );
    } );
    </script>
    
    
    
  </head>
  <body>
  <jsp:include page="menu.jsp"/>
  
  
  
<fieldset class="field_set" style="margin-left:28px;margin-right:28px;">
<legend>Intraday Top Put Nifty Bank</legend>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">Top Gainers</h3>
    </div>
    <div class="panel-body">
	<table id="example"		class="table table-striped table-bordered dt-responsive nowrap" style="width: 100%">
		<thead>
			<tr>
							<th>Instrument</th>
							<th>Symbol</th>
							<th>ExpiryDate</th>
							<th>OpType</th>
							<th>StrikePrice</th>
							<th>%Change</th>
							<th>OpenInterest%</th>
							<th>lastTradedPrice</th>
							<th>NoOfContractsTraded</th>
							<th>ContractValueRsLakhs</th>
							<th>ContractValuePremRsLakhs</th>
							<th>Timestamp</th>
						</tr>
		</thead>

	</table>

		</div>
	</div>
	</fieldset>
</body>
</html>