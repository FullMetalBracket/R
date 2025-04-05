# Creating a list
l <- list(TRUE, 123L, 2.34, "abc")
print(l)


quantity_store_A <- c(7, 5, 3, 6, 9, 4)
quantity_store_B <- c(2, 5, 6, 4, 8, 3)
quantity_store_C <- c(4, 5, 2, 1, 8, 3)
store_quantity <- rbind(quantity_store_A, quantity_store_B, quantity_store_C)
print(store_quantity)

quantity <- list(quantity_store_A, store_quantity)
quantity

# Using named lists
basket_details <- list(store = "Store A", product = c("apple", "cookie"))
basket_details
basket_details[[1]]
basket_details[["product"]]
basket_details$product
basket_details[[2]][[2]] # cookie
