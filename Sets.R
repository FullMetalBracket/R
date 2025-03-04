# Set is a collection of unique elements
# R does not have a built-in data structure but use vectors and functions to manipulate them

# Creating a Set (Unique Elements)
set1 <- unique(c(1, 2, 3, 3, 4, 5))
print(set1)  # Output: 1 2 3 4 5

# Union (union) Returns all unique elements from both sets.
set1 <- c(1, 2, 3)
set2 <- c(3, 4, 5)
print(union(set1, set2))  # Output: 1 2 3 4 5

# Intersection (intersect) Returns common elements between two sets.
intersect(set1, set2)  # Output: 3

#Set Difference (setdiff) Elements in one set but not the other.
setdiff(set1, set2)  # Output: 1 2
setdiff(set2, set1)  # Output: 4 5

#Checking Set Membership (%in%) Checks if elements exist in another set.
2 %in% set1  # Output: TRUE
4 %in% set1  # Output: FALSE

# Checking for Equality (setequal)
setequal(set1, c(3, 2, 1))  # Output: TRUE


#Simulating a Set Data Structure
my_set <- function(x) unique(x)

s <- my_set(c(1, 2, 3, 3, 4))
print(s)  # Output: 1 2 3 4
