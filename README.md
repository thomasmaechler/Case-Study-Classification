# Case-Study-Classification
Mid-Project

by Ümmühan Demir and Thomas Maechler November 2021

We want to be able to predict which client will accept an offer or not using bank database.📈💰💸

![Picture](banking-project.jpeg)




Table of Contents

Data Question & Methodology

Next Steps

Useful Links



Data Question & Methodology

This week we are working on the Bank database mainly to answer the question: which client will accept an offer or not ? 
The answer of this question would be binary, either 1(yes, it will be accepted) or 0(no, it will be not accepted). 
To get that end logistic regression will be used. My methodology to approach this question is as following so far(will be updated when next steps are processed one by one):


1 - We tried to visualize how the data looks like in SQL Workbench.

2 - We used Tableau to get some graphs to better understand how the data is set. 

3 - After understanding better how the data looks like, we started to manipulate the data in python thru this process: 


  3.1 - We tried to query the most relevant data out of Sakila on MySql workbench.

  3.2 - After creating dataframe, to gain deeper insight into it I did some explorations, and plottings of correlation matrix. The last one is particularl  important for us as it is a signal of multicollinearity.

  3.3 - The following plots show numerical columns just to give some idea before preprocessing, after Normalizer() applied and after (name) applied, respectively. You can find the code for these in the link below.

  3.4 - 


  

"Next I created the target column by querying whether the film is rented last month or not. This can be done on mySql workbench or by defining a function in Python.
After concatanating the now-all-numerical columns, I applied logistic regression to that data.
Then I divided the data into train and test like 70-30 percentages.
After I get 79% accuracy score for that model, because it is too good for a made-up limited data, I suspected about data imbalance.
Examining confusion matrix showed me that actually my model didn't do any good job for predicting.
To deal with this problem, some sampling methods were applied."



Next Steps


Combination of sampling methods will be applied.
The steps above will be applied for a different combination of columns.



Useful Links & Notes


I added the sakila-db for whom want to dive into it.
This link can be used to see the lab questions as a guideline for our purpose.
This is my jupyter notebook for detailed explanations and the code itself.
