# Exercise 5: Gates Foundation Educational Grants
setwd('~/Desktop/INFO201/m8-dataframes/exercise-5')
# Read data into a variable called `grants` using the `read.csv` function
grants <- read.csv('data/gates_money.csv')

# Use the View function to look at your data
view.data <- View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org <- as.vector(grants$organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
average <- mean(spending)
print(average)
# What was the dollar amount of the largest grant?
largest.grant <- max(spending)
print(largest.grant)
# What was the dollar amount of the smallest grant?
smallest.grant <- min(spending)
print(smallest.grant)
# Which organization received the largest grant?
org.largest.grant <- org[spending == largest.grant]
print(org.largest.grant)
# Which organization received the smallest grant?
org.smallest.grant <- org[spending == smallest.grant]
print(org.smallest.grant)
# How many grants were awarded in 2010?
length(grants$start_year[grants$start_year == 2010])