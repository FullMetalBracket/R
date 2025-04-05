# Data Types
products <- "apple"
print(products)

n <- 1.23 # numeric
typeof(n) # double

i <- 123L # L is used to denote integer
typeof(i)

d <- as.Date("2021-01-01")

assign("products", "orange") # use assignment function
products

# assigning in the following way is not recommended
"apple" -> products
products

"apple" -> products
products <- "blueberry"
products

# operators
2 > 5 | 5 > 1

# Data Types
quantity <- 2
price <- 2.3

typeof(quantity)
is.numeric(quantity)

# Booleans
discount <- FALSE
discount <- F
