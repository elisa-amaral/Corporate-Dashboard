create database corporate_dashboard collate utf8_unicode_ci;

use corporate_dashboard;

create table sales(
	id int not null primary key auto_increment,
	sale_date datetime default current_timestamp,
	sale_value float(10,2) not null
);

create table expenses(
	id int not null primary key auto_increment,
	expense_date datetime default current_timestamp,
	expense_value float(10,2) not null
);

create table clients(
	id int not null primary key auto_increment,
	client_is_active boolean default true,
	client_status_date datetime default current_timestamp 

);

create table client_interactions(
	id int not null primary key auto_increment,
	interaction_type int not null,
	interaction_date datetime default current_timestamp
);


-- SALES
insert into sales(sale_date, sale_value)values('2022-01-15', 1250.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 150.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 1150.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 1250.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 150.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 150.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 150.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 1150.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 2150.20);
insert into sales(sale_date, sale_value)values('2022-01-15', 2150.20);
insert into sales(sale_date, sale_value)values('2022-01-16', 33255.36);
insert into sales(sale_date, sale_value)values('2022-01-18', 2270.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 3270.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 9870.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 1370.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 7033.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 7210.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 1970.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 3770.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 1370.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 7370.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 1270.95);
insert into sales(sale_date, sale_value)values('2022-01-18', 170.95);
insert into sales(sale_date, sale_value)values('2022-02-01', 2335.00);
insert into sales(sale_date, sale_value)values('2022-02-11', 32047.12);
insert into sales(sale_date, sale_value)values('2022-02-19', 1122.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 2312.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 1233.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 5312.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 2322.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 23122.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 6122.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 2312.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 4329.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 23122.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 5122.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 95122.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 94122.85);
insert into sales(sale_date, sale_value)values('2022-02-19', 9122.85);
insert into sales(sale_date, sale_value)values('2022-02-23', 9957.14);
insert into sales(sale_date, sale_value)values('2022-03-01', 333.55);
insert into sales(sale_date, sale_value)values('2022-03-02', 1000.33);
insert into sales(sale_date, sale_value)values('2022-03-03', 1212.12);
insert into sales(sale_date, sale_value)values('2022-03-03', 1231.12);
insert into sales(sale_date, sale_value)values('2022-03-03', 1988.12);
insert into sales(sale_date, sale_value)values('2022-03-03', 1123.12);
insert into sales(sale_date, sale_value)values('2022-03-03', 1412.12);
insert into sales(sale_date, sale_value)values('2022-03-03', 2146.12);
insert into sales(sale_date, sale_value)values('2022-03-03', 1853.12);
insert into sales(sale_date, sale_value)values('2022-03-04', 4237.47);
insert into sales(sale_date, sale_value)values('2022-04-23', 2957.14);
insert into sales(sale_date, sale_value)values('2022-04-01', 2323.53);
insert into sales(sale_date, sale_value)values('2022-04-12', 2124.12);
insert into sales(sale_date, sale_value)values('2022-04-23', 7298.99);
insert into sales(sale_date, sale_value)values('2022-04-30', 776.90);
insert into sales(sale_date, sale_value)values('2022-04-30', 2689.90);
insert into sales(sale_date, sale_value)values('2022-04-30', 2323.90);
insert into sales(sale_date, sale_value)values('2022-04-30', 890.90);
insert into sales(sale_date, sale_value)values('2022-04-30', 2689.90);
insert into sales(sale_date, sale_value)values('2022-04-30', 8189.90);
insert into sales(sale_date, sale_value)values('2022-05-10', 2358.90);
insert into sales(sale_date, sale_value)values('2022-05-11', 158.90);
insert into sales(sale_date, sale_value)values('2022-05-11', 100.33);
insert into sales(sale_date, sale_value)values('2022-05-12', 882.40);
insert into sales(sale_date, sale_value)values('2022-05-15', 728.50);
insert into sales(sale_date, sale_value)values('2022-05-17', 125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 3125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 3125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 2125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 6725.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 5125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 1225.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 1125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 4125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 2125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 125.99);
insert into sales(sale_date, sale_value)values('2022-05-17', 3125.99);
insert into sales(sale_date, sale_value)values('2022-06-02', 778.21);
insert into sales(sale_date, sale_value)values('2022-06-04', 143.22);
insert into sales(sale_date, sale_value)values('2022-06-12', 2382.34);
insert into sales(sale_date, sale_value)values('2022-06-25', 2134.23);
insert into sales(sale_date, sale_value)values('2022-06-25', 1134.23);
insert into sales(sale_date, sale_value)values('2022-06-25', 2134.23);
insert into sales(sale_date, sale_value)values('2022-06-25', 3134.23);
insert into sales(sale_date, sale_value)values('2022-06-25', 4134.23);
insert into sales(sale_date, sale_value)values('2022-06-25', 2134.23);
insert into sales(sale_date, sale_value)values('2022-06-25', 1134.23);
insert into sales(sale_date, sale_value)values('2022-06-30', 1286.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 6486.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 4486.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 3486.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 2486.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 1286.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 2386.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 2386.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 5786.43);
insert into sales(sale_date, sale_value)values('2022-06-30', 2386.43);

