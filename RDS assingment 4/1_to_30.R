#1. Create a list containing a number, a string, and a logical value. 

my_list <- list(42, "R for Data Science", TRUE)
print(my_list)

#2. How do you find the length of a list named my_list? 

length_my_list <- length(my_list)
print(length_my_list)

#3. Extract the first element of a list using single brackets [ ].

first_element <- my_list[1]
print(first_element)

# 4. Extract the second element from a list directly using double brackets [[ ]].

second_element <- my_list[[2]]
print(second_element)

#5. Name the elements of a list explicitly.

my_list_named <- list(number = 42, text = "R for Data Science", flag = TRUE)
print(my_list_named)

#6. Access a named element of a list using the $ operator.

text_value <- my_list_named$text
print(text_value)

#7. Create a simple data frame with two columns: Name and Age. 

df <- data.frame(
  Name = c("Alice", "Bob"),
  Age = c(25, 30),
  stringsAsFactors = FALSE  
)
print(df)

#8. Access the age of the second person in a data frame. 

second_age <- df$Age[2] 
# Alternatively:
second_age_alt <- df[2, "Age"]
print(second_age)
print(second_age_alt)

#9. Find the number of rows in a given data frame. 

num_rows <- nrow(df)
print(num_rows)

#10. Add a new row to an existing data frame. 

new_row <- data.frame(Name = "Charlie", Age = 22, stringsAsFactors = FALSE)
df <- rbind(df, new_row)
print(df)

#11. Create a nested list where one element is itself a list containing a numeric vector and a character vector. 

nested_list <- list(
  sub_list = list(
    numbers = c(1, 2, 3),
    letters = c("a", "b", "c")
  ),
  description = "Nested List Example"
)
print(nested_list)

#12. Extract the second element from the nested list created above. 

# Extract the second element from the inner list
second_inner <- nested_list$sub_list[[2]]
# Alternatively:
second_inner_alt <- nested_list[[1]][[2]]
print(second_inner)

#13. Write code to convert a character column in a data frame to a factor.

df$Name <- as.factor(df$Name)
str(df)

#14. Create a logical subset of a data frame to include only rows where age > 20. 

subset_df <- df[df$Age > 20, ]
print(subset_df)

#15. Add a new column to a data frame representing the age in months.

df$Age_months <- df$Age * 12
print(df)

#16. Demonstrate the difference between single bracket [ ] slicing and double bracket [[ ]] referencing with a suitable example.

example_list <- list(first = 10, second = "hello", third = TRUE)

# Single bracket returns a list
elem_single <- example_list[1]  
print(elem_single)  
print(class(elem_single))  # "list"

# Double bracket returns the actual element
elem_double <- example_list[[1]]  
print(elem_double)  
print(class(elem_double))

#17. How would you extract multiple rows and columns simultaneously from a data frame?

subset_multiple <- df[1:2, c("Name", "Age")]
print(subset_multiple)

#18. Add a new column using the CBIND() function to a data frame.

salary <- c(50000, 60000, 45000) 
df <- cbind(df, Salary = salary)
print(df)

#19. How do you subset a data frame to exclude a particular column?

df_no_salary <- df[, !(names(df) %in% "Salary")]
print(df_no_salary)

#20. Extract all rows from a data frame where a character column has a specific value. 

alice_df <- df[df$Name == "Alice", ]
print(alice_df)

#21. Write a function to merge two lists into one nested list without losing the original list structure. 

merge_lists <- function(list1, list2) {
  return(list(list1 = list1, list2 = list2))
}

# Example usage:
list_a <- list(a = 1, b = 2)
list_b <- list(x = "hello", y = "world")
merged <- merge_lists(list_a, list_b)
print(merged)

#22. Create a data frame that recycles shorter vectors. Demonstrate and explain the behavior. 

df_recycle <- data.frame(
  Name = c("Alice", "Bob", "Carol", "Dave"),
  Age  = c(25, 30), 
  stringsAsFactors = FALSE
)
print(df_recycle)

#23. Write R code to create a data frame from a list containing multiple vectors of unequal length, ensuring no data recycling occurs.

list_data <- list(
  Name = c("Alice", "Bob", "Carol"),
  Age  = c(25, 30)  # shorter than Name
)

max_len <- max(sapply(list_data, length))

list_data_equal <- lapply(list_data, function(x) {
  length(x) <- max_len  
  return(x)
})

df_no_recycle <- as.data.frame(list_data_equal, stringsAsFactors = FALSE)
print(df_no_recycle)

#24. Create a list containing a matrix, a logical vector, and a string. Then, extract the second element of the logical vector.

complex_list <- list(
  my_matrix  = matrix(1:9, nrow = 3),
  my_logical = c(TRUE, FALSE, TRUE),
  my_string  = "Complex List Example"
)

second_logical <- complex_list$my_logical[2]
print(second_logical)

#25. Write R code that dynamically adds named elements to an existing list based on user input. 

dynamic_list <- list(a = 1, b = 2)

new_name <- "c"        
new_value <- 3          

# Dynamically add the new element
dynamic_list[[new_name]] <- new_value

print(dynamic_list)

#26. Create a function that accepts a data frame and returns a subset with only numeric columns. 

get_numeric_columns <- function(df) {
  numeric_df <- df[sapply(df, is.numeric)]
  return(numeric_df)
}

# Example usage:
numeric_subset <- get_numeric_columns(df)
print(numeric_subset)

#27. Create a data frame and write code to reorder its columns alphabetically by column names. 

df_reorder <- data.frame(
  Age = c(25, 30, 22),
  Name = c("Alice", "Bob", "Charlie"),
  Salary = c(50000, 60000, 45000),
  stringsAsFactors = FALSE
)

df_reorder <- df_reorder[ , order(names(df_reorder))]
print(df_reorder)

#28. Demonstrate how to subset a nested list to extract a deeply nested numeric value.

# Create a deeply nested list.
deep_list <- list(
  level1 = list(
    level2 = list(
      target_value = 99
    )
  )
)

# Extract the deeply nested numeric value:
extracted_value <- deep_list$level1$level2$target_value
print(extracted_value)

#29. Write a function that takes a data frame as input and adds a factor-type column derived from an existing numeric column. 

add_numeric_factor <- function(df, numeric_col) {
  new_col_name <- paste0(numeric_col, "_factor")
  df[[new_col_name]] <- as.factor(df[[numeric_col]])
  return(df)
}

df <- add_numeric_factor(df, "Age")
str(df) 

#30. Using logical vectors, subset a data frame to extract rows based on multiple conditions across different columns

subset_multi <- df[df$Age > 20 & df$Salary < 60000, ]
print(subset_multi)
