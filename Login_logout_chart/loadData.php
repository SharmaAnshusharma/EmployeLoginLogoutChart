<?php
include('header.php');
?>
	<div class="container">
		<h1 class="text-primary">Employee Login & Logout Graph</h1>
		<hr>
			<input type="button" class="btn btn-outline-primary" id="graph" value="Make Line Graph">
			<button id="btn-save" class="btn btn-outline-success" style="float:right">Save As Image</button>
			<hr>
			<canvas id="myChart" >
			</canvas>
				

		<table class="table table-striped table-hover" id="viewData">
			<thead>
				<tr>
					
					<th>Name</th>
					<th>Employee ID</th>
					<th>Login Time</th>
					<th>Logout Time</th>
				</tr>	
			</thead>
			<tbody>
			<?php
			$get_emp_id = $_GET['ID'];
				$query = mysqli_query($con,"SELECT * FROM emp_table WHERE `Emp_ID` = '$get_emp_id' ");
				$count = mysqli_num_rows($query);
				$output1 = array();
				$output2 = array();
				if($count > 0 )
				{
					while($row = mysqli_fetch_array($query))
					{
						$name =  $row['Name'];
						$emp_id = $row['Emp_ID'];
						?>
						<tr>
							<td><?php echo $name; ?></td>
							<td><?php echo $emp_id; ?></td>
							<td><?php echo $row['Login_Time']?></td>
							<td><?php echo $row['Logout_Time']?></td>
						</tr>			
							
						<?php

						$time1 = date("H:i:s",strtotime($row['Login_Time']));
						$time2 = date("H:i:s",strtotime($row['Logout_Time']));
						
						$time_parts1 = explode(':', $time1);
						$time_parts2 = explode(':', $time2);
						
/*						echo $time_parts1[0] + floor(($time_parts1[1]/60)*100) / 100 ;
*/						
						$output1[] = $time_parts1[0] + floor(($time_parts1[1]/60)*100) / 100;
						$output2[] = $time_parts2[0] + floor(($time_parts2[1]/60)*100) / 100;
					}
				}
			?>
				</tbody>
			</table>
		</div>
		<script>
			var data1 = '<?php echo json_encode($output1);?>';
			var data2 = '<?php echo json_encode($output2);?>';
			
			var data_One = JSON.parse(data1);
			var data_Two = JSON.parse(data2);
			var  getDaysInMonth = function(month,year)
			{
			      return new Date(year,month,0).getDate();
			}
			  var year = new Date().getFullYear();
			  var month = new Date().getMonth()+1;
			  var length =  getDaysInMonth(month,year);
			var  getDaysInMonth = function(month,year)
			{
			   return new Date(year,month,0).getDate();
			}
			  var year = new Date().getFullYear();
			  var month = new Date().getMonth()+1;
			  var length =  getDaysInMonth(month,year);
			  var i;
			  var array = Array();
			  for(i=1;i<=length;i++)
			  {
			    array.push(i);
			  }
			  

			$('#graph').on('click',function(){
			let myChart = document.getElementById('myChart').getContext('2d');
			//Global Options
			Chart.defaults.global.defaultFontFamily = 'Lato';
			Chart.defaults.global.defaultFontSize =18;
			Chart.defaults.global.defaultFontColor = '#777';

				let massPopChart = new Chart(myChart,{
					type:'line',//bar, horizontalBar,pie Line, doughnut,radar,polarArea
					
					data:{
						labels:array,

						datasets:[{

							label: 'Login Time',
							borderColor: 'rgba(0,99,132)',
							backgroundColor:'rgb(192,192,192)',
							data:data_One,
						},
						{
							label:"Logout Time",
							borderColor:'rgb(0,200,0)',
							backgroundColor:'rgb(192,192,192)',
							data:data_Two,
						}
						]		
						
					},
					options:{}
				});
					$("#btn-save").show();
					$("#btn-save").click(function(){
						$("#myChart").get(0).toBlob(function(blob){
						saveAs(blob,'chart.png')
					});
				});
			});

			$("#btn-save").hide();


		</script>
		<br><br><br><br>
	</body>


	</html>