-- EXPENSES
insert into expenses(expense_date, expense_value)values('2022-01-01', 156.12);
insert into expenses(expense_date, expense_value)values('2022-01-02', 1653.95);
insert into expenses(expense_date, expense_value)values('2022-01-02', 134.86);
insert into expenses(expense_date, expense_value)values('2022-01-02', 1447.32);
insert into expenses(expense_date, expense_value)values('2022-01-02', 156.12);
insert into expenses(expense_date, expense_value)values('2022-01-12', 1653.95);
insert into expenses(expense_date, expense_value)values('2022-01-05', 234.86);
insert into expenses(expense_date, expense_value)values('2022-01-10', 2447.32);
insert into expenses(expense_date, expense_value)values('2022-01-12', 156.12);
insert into expenses(expense_date, expense_value)values('2022-01-12', 2653.95);
insert into expenses(expense_date, expense_value)values('2022-01-14', 334.86);
insert into expenses(expense_date, expense_value)values('2022-01-15', 1447.32);
insert into expenses(expense_date, expense_value)values('2022-01-15', 256.12);
insert into expenses(expense_date, expense_value)values('2022-01-18', 3653.95);
insert into expenses(expense_date, expense_value)values('2022-01-20', 234.86);
insert into expenses(expense_date, expense_value)values('2022-01-30', 1447.32);
insert into expenses(expense_date, expense_value)values('2022-02-04', 293.47);
insert into expenses(expense_date, expense_value)values('2022-02-10', 1913.23);
insert into expenses(expense_date, expense_value)values('2022-02-12', 293.47);
insert into expenses(expense_date, expense_value)values('2023-02-12', 1788.32);
insert into expenses(expense_date, expense_value)values('2022-02-12', 1193.47);
insert into expenses(expense_date, expense_value)values('2022-02-15', 913.23);
insert into expenses(expense_date, expense_value)values('2022-02-15', 2293.47);
insert into expenses(expense_date, expense_value)values('2023-02-18', 1788.32);
insert into expenses(expense_date, expense_value)values('2022-02-18', 1193.47);
insert into expenses(expense_date, expense_value)values('2022-02-18', 1913.23);
insert into expenses(expense_date, expense_value)values('2022-02-26', 2393.47);
insert into expenses(expense_date, expense_value)values('2023-02-27', 788.32);
insert into expenses(expense_date, expense_value)values('2023-03-01', 22233.32);
insert into expenses(expense_date, expense_value)values('2022-03-02', 3293.47);
insert into expenses(expense_date, expense_value)values('2023-03-02', 2233.32);
insert into expenses(expense_date, expense_value)values('2022-03-10', 2293.47);
insert into expenses(expense_date, expense_value)values('2023-03-13', 6233.32);
insert into expenses(expense_date, expense_value)values('2022-03-13', 493.47);
insert into expenses(expense_date, expense_value)values('2023-03-14', 2233.32);
insert into expenses(expense_date, expense_value)values('2022-03-14', 1693.47);
insert into expenses(expense_date, expense_value)values('2023-03-15', 1233.32);
insert into expenses(expense_date, expense_value)values('2022-03-26', 93.47);
insert into expenses(expense_date, expense_value)values('2023-04-05', 4343.98);
insert into expenses(expense_date, expense_value)values('2022-04-19', 4493.33);
insert into expenses(expense_date, expense_value)values('2022-04-19', 4434.13);
insert into expenses(expense_date, expense_value)values('2023-04-19', 6343.98);
insert into expenses(expense_date, expense_value)values('2022-04-20', 93.33);
insert into expenses(expense_date, expense_value)values('2022-04-20', 34.13);
insert into expenses(expense_date, expense_value)values('2023-04-20', 343.98);
insert into expenses(expense_date, expense_value)values('2022-04-25', 93.33);
insert into expenses(expense_date, expense_value)values('2022-04-26', 34.13);
insert into expenses(expense_date, expense_value)values('2022-05-02', 1248.87);
insert into expenses(expense_date, expense_value)values('2022-05-02', 1108.28);
insert into expenses(expense_date, expense_value)values('2022-05-07', 1108.97);
insert into expenses(expense_date, expense_value)values('2022-05-08', 148.87);
insert into expenses(expense_date, expense_value)values('2022-05-10', 1108.28);
insert into expenses(expense_date, expense_value)values('2022-05-08', 108.97);
insert into expenses(expense_date, expense_value)values('2022-05-10', 148.87);
insert into expenses(expense_date, expense_value)values('2022-05-12', 108.28);
insert into expenses(expense_date, expense_value)values('2022-05-12', 1108.97);
insert into expenses(expense_date, expense_value)values('2022-05-15', 148.87);
insert into expenses(expense_date, expense_value)values('2022-05-27', 1108.28);
insert into expenses(expense_date, expense_value)values('2022-05-27', 1108.97);
insert into expenses(expense_date, expense_value)values('2022-06-27', 171.84);
insert into expenses(expense_date, expense_value)values('2022-06-28', 882.56);
insert into expenses(expense_date, expense_value)values('2022-06-28', 182.56);
insert into expenses(expense_date, expense_value)values('2022-06-28', 396.41);
insert into expenses(expense_date, expense_value)values('2022-06-28', 182.56);
insert into expenses(expense_date, expense_value)values('2022-06-30', 196.41);
insert into expenses(expense_date, expense_value)values('2022-06-30', 882.56);
insert into expenses(expense_date, expense_value)values('2022-06-30', 196.41);
insert into expenses(expense_date, expense_value)values('2022-06-30', 199.41);


-- CLIENTS
/*
** true/1 = active | false/0 = not active
** client_status_date set to last day of each month 
*/
--   2022/JANUARY 
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-01-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-01-31');
-- 2022/FEBRUARY
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(false, '2022-02-28');
insert into clients(client_is_active, client_status_date)values(true, '2022-02-28');
-- 2022/MARCH
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-03-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-03-31');
-- 2022/APRIL
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-04-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-04-30');
-- 2022/MAY
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(false, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
insert into clients(client_is_active, client_status_date)values(true, '2022-05-31');
-- 2022/JUNE
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(true, '2022-06-30');
insert into clients(client_is_active, client_status_date)values(false, '2022-06-30');


-- CLIENT INTERACTIONS
/* type 1 = compliment | type 2 = complaint */
-- JANUARY
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-01-03');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-01-03');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-01-03');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-01-03');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-01-15');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-01-15');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-01-15');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-01-17');
-- FEBRUARY
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-02-22');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-02-18');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-02-01');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-02-01');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-02-01');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-02-04');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-02-27');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-02-27');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-02-27');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-02-27');
-- MARCH
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-03-30');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-03-11');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-03-12');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-03-15');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-03-27');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-03-16');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-03-16');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-03-16');
-- APRIL
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-04-12');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-04-12');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-04-12');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-04-12');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-04-12');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-04-12');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-04-15');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-04-15');
-- MAY
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-02');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-07');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-10');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-11');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-05-11');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-11');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-11');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-11');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-11');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-05-11');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-05-11');
-- JUNE
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-01');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-01');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-01');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-01');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-01');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-06-03');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-03');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-03');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-03');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-15');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-06-15');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-15');
insert into client_interactions(interaction_type, interaction_date)values(2, '2022-06-15');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-17');
insert into client_interactions(interaction_type, interaction_date)values(1, '2022-06-29');




