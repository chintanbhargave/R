PROBLEM STATEMENT 

Scenario: You are a Data Scientist working for a consulting firm. One of your colleagues from the Auditing department has asked you to help them access the financial statement of the organisation x.

You have been supplied with two vectors of data : Monthly revenue and monthly expenses for the financial year in question. Your task is to calculate the following financial metrices. 

- Profit for each month
- Profit after tax for each month (the tax rate is 30%)  
- Profit margin for each month - equals to profit after tax divided by revenue
- Good months - where the profit after tax was greater than the mean for the year.
- Bad months - where the profit after tax was less thean the mean for the year
- The best month - where the profit after tax was max for the year
- The worst month - where the profit after tax was min for the year  

ADDITIONAL GUIDELINES :

All results need to be presented as vectors.

Results for dollar values need to be calculated with $0.01 precision, but need to be presented in Units of $1000  with no decimal points.

Results for the profit marign ratio need to be presented in units of % with no decimal points.

Note: Your colleague has waned you that it is okay for tax for any given month to be negative (in accounting terms, negative tax translates into a deferred tax asset). 