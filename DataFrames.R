# Dataframes are like spreadsheets and have attributes
# Columns are called variables and rows observations
# Columns are all the same length and are named vectors

# Creating data frames
product <- c("apple", "cookie", "phone", "lemon", "laptop", "pizza", "apple", "cookie", "phone", "lemon", "laptop", "pizza")
category <- c("groceries", "groceries", "electronics", "groceries", "electronics", "groceries", "groceries", "groceries", "electronics", "groceries", "electronics", "groceries")
price <- c(1.3, 2, 500, 0.5, 1000, 9, 1.3, 2, 650, 0.5, 950, 9)
quantity <- c(4, 6, 1, 3, 1, 9, 4, 6, 1, 3, 1, 9)
discount <- c(FALSE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE)
discount_value <- c(0, 0.25, 0.10, 0.15, 0, 0, 0, 0.25, 0, 0.15, 0, 0)

shopping_data <- data.frame(product, category, price, quantity, discount, discount_value,
    budget = c(200, 150, 3000, 240, 3000, 170, 350, 320, 740, 160, 290, 440)
)
View(shopping_data)

# changing the vector names
dataset <- data.frame(
    x = product, category, price, quantity, discount, discount_value,
    budget = c(200, 150, 3000, 240, 3000, 170, 350, 320, 740, 160, 290, 440)
)
dataset

# looking at the data
names(shopping_data)
dim(shopping_data) # dimensions of dataframe
head(shopping_data)
tail(shopping_data)
head(shopping_data, n = 2)
tail(shopping_data, n = 2)
str(shopping_data)

# keeping product and category as character and not as a factor
shopping_data <- data.frame(product, category, price, quantity, discount, discount_value,
    budget = c(200, 150, 3000, 240, 3000, 170, 350, 320, 740, 160, 290, 440),
    stringsAsFactors = FALSE
)
str(shopping_data)
typeof(shopping_data)
class(shopping_data)
summary(shopping_data)

# -------------------------------------------------------
df <- data.frame(
    Name = c("Alice", "Bob", "Charlie"),
    Age = c(25, 30, 35),
    City = c("New York", "San Francisco", "Los Angeles")
)
df

# ---- Output ----
# Name Age City
# Alice 25 New York
# Bob 30 San Francisco
# Charlie 35 Los Angeles

# Accessing elements of a data frame
df$Name
df[["Name"]] # Alice Bob Charlie

df[1, 2] # 25
df[[1, ]] # Alice 25 New York # returns all columns
df[[, 2]] # Alice Bob Charlie # returns the first column

# Subsetting data frames - allows to slice and dice data frames in a flexible way
df[df$Age > 30, ] # Returns rows where age is greater than 30

df[c(2, 4), ] # Returns rows 2 and 4
df[c(2, 4), 1] # Bob Charlie    # Returns rows 2 and 4 and column 1
df[c(2, 3), c(1, 3)] # Bob San Francisco # Charlie Los Angeles
df[df$Name %in% c("Cat", "Cow"), ]
