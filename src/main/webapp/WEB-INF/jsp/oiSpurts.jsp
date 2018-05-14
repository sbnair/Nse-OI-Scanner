<!doctype html>
<html>
  <head>
    <title>NSE OI Spurts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="js_css_include.jsp"/>
 
   
    <script type="text/javascript">

    $(document).ready(function() {
        $('#example').DataTable( {
            "processing": true,
            "ajax": "https://jsr101.herokuapp.com/oi_spurts",
            "columns": [
                 { "data": "symbol" },
                 { "data": "latestOI" },
                 { "data": "prevOI" },
                 { "data": "oiChange" },
                 { "data": "percOIchange" },
                 { "data": "volume" },
                 { "data": "valueInLakhs" },
                 { "data": "underlying" }
            ]
        } );
    } );
    </script>
    
    
    
  </head>
  <body>
    <jsp:include page="menu.jsp"/>
  
<fieldset class="field_set" style="margin-left:28px;margin-right:28px;">
<legend>INTRADAY OI SPURTS - Moves with a sudden burst of speed</legend>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">NSE OI Spurts</h3>
    </div>
    <div class="panel-body">
	<table id="example"		class="table table-striped table-bordered dt-responsive nowrap" style="width: 90%">
		<thead>
			<tr>
                <th>symbol</th>
                <th>latestOI</th>
                <th>prevOI</th>
                <th>oiChange</th>
                <th>percOIchange %</th>
                <th>volume</th>
                <th>valueInLakhs</th>
                <th>underlying</th>
              
			</tr>
		</thead>

	</table>

		</div>
	</div>
	</fieldset>
</body>
</html>