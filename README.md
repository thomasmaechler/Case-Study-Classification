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

- 2 - We used [Tableau](url) to get some graphs to better understand how the data is set. 

- 3 - After understanding better how the data looks like, we started to manipulate the data in python thru this process: 



  - 3.1 - We first clean the .

  - 3.2 - After creating dataframe, to gain deeper insight into it, we did some explorations, and plottings of correlation matrix. The last one is particularl  important for us as it is a signal of multicollinearity.


  - 3.3 - The following plots show numerical columns just to give some idea before preprocessing, after Normalizer() applied and after (name) applied, respectively. You can find the code for these in the link below.



  - 3.4 -


  
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
