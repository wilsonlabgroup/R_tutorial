###### Subsetting data
# Mastering R's subsetting operators is important for performing complex operations on any type of data.
# Let's start with vectors.
# Create a named numeric vector
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
x

### Accessing elements using indices.
x[1] # [n] : get the nth element 

# [] is a function meaning: get the nth element

x[c(3,5)] # get multiple elements
x[3:5] # : creates a sequence of numbers from left to right
# Vector numbering in R starts with 1. 

# What happens when we go beyond the length of the vector?
x[10]
x[0]

# We can also skip elements.
x[-1] # "-" : remove this element
x[-c(1, 3)] # also works with multiple elements
x[-1:3] # order of operations! 
x[-(1:3)]

################################################################
# Challenge 1
################################################################
x[c(2,3,4)]
x[2:4]
x[-c(1,5)]

################################################################
### Subsetting by names
x["a"]
x[c("b","c")]
# How do we remove elements by name?
x[-"a"] 

### Subsetting by logical operations
TrueOrFalse <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
x[TrueOrFalse] # "TrueOrFalse" can be an operation which results in a logical vector!

x[x > 6]

# step by step what actually happens
x > 6
x[x < 5]

# You can put any operations within [] 
# Subsetting and skipping by name
x[names(x) == "a"] # The operation within [ ] gives a logical vector. 
x[names(x) == "a"]

x[names(x) != "a"] 

# TIP: "which" converts logical values into indices. (Which ones are true.)
x[which(names(x) != "a")] 
x[-which(names(x) == "a")]


# Subsetting or skipping based on multiple names?
# How to get the elements named "a" or "c"?

x[names(x) == c("a", "c")]





x[names(x) %in% c("a", "c")] # %in% goes through each of the elements on its left, and ask if it occurs in the elements on it right. 
x[!names(x) %in% c("a", "c")]


# Combining logical operations 
# & : AND
# | : OR
# ! : NOT

# get elements in x that are greater than 4 and less than 7
x > 4 & x < 7


x[x > 4 & x < 7]
################################################################
# Challenge 2
################################################################

x > 6
names(x) %in% c("c", "e")
x > 6 & names(x) %in% c("c", "e")
x[x > 6 & names(x) %in% c("c", "e")]

# NOTE: in R, && and || instead of & and | give different results.
x < 6 || names(x) %in% c("c", "e")


### Handling special values 
# What about missing values?
y <- c("gene1" = 10, "gene2" = 20, "gene3" = 40, "gene4" = NA)
# Extract values that are not NA





y[!is.na(y)]

### Subsetting factors 
# Works the same way as vector subsetting 
f <- factor(c("a", "a", "b", "c", "c", "d"))
f[f == "a"]
f[!f %in% c("b", "c")]
# subsetting will not change factor levels 


### Subsetting matrices
# Subsetting matrices works similarly as subsetting vectors, but on 2-dimensions. 
m <- matrix(1:15, nrow = 3, ncol = 5)
m
m[1:2, 2:3] # Two arguments to [ ] : indices of rows and columns, separated by ","
m[, 2:3] # leave one argument blank to get only columns or rows.
m[, 4] # Subsetting only one column/row results in a vector.

# if we want to keep the output as a matrix, we will need to use:
m[, 4, drop = FALSE]

# TIP: What happens when you subset a matrix using one argument?
m[10]

# populate the matrix by row
m <- matrix(1:15, nrow = 3, ncol = 5, byrow = T)
m[10]

################################################################
# Challenge 3
################################################################

2*(1:20)
seq(2, 40, by = 2)

mymatrix <- matrix(seq(2, 40, by = 2), nrow = 4, ncol = 5, byrow = TRUE)
mymatrix[3, c(2,4,5)]

# You can also subset matrix by row names and column names
rownames(m) <- c("x", "y", "z")
colnames(m) <- c("a", "b", "c", "d", "e")
m
m["x", c("a", "c")]



### Subsetting lists
mylist <- list(a = c("Learn", "R", "Today"), b = seq(2, 10, by = 1.5), c = m)
mylist

mylist[[2]]
mylist$b

mylist[[2]][4]

mynumbers <- mylist[[2]]
mynumbers

mynumbers[mynumbers == 6.5]

mylist$b[mylist$b > 6.5]

mylist[c(1,2)] # using [ ] again
class(mylist[c(1,2)]) # We get a list. 

# How do we get the elements?
mylist[[1]] # Use [[ 
class(mylist[[1]])

mylist["a"] # You can also use names
mylist[["a"]]

# Use the $ function to extract by name 
mylist$a
names(mylist)
################################################################
# Challenge 4
################################################################







