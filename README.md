# Case-Study-Classification

Mid-Bootcamp-Project

by Ümmühan Demir and Thomas Maechler November 2021

We want to be able to predict which client will **accept** credit card offers. 📈💰💸

![Picture](banking-project.jpeg)





## Table of Contents


- [Project Brief](https://github.com/thomasmaechler/Case-Study-Classification#Project-Brief)
- [Data](https://github.com/thomasmaechler/Case-Study-Classification#Data)
- [Process](https://github.com/thomasmaechler/Case-Study-Classification#Process)
- [Tools](https://github.com/thomasmaechler/Case-Study-Classification#Tools)
- [Next Step](https://github.com/thomasmaechler/Case-Study-Classification#Tools)
- [Key Take Aways](https://github.com/thomasmaechler/Case-Study-Classification#Key-Take-Aways)



## Project Brief


**Scenario**: We are working as a risk analyst with a bank. Apart from the other banking and loan services, the bank also provides credit card services that are a very important source of revenue for the bank. The bank wants to understand the demographics and other characteristics of its customers that accept a credit card offer and that do not accept a credit card.


**Objective**: Build a model that will provide insight into why some bank customers accept credit card offers. There are also other potential areas of opportunities that the bank wants to understand from the data.



## Data 


**The data set**: 18,000 current bank customers in the study. 

**Features**: Customer Number | Offer Accepted | Mailer Type | Income Level | Bank Accounts Open | Overdraft Protection | Credit Rating  | Credit Cards Held | Homes Owned | Household Size | Own Your Home | Average Balance | Balance | Q1 Balance | Q2 Balance | Q3 Balance | Q4 Balance



## Process: 


- 1 - We tried to visualize how the data looks like in [SQL Workbench](https://github.com/thomasmaechler/Case-Study-Classification/blob/main/SQL/mid_bootcamp_project.sql).

- 2 - We used [Tableau](url) to get some graphs to better understand how the data is set. We noticed that we had the imbalance data problem.

- 3 - After understanding better how the data looks like, we started to manipulate the data in Python through this process: 

  - After we read our data in **Python**, as we had already seen in **Tableau**, it was an imbalanced data so it was noted that we had to be careful about minority class.
  - Then started to exploratory data analysis (EDA). 
  - First standardized column names were obtained to make coding easier later.
  - We removed nulls because they are not a lot and most of them are from majority class.
  - We removed 'customer number' as it is quite irrelevant. 
  - We converted some numerical columns into categorical since they are too discrete in a restricted range.
  - We checked correlations between numerical columns, and noticed that they are highly correlated. Because of that, we also checked out variation inflation factors(VIFs) for those columns to go further. 
  - Then we decided to remove some of them to keep VIFs in acceptable range (1-5).
  - We tried a lot of different combination of categorical columns, at the end decided to remove 'no_of_bank_accounts_open','q2_balance', 'q3_balance','q4_balance','no_of_homes_owned','no_of_credit_cards_held','household_size'.
  - When we were on dealing the outliers part, a dilemma came out. If we removed the outliers, it would diminish our minority class even more. 
  - Because of that we created two jupyter notebooks, with and without outliers, to see the effect of them.
  - As we suspected, we get a bit worse results without outliers.



  
## Tools 


- **Database**: MySQLWorkbench 

- **Vizualizations**: Tableau / Seaborn / matplotlib

- **Code**: Jupyter Notebook


## Next Steps


- We could have add some data or features to improve the model
- Maybe using different other model 



## Useful Links and Notes

I added the Bank database for whom want to dive into it.

[PDF tableau](url)

[SQL link](url)

This is our [jupyter notebook](url) for detailed explanations and the code itself.
