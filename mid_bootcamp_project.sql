# SQL Questions - Classification


# 1. Create a database called `credit_card_classification`.
#drop database if exists credit_card_classification ;
#create database credit_card_classification;

# 2. Create a table `credit_card_data` with the same columns as given in the csv file. 
# Please make sure you use the correct data types for each of the columns.
#use credit_card_classification;
#drop table if exists credit_card_classification.credit_card_data;


#create table credit_card_data(
#credit_card_data_id int auto_increment not null,
#customer_number int default null, 
#offer_accepted varchar(5) default null,
#reward varchar(20),
#mailer_type varchar(10),
#income_level varchar(10),
#no_of_account_open int,
#overdraft_protection varchar(10),
#credit_card_rating varchar(10),
#no_of_credit_cards_held int,
#homes_owned int,
#household_size int,
#own_your_home varchar(10),
#average_balance float default null,
#q1_balance float default null,
#q2_balance float default null,
#q3_balance float default null,
#q4_balance float default null, 
#primary key (credit_card_data_id)
#);

# 3. Import the data from the csv file into the table. 
# Before you import the data into the empty table, make sure that you have deleted the headers from the csv file. 
# To not modify the original data, if you want you can create a copy of the csv file as well. 
# Note you might have to use the following queries to give permission to SQL to import data from csv files in bulk:

#SHOW VARIABLES LIKE 'local_infile'; -- This query would show you the status of the variable ‘local_infile’. 
                                    -- If it is off, use the next command, otherwise you should be good to go
#SET GLOBAL local_infile = 1;


#LOAD DATA LOCAL INFILE 'creditcardmarketing.csv' 
#INTO TABLE credit_card_data             
#FIELDS TERMINATED BY ',' 
#ENCLOSED BY '"'
#LINES TERMINATED BY '\n';


# 4.  Select all the data from table `credit_card_data` to check if the data was imported correctly.
select * from credit_card_data;


# 5.  Use the _alter table_ command to drop the column `q4_balance` from the database, as we would not use it in the analysis with SQL. Select all the data from the table to verify if the command worked. Limit your returned results to 10.
alter table credit_card_data 
drop q4_balance;

select * from credit_card_data
limit 10;

# 6.  Use sql query to find how many rows of data you have.
select count(customer_number) from credit_card_data;

# 7.  Now we will try to find the unique values in some of the categorical columns:

    # - What are the unique values in the column `Offer_accepted`?
    select count(distinct offer_accepted) from credit_card_data;
    
    # - What are the unique values in the column `Reward`?
    select count(distinct reward) from credit_card_data;
    
    # - What are the unique values in the column `mailer_type`?
	select count(distinct mailer_type) from credit_card_data;
    
    # - What are the unique values in the column `credit_cards_held`?
	select count(distinct no_of_credit_cards_held) from credit_card_data;

    
    # - What are the unique values in the column `household_size`?
	select count(distinct household_size) from credit_card_data;


# 8. Arrange the data in a decreasing order by the `average_balance` of the house. Return only the `customer_number` of the top 10 customers with the highest `average_balances` in your data.
select customer_number from credit_card_data
order by average_balance desc
limit 10;


# 9.  What is the average balance of all the customers in your data?
select avg(average_balance) from credit_card_data;



# 10. In this exercise we will use simple group by to check the properties of some of the categorical variables in our data. Note wherever `average_balance` is asked, please take the average of the column `average_balance`: <!-- 🚨🚨🚨 @himanshu - can we rephrase this? -->

    # - What is the average balance of the customers grouped by `Income Level`? 
    # The returned result should have only two columns, income level and `Average balance` of the customers. 
    # Use an alias to change the name of the second column.
  
SELECT income_level, round(avg (average_balance),2) as 'Average balance'
  FROM credit_card_data
  GROUP BY income_level;
    
    
    # - What is the average balance of the customers grouped by `number_of_bank_accounts_open`? 
    # The returned result should have only two columns, `number_of_bank_accounts_open` and `Average balance` of 
    # the customers. Use an alias to change the name of the second column.
    
    SELECT no_of_account_open, round(avg (average_balance),2) as 'Average balance'
    FROM credit_card_data
    GROUP BY no_of_account_open;
    
    
    
    # - What is the average number of credit cards held by customers for each of the credit card ratings? 
    # The returned result should have only two columns, rating and average number of credit cards held. 
    # Use an alias to change the name of the second column.
    
	SELECT credit_card_rating, round(avg (no_of_credit_cards_held),2) as 'avg number of credit cards held'
    FROM credit_card_data
    GROUP BY credit_card_rating;
    
 
    # - Is there any correlation between the columns `credit_cards_held` and `number_of_bank_accounts_open`? 
    # You can analyse this by grouping the data by one of the variables and then aggregating the results of 
    # the other column. Visually check if there is a positive correlation or negative correlation or no correlation
    # between the variables.
    
    SELECT no_of_account_open, avg (no_of_credit_cards_held) as 'avg number of credit cards held'
    FROM credit_card_data
    GROUP BY no_of_account_open;

# 11. Your managers are only interested in the customers with the following properties:
    # - Credit rating medium or high
    # - Credit cards held 2 or less
    # - Owns their own home
    # - Household size 3 or more
select customer_number from credit_card_data
where credit_card_rating in ('medium','high') 
and no_of_credit_cards_held <= 2
and own_your_home = 'yes'
and  household_size >=3;
    
    

# For the rest of the things, they are not too concerned. Write a simple query to find what are the options available for them? Can you filter the customers who accepted the offers here?

# 12. Your managers want to find out the list of customers whose average balance is less than the average balance of all the customers in the database. Write a query to show them the list of such customers. You might need to use a subquery for this problem.
select customer_number from credit_card_data
where average_balance < (select avg(average_balance) from credit_card_data)
order by average_balance desc;

# 13. Since this is something that the senior management is regularly interested in, create a view of the same query.
drop view if exists less_average_balance;
create view less_average_balance as 
select * from credit_card_data
where average_balance < (select avg(average_balance) from credit_card_data)
order by average_balance desc;


# 14. What is the number of people who accepted the offer vs number of people who did not?
select 
distinct(select count(customer_number) from credit_card_data where offer_accepted = 'yes') as accepted_offers,
(select count(customer_number) from credit_card_data where offer_accepted = 'no') as rejected_offers 
from credit_card_data;


# 15. Your managers are more interested in customers with a credit rating of high or medium. What is the difference in average balances of the customers with high credit card rating and low credit card rating?
SELECT credit_card_rating, round(avg (average_balance),2) as 'Average balance'
  FROM credit_card_data
  WHERE credit_card_rating = 'High' or credit_card_rating  = 'Low'
  GROUP BY credit_card_rating;
  
  Select 
  distinct round((select avg(average_balance) from credit_card_data 
  where credit_card_rating = 'High' 
  group by credit_card_rating
  ) -
  (select avg(average_balance) from credit_card_data 
  where credit_card_rating = 'Low' 
  group by credit_card_rating ), 2)  
  from credit_card_data ;

# 16. In the database, which all types of communication (`mailer_type`) were used and with how many customers?
select mailer_type, count(customer_number) from credit_card_data
group by mailer_type;

# 17. Provide the details of the customer that is the 11th least `Q1_balance` in your database.
select q1_balance from credit_card_data
where q1_balance =  (select q1_balance from (select q1_balance from credit_card_data  order by q1_balance limit 11)s1 order by q1_balance desc limit 1)
group by q1_balance;

#select q1_balance,customer_number from credit_card_data
#order by q1_balance ASC 
#limit 11;


