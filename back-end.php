<?php

class CorporateDashboard {

	public $startDate;
	public $endDate;
	public $numberOfSales;
	public $totalSalesRevenue;
	public $totalExpense;
	public $numberOfClients;
	public $activeClients;
	public $inactiveClients;
	public $numberOfClientInteractions;
	public $clientComplimentInteractions;
	public $clientComplaintInteractions;
	

	public function __get($attribute) 
	{
		return $this->$attribute;
	}

	public function __set($attribute, $value) 
	{
		$this->$attribute = $value;
		return $this; 
	}
}

class Connection {

	private $host = 'localhost';
	private $dbname = 'corporate_dashboard';
	private $user = 'root';
	private $pass = '';

	public function connect() 
	{
		try 
		{

			$connection = new PDO(
				"mysql:host=$this->host;dbname=$this->dbname",
				"$this->user",
				"$this->pass"		
			);
			$connection->exec('set charset set utf8');

			return $connection;

		} 
		catch(PDOException $e) 
		{
			echo '<p>' .$e->getMessage().'</p>';
		}
	}
} 

class Database 
{

	private $connection;
	private $corporate_dashboard;

	public function __construct(Connection $connection, CorporateDashboard $corporate_dashboard) 
	{ 

		$this->connection = $connection->connect(); 

		$this->corporate_dashboard = $corporate_dashboard; 
	}

	public function getNumberOfSales() 
	{
		
		$query = '
			select 
				count(*) as number_of_sales 
			from 
				sales 
			where 
				sale_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->number_of_sales; 

	}

	public function getTotalSalesRevenue() 
	{
		
		$query = '
			select 
				SUM(sale_value) as total_sales_revenue 
			from
 				sales 
			where 
				sale_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->total_sales_revenue; 

	}

	public function getTotalExpense() 
	{

		$query = '
			select 
				SUM(expense_value) as total_expense
			from
 				expenses
			where 
				expense_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->total_expense; 

	}

	public function getNumberOfClients() 
	{

		$query = '
			select 
				COUNT(*) as number_of_clients
			from
 				clients
			where 
				client_status_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->number_of_clients;

	}

	public function getActiveClients() 
	{

		$query = '
			select 
				COUNT(*) as number_of_active_clients
			from
 				clients
			where 
				client_is_active = true AND client_status_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->number_of_active_clients;

	}

	public function getInactiveClients() 
	{

		$query = '
			select 
				COUNT(*) as number_of_inactive_clients
			from
 				clients
			where 
				client_is_active = false AND client_status_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->number_of_inactive_clients;

	}

	public function getNumberOfClientInteractions() 
	{

		$query = '
			select 
				COUNT(*) as number_of_client_interactions
			from
 				client_interactions
			where 
				interaction_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->number_of_client_interactions; 
	
	}

	public function getClientComplimentInteractions() 
	{

		$query = '
			select 
				COUNT(*) as number_of_compliments
			from
 				client_interactions
			where 
				interaction_type = 1 AND interaction_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->number_of_compliments; 

	}

	public function getClientComplaintInteractions() 
	{

		$query = '
			select 
				COUNT(*) as number_of_complaints
			from
 				client_interactions
			where 
				interaction_type = 2 AND interaction_date between :startDate and :endDate';

		$statement = $this->connection->prepare($query);  
		$statement->bindValue(':startDate', $this->corporate_dashboard->__get('startDate'));
		$statement->bindValue(':endDate', $this->corporate_dashboard->__get('endDate'));
		$statement->execute();

		return $statement->fetch(PDO::FETCH_OBJ)->number_of_complaints; 
	}
	
}


$month_year = explode('-', $_GET['month_year']); 
$year = $month_year[0];
$month = $month_year[1];

$day_of_the_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);

$corporate_dashboard = new CorporateDashboard(); 

$corporate_dashboard->__set('startDate', $year.'-'.$month.'-01'); 
$corporate_dashboard->__set('endDate', $year.'-'.$month.'-'.$day_of_the_month); 

$connection = new Connection(); 

$database = new Database($connection, $corporate_dashboard); 

$corporate_dashboard->__set('numberOfSales', $database->getNumberOfSales());
$corporate_dashboard->__set('totalSalesRevenue', $database->getTotalSalesRevenue());
$corporate_dashboard->__set('totalExpense', $database->getTotalExpense());
$corporate_dashboard->__set('numberOfClients', $database->getNumberOfClients());
$corporate_dashboard->__set('activeClients', $database->getActiveClients());
$corporate_dashboard->__set('inactiveClients', $database->getInactiveClients());
$corporate_dashboard->__set('numberOfClientInteractions', $database->getNumberOfClientInteractions());
$corporate_dashboard->__set('clientComplimentInteractions', $database->getClientComplimentInteractions());
$corporate_dashboard->__set('clientComplaintInteractions', $database->getClientComplaintInteractions());

echo json_encode($corporate_dashboard);

?>