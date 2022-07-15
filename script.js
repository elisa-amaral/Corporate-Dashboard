$(document).ready(() => {
    $('#documentation').on('click', () => {

	   	$.post('documentation.html', response => { 
	        $('#page').html(response) 
		})
    })

    $('#tech_support').on('click', () => {
	   	$.post('tech-support.html', response => { 
	        $('#page').html(response) 
	   })
	}) 

	$('#month_year').on('change', event => { 
		
		let month_year = $(event.target).val() 

		$.ajax({ 
			
                type: 'GET', 
                url: 'back-end.php',

                data: `month_year=${month_year}`, 
                dataType: 'json', 
                success: data => { 
            
                let totalSalesRevenue = data.totalSalesRevenue 
                let totalExpense = data.totalExpense 

                $('#numberOfSales').html(data.numberOfSales)
                $('#totalSalesRevenue').html('$'+totalSalesRevenue)
                $('#totalExpense').html('$'+totalExpense)
                $('#numberOfClients').html(data.numberOfClients)
                $('#activeClients').html(data.activeClients)
                $('#inactiveClients').html(data.inactiveClients)
                $('#numberOfClientInteractions').html(data.numberOfClientInteractions)
                $('#clientComplimentInteractions').html(data.clientComplimentInteractions)
                $('#clientComplaintInteractions').html(data.clientComplaintInteractions)

               },
               errorr: error => { console.log(error) }
		})
	}) 
}) 