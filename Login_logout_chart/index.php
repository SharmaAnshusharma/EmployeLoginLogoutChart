<?php
include('header.php');
?>
	<div class="container">
		<h1 class="text-center">Employee Details</h1>
		<hr>
		<table class="table table-striped table-hover" id="viewData">
			<thead>
				<tr>
					
					<th>Name</th>
					<th>Employee ID</th>
					<th>Designation</th>
					<th>View</th>
				</tr>	
			</thead>
			<tbody>
			<?php
				$query = mysqli_query($con,"SELECT * FROM employee");
				$count = mysqli_num_rows($query);
				$output = array();
				if($count > 0 )
				{
					while($row = mysqli_fetch_array($query))
					{
						?>
						<tr>
							<td><?php echo $row['Name']?></td>
							<td><?php echo $row['Emp_ID']?></td>
							<td><?php echo $row['Designation']?></td>
							<td><a href="loadData.php?ID=<?php echo $row['Emp_ID']?>">View</a></td>
						</tr>			
							
						<?php

					}
				}
			?>
				</tbody>
			</table>
	</div>

</body>
</html>