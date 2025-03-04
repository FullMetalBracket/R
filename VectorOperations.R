#character vector
assign('product', c('apple', 'cookie', 'lemon', 'pizza'))
product

# Numeric Vector
num_vec <- c(1, 2, 3.5, 4.7)
print(num_vec)  # Output: 1.0 2.0 3.5 4.7

# Character Vector
int_vec <- c(1L, 2L, 3L)  # 'L' specifies integers
print(int_vec)  # Output: 1 2 3

# Logical Vector
log_vec <- c(TRUE, FALSE, TRUE)
print(log_vec)  # Output: TRUE FALSE TRUE

#vector operations
price <- c(1.3,2,0.5,9)
full_price <- price
quantity <- c(2, 6, 3, 4)
discount_value <- c(0, 0.15, 0, 0.25)

total_basket_value <- (full_price - (full_price * discount_value)) * quantity
total_basket_value

#logical operations
prices_store_A <- full_price - (full_price * discount_value)
prices_store_A

prices_store_B <- c(1.3, 1.5, 0.75, 7)
prices_store_A == prices_store_B

#implicit coercion
full_price # double
full_price <- c('1.3', 2, 0.5, '9') # character
typeof(full_price)

# FALSE will become 0 (double)
discount_value <- c(FALSE, 0.15, FALSE, 0.25)
typeof(discount_value)
discount_value

#explicit coercion
as.numeric(full_price) #convert back to numeric from character
quantity <- c(2, 'six', 'three', 4)
as.numeric(quantity) 
