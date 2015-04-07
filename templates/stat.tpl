<!doctype html>
<html>

	<head>
		<title>Статистика New-Taxi</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
		<link rel="stylesheet" href="/admin/templates/css/bootstrap.css">
		<link rel="stylesheet" href="/admin/templates/css/bootstrap-responsive.css">
		<link rel="shortcut icon" href="http://m.new-taxi.com/templates/favicon.ico">
		<script src="http://api-maps.yandex.ru/2.0/?load=package.full&lang=ru-RU"></script>
		<script src="/admin/templates/js/jquery-1.7.1.min.js"></script>
		<script src="http://dygraphs.com/dygraph-combined.js"></script>
	</head>
  
	<body>
		<div class="navbar" id="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a class="brand" href="/">New-Taxi</a>
					<div class="navbar-content">
						<ul class="nav">
							<li>
								<a href="/admin/map">Карта</a> 
							</li>
							<li class="active">
								<a href="/admin/stat">Статистика</a> 
							</li>
							<li>
								<a href="/admin/order">Сделать заказ</a> 
							</li>
							<li>
								<a href="/admin/logout">Выход</a> 
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<!-- <br><div id="graph_maximum"></div> -->

			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tbody><!-- <tr>
					<td width="50%" align="center" style="font-size: 14px;padding-bottom: 5px;">Водители</td>
					<td width="50%" align="center" style="font-size: 14px;padding-bottom: 5px;">Заказы</td>
				</tr> -->
				<tr>
					<td width="50%"><div id="graph_static"></div></td>
					<td width="50%"><div id="graph_orders"></td>
				</tr></tbody>
			</table>

		</div>
	</body>
	
	<script type="text/javascript">
	
	init();
	
	function init() {
		calculateGraphSize();
		drawGraph();
	}
	
	$(document).ready(function() {
		$(window).resize(function(){
			calculateGraphSize();
		});
	});
	
	function calculateGraphSize() {	
	//	$('#graphdiv').height($(window).height());
		var gwidth = $(window).width();
	//	$('#graph_maximum').width($(window).width()-50);
		$('#graph_static').width((gwidth/2)-35);
		$('#graph_orders').width((gwidth/2)-35);
		
		$('#graph_static').height(230);
		$('#graph_orders').height(230);
	}

	function drawGraph() {
		
 		g2 = new Dygraph(
		document.getElementById("graph_static"),
			${output2},
			{
				fillGraph: true,
				animatedZooms: true,
				title: 'Водители на линии',
				digitsAfterDecimal: 0,
				labelsDivStyles: { 'textAlign': 'left' },
				showRangeSelector: true,
			}
		);
		
 		g3 = new Dygraph(
		document.getElementById("graph_orders"),
			${output3},
			{
				fillGraph: true,
				animatedZooms: true,
				title: 'Заказы по дням',
				digitsAfterDecimal: 0,
				labelsDivStyles: { 'textAlign': 'left' },
				highlightCircleSize: 4,
			//	strokeWidth: 2,
				
				drawPoints: true,
				pointSize: 2,
			}
		);
	}
	
	</script>
	
</html>