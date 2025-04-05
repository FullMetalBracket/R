# In R, factors are used to represent categorical data (e.g., gender, colors, or categories in survey responses).
# Factors store categorical variables as levels rather than raw values, ie integers are mapped to the levels
# which makes them useful for statistical modeling and analysis.

# Memory Efficient: Factors store unique values as levels, reducing memory usage.
# Better for Statistical Analysis: Many R functions, like lm() (linear regression), treat factors differently from numeric data.
# Prevents Invalid Entries: Limits inputs to defined categories.

# -- CREATING A FACTOR
categories <- c("Male", "Female", "Male", "Female", "Male")
gender <- factor(categories)
print(gender)

# Output:
# [1] Male   Female Male   Female Male
# Levels: Female Male


# -- CHECKING UNIQUE LEVEL IN A FACTOR
levels(gender)
# Output: [1] "Female" "Male"

unclass(gender) # Returns the integer representation of the factor
# Output: [1] 2 1 2 1


# -- SETTING THE ORDER OF LEVELS
size <- factor(c("Small", "Large", "Medium", "Small", "Large"),
  levels = c("Small", "Medium", "Large"), ordered = TRUE
)
print(size)

# Output:
# [1] Small  Large  Medium Small  Large
# Levels: Small < Medium < Large


# -- CONVERTING FACTORS TO OTHER DATA TYPES

# convert to character vector
as.character(gender)
# Output: "Male" "Female" "Male" "Female" "Male"

# convert a factor to a Numeric Vector
as.numeric(gender)
# Output: 2 1 2 1 2  (Because "Female" = 1, "Male" = 2)

# To properly convert a factor to numbers, first convert it to character, then to numeric:
num_values <- factor(c("10", "20", "30"))
as.numeric(as.character(num_values))
# Output: 10 20 30


# -- CHECKING FACTOR PROPERTIES

# number of levels
nlevels(gender)
# Output: 2

is.factor(gender)
# Output: TRUE


# -- MODIFYING FACTOR LEVELS

# Add new level
levels(gender) <- c("Female", "Male", "Other")
print(gender)

# renaming factor levels
levels(gender) <- c("F", "M")
print(gender)
# Output: [1] M F M F M
# Levels: F M

# Dropping Unused Levels
gender <- factor(gender, levels = c("Male", "Female", "Other"))
gender <- droplevels(gender) # Removes "Other" since it's unused
levels(gender)
# Output: [1] "Female" "Male"


# -- FACTORS IN DATA FRAMES
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Gender = factor(c("Female", "Male", "Male"))
)

print(df)
# Output:
#     Name Gender
# 1  Alice Female
# 2    Bob   Male
# 3 Charlie   Male
