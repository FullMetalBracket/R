# two dimensional arrays are actually matrices
quantity_store_A <- c(7, 5, 3, 6, 9, 4)
quantity_store_B <- c(2, 5, 6, 4, 8, 3)
quantity_store_C <- c(4, 5, 2, 1, 8, 3)
store_quantity <- rbind(quantity_store_A, quantity_store_B, quantity_store_C)
print(store_quantity)
quantity_day_1 <- store_quantity
quantity_day_2 <- store_quantity * 2

# combine day1 and day2 into single vector
# dim = number of dimensions
# 3 = number of rows (stores)
# 6 = number of columns (products)
# 2 = number of layers (days)
shopping_data <- array(c(quantity_day_1, quantity_day_2), dim =c(3,6,2))
shopping_data

#array attributes
length(shopping_data)
typeof(shopping_data)
dim(shopping_data)

#select all of second layer
shopping_data[,,1]

# select all items except 2nd row from first column of layer 2
shopping_data[-2, 1, 2]
