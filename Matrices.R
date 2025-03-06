# A matrix in R is a two-dimensional data structure where all elements must be of the same data type (numeric, character, or logical).
# Matrices are primarily used for mathematical operations such as linear algebra, transformations, and statistics.
# Useful in linear algebra and statistical modeling.

# Creating a 3x3 numeric matrix
mat <- matrix(1:9, nrow = 3, ncol = 3)
print(mat)
# Output:
#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9


# Filling a Matrix row wise
mat2 <- matrix(1:9, nrow = 3, byrow = TRUE)
print(mat2)
# Output:
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9


# Create a matrix using cbind
store_a <- c(7, 5, 3, 6, 9 ,4)
store_b <- c(2, 5, 6, 4, 8, 3)
store_quantity <- cbind(store_a, store_b)


# Naming Rows and Columns
rownames(mat) <- c("Row1", "Row2", "Row3")
colnames(mat) <- c("Col1", "Col2", "Col3")
print(mat)
# Output:
#      Col1 Col2 Col3
# Row1    1    4    7
# Row2    2    5    8
# Row3    3    6    9


# Accessing a specific element
mat[2, 3]  # 2nd row, 3rd column
# Output: 8


# Accessing a whole row
mat[2, ]  # Extract 2nd row
# Output: 2 5 8


# Accessing a whole column
mat[, 3]  # Extract 3rd column
# Output: 7 8 9


# Element-wise arithmetic
mat * 2  # Multiply each element by 2
# Output:
#      [,1] [,2] [,3]
# [1,]    2    8   14
# [2,]    4   10   16
# [3,]    6   12   18


# Matrix Addition / Subtraction / Multiplication
mat + mat
mat - mat
mat * mat


# Dot Product Multiplication
# first matrix must have the same number of cols as rows from second matrix
mat %*% mat


# Transpose a Matrix - swap rows and columms
t(mat)


# Check Matrix Properties
dim(mat)     # Get dimensions (rows, cols)
nrow(mat)    # Get number of rows
ncol(mat)    # Get number of columns
is.matrix(mat)  # Check if it's a matrix

# Convert Vector to a Matrix
vec <- 1:9
mat5 <- matrix(vec, nrow = 3)
print(mat5)

# Convert Data Frame to a Matrix 
df <- data.frame(A = 1:3, B = 4:6)
mat_df <- as.matrix(df)
print(mat_df)


# -- SPECIAL MATRICES --
# Matrix of Ones or Zeros
matrix(0, nrow = 3, ncol = 3)  # Zero matrix
matrix(1, nrow = 3, ncol = 3)  # Ones matrix

# Identity Matrix
diag(3)
# Output:
#      [,1] [,2] [,3]
# [1,]    1    0    0
# [2,]    0    1    0
# [3,]    0    0    1

# Diagonal Matrix
diag(c(1, 2, 3))
      [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    2    0
[3,]    0    0    3

