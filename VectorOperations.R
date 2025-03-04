# Vectors are the most basic data structure in R.
# They contain only one type of data (numeric, character, logical, etc.).
# Operations are performed element-wise.


# -- TYPES OF VECTORS --

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
print(log_vec)  # Output: TRUE FALSE TRUE5

# Complex Vectors
comp_vec <- c(2+3i, 4-1i)
print(comp_vec)  # Output: 2+3i 4-1i


# -- CREATING VECTORS --

# The most common way to create a vector is using the c() function:
vec <- c(10, 20, 30)
print(vec)  # Output: 10 20 30

# Using seq() (Sequence of numbers)
seq_vec <- seq(1, 10, by = 2)  # Sequence from 1 to 10 with step 2
print(seq_vec)  # Output: 1 3 5 7 9

# Using rep() (Repeating elements)
rep_vec <- rep(5, times = 4)  # Repeat 5 four times
print(rep_vec)  # Output: 5 5 5 5


# -- INDEXING VECTORS --

#R starts indexing from 1

vec <- c(10, 20, 30, 40, 50)

# Access the 2nd element
print(vec[2])  # Output: 20

# Access multiple elements
print(vec[c(1, 3, 5)])  # Output: 10 30 50

# Negative index to exclude an element
print(vec[-2])  # Excludes 2nd element: Output: 10 30 40 50

# Access with a logical condition
print(vec[vec > 25])  # Output: 30 40 50


# -- VECTOR OPERATIONS --

# Vectors support element-wise operations
a <- c(1, 2, 3)
b <- c(4, 5, 6)

print(a + b)  # Output: 5 7 9
print(a * b)  # Output: 4 10 18
print(a^2)    # Output: 1 4 9

# -- VECTOR RECYCLING --

# If vectors are of different lengths, R recycles the shorter one.
x <- c(1, 2)
y <- c(10, 20, 30, 40)

print(x + y)  # Output: 11 22 31 42  (1+10, 2+20, 1+30, 2+40)

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


# -- VECTOR FUNCTIONS --

# Finding Length
length(c(1, 2, 3, 4))  # Output: 4

# Sorting a Vector
sort(c(5, 2, 8, 1))  # Output: 1 2 5 8

# Finding Unique Elements
unique(c(1, 2, 2, 3, 3, 4))  # Output: 1 2 3 4

# Checking if an Element Exists
5 %in% c(1, 2, 3, 4, 5)  # Output: TRUE


# -- VECTOR TYPE CONVERSION --

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


# -- NAMED VECTORS --

scores <- c(Alice = 90, Bob = 85, Carol = 95)
print(scores)  
# Output: Alice Bob Carol
#         90    85   95

print(scores["Alice"])  # Output: 90

