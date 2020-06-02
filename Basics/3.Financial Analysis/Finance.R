# Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

revenue_1000 <- round(revenue/1000)
expenses_1000 <- round(expenses/1000)

# Profit per month is 
profit_per_month <- revenue - expenses
profit_per_month1000 <- round(profit_per_month/1000,0)
profit_per_month1000

# Profit after tax for each month (the tax rate is 30%)  
tax_per_month <- round(profit_per_month * 0.3, digit=2)
tax_per_month

profit_after_tax <- profit_per_month - tax_per_month
profit_after_tax1000 <- round(profit_after_tax/1000,0)
profit_after_tax1000

# Profit margin for each month
profit_margin <- round(profit_after_tax / revenue, 2) * 100
profit_margin

# Good months - where the profit after tax was greater than the mean for the year.
mean_profit <- mean(profit_after_tax)
mean_profit

good_months <- mean_profit < profit_after_tax
good_months

# Bad months - where the profit after tax was less than the mean for the year
bad_months <- mean_profit > profit_after_tax
bad_months

# The best month - where the profit after tax was max for the year
best_month <- max(profit_after_tax) == profit_after_tax
best_month

# The worst month - where the profit after tax was min for the year  
worst_month <- min(profit_after_tax) == profit_after_tax
worst_month

 
m <- rbind(
  revenue_1000,
  expenses_1000,
  profit_per_month1000,
  profit_after_tax1000,
  profit_margin,
  good_months,
  bad_months,
  best_month,
  worst_month
)
m
