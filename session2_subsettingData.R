###### Subsetting data
# Mastering R's subsetting operators is important for performing complex operations on any type of data.
# Let's start with vectors.
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x

### Accessing elements using indices.
x[1] # [n] : get the nth element 
x[c(2, 3)] # get multiple elements
x[2:4] 
# Vector numbering in R starts with 1. 

# We can also remove elements.
x[-1] # "-" : remove this element
x[-c(1, 3)] # also works with multiple elements
x[-1:3] # order of operations! 
x[-(1:3)]

### Subsetting by names
x["a"]
x[c("b","c")]
# How do we remove elements by name?
x[-"a"] 

### Subsetting by logical operations
TrueOrFalse <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
x[TrueOrFalse] # "TrueOrFalse" can be an operation which results in a logical vector!
# Removing by name
x[names(x) != "a"] # The operation within [ ] gives a logical vector. 
x[which(names(x) != "a")] # "which" converts logical values into indices. (Which ones are true.)
x[-which(names(x) == "a")]


# Removing based on multiple names?
x[names(x) %in% c("a", "c")] # %in% goes through each of the elements on its left, and ask if it occurs in the elements on it right. 
x[!names(x) %in% c("a", "c")]

# Other logical operations.
x[x > 6]

# Combining logical operations 
# & : AND
# | : OR
# ! : NOT
x[x > 6 & names(x) %in% c("c", "e")]

### Subsetting matrices
# Subsetting matrices works similarly as subsetting vectors, but on 2-dimensions. 
m<- matrix(1:15, nrow = 3, ncol = 5)
m[1:2, 2:3] # Two arguments to [ ] : indices of rows and columns, separated by ","
m[, 2:3] # leave one argument blank to get only columns or rows.
m[, 4] # Subsetting only one column/row results in a vector.
colnames(m) <- c("a", "b", "c", "d", "e")
m[, c("a", "c")]

### Subsetting lists
lst <- list(a = c("Learn", "R", "Today"),b = c(1:5), c = m)

lst[c(1,2)] # using [ ] again
class(lst[1]) # We get a list. 

# How do we get the elements?
lst[[1]] # Use [[ 
class(lst[[1]])

lst["a"] # You can also use names
lst[["a"]]
lst$a

# How to get the number 2 from lst? 

lst[["a"]][2]





