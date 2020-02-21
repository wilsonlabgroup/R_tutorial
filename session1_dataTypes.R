# Understanding data types and structures and how to operate on those.

### R has 6 atomic data types [a set of values having pre-defined characteristics]
# use typeof() or class() to see what kind of object is it.
typeof("a") # character
class('2') # character
class(2.5) # numeric
class(2L) # integer ; the L tells R to store this as an integer
class(TRUE) # logical 
class(1+2i) # complex 

# TRUE and FALSE can be represented as T and F, but it is recommended to use the full names. 
F <- 5
class(F)

##### the number 1 represented in multiple ways!
one.numeric <- 1
one.integer <- 1L
one.logical <- TRUE
one.complex <- 1+0i
one.charact <- "1"

##### Logical operators with different data types
one.numeric == 1 #TRUE
one.integer == 1 #TRUE
one.complex == 1 #TRUE
one.logical == 1 #TRUE

one.charact
one.charact == 1 #TRUE (Depends on which language!)
"TRUE" == TRUE   #TRUE (Depends on which language!)
"1" == TRUE      #FALSE !!!

##### More on logical comparisons with strings:
1== 1 #TRUE
"1"==" 1"   #FALSE -- whitespace matters!
"A" == "a"  #FALSE -- case matters!

### Greater than/ less than is determined by alphabetical order
"B" > "A"  #TRUE
"A" > "a"  #TRUE
"A" > "b"  #FALSE
"A" > "1"  #TRUE
"A" >  1   #TRUE (Depends on which language!)

### Data types can affect results!
 2  >  12  #FALSE
"2" > "12" #TRUE
 2  > "12" #TRUE
"2" >  12  #TRUE

### Convert between data types: coercion
x <- "1"
x + 1
class(x)
class(as.numeric(x)) ### as.xxxx coerces data types

as.numeric(x) + 1

as.character(1)
as.logical(1)
as.complex(1)
as.integer(1)

### Not all coercions are possible:
as.numeric("one") #warning!
as.logical("1")   #NA

### Multiple coercions can be chained together:
as.logical(as.numeric("1"))


##### R has many data structures
### Atomic vectors [a sequence of values]
# The most basic data structures in r. 
logical(5) # default vector is logical 
character(5) # Create an empty character vector
numeric(10)

# Create by specificying their content. R will guess the types. 
x <- c(1, 2, 3, 4, 5)
x
class(x) # integer

y <- c(TRUE, FALSE, TRUE, FALSE)
class(y) # logical

z <- c("Learn", "R")
class(z) # character

# Examing vectors. 
length(z)
str(z) # show content of an object. Can also be used to examine complicated objects.
large <- 1:10000
large
head(large)
tail(large)

# Adding elements.
z <- c(z, "Today")
z

# Vectors can be "named"
x
names(x) <- c("a","b","c","d","e")
x

# Sequence of numbers
x <- c(1:5) # / 1:5
seq(5)
?seq
seq(1, 10, by = 2) # seq(10,2,-3)

# Mixing data types in vectors:
z
class(z) #character
x
class(x) #numeric

mix <- c(x, z)
mix
class(mix) #When different data types are combined into the same vector, they are forced to the "Largest common denominator". 

#Vectors can be coerced just like single values
x
as.character(x)
class(as.character(x))

y <- c("5", "6", "7")
as.numeric(y)

#Coercion can cause problems with inappropriate values
mix
convert.mix <- as.numeric(mix)
convert.mix

# Missing data and special values.
NA   # missing value
NULL # nothing there!
1/0  # Inf: infinity
0/0  # NaN: Not a Number 

is.null(NULL) #TRUE
is.na(NA) #TRUE
is.na(NaN) #TRUE
is.finite(Inf) #FALSE

convert.mix
is.na(convert.mix) # is.na() indicates if the elements of the vectors represent missing data
anyNA(convert.mix) # if the vector contains any missing data

### Factors. 
# Factors are important in R. Factors look like character vectors but are used to represent categorical information. 
colors <- c("red", "blue", "blue", "purple", "red")
class(colors)
colors <- as.factor(colors)
class(colors)

# Factors have "levels"
colors
levels(colors)
str(colors)

# Levels of factors can be represented by numbers. Be very careful when converting factors and  numberic values. 
some_numbers <- c(1, 2, 6, 9, 10, 2, 6)
class(some_numbers)
as.factor(some_numbers)
as.numeric(as.factor(some_numbers))
as.numeric(as.character(as.factor(some_numbers)))

####### BREAK ###########

### Matrix
# An atomic vectors with dimensions: only one data type is allowed. 
m <- matrix(nrow = 2, ncol = 3)
m
dim(m) # dimension of the matrix

m <- matrix(1:6, nrow = 2, ncol = 3)
m # By default, matrices are filled column-wise.

m <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
m

# Combine vectors to create a matrix or combine matrices by columns or rows. 
x <- 1:3
y <- 6:8
cbind(x, y)
m2 <- rbind(x, y)
m2
rbind(m, m2)

colnames(m)
colnames(m) <- c("a", "b", "c")
colnames(m2) <- z
rbind(m, m2)

rownames(m) <- c("a", "b")

### List
# A list is a special type of vector. Each element can be a different type. 
x <- list(1, "a", TRUE, 1+4i)
x


# lists can also have names
names(x)
names(x) <- c("a", "b", "c", "d")
x

myList <- list(numbers = y, char = z)
myList

# Lists are useful!!

### Data Frames! 
# Very important data structure in R. 
# A data frame is a special type of list where every element of the list has the SAME length. 

# Create a data frame manually: 
dat <- data.frame(names = c("a", "b", "c"),
                  height = c(100, 200, 300),
                  weight = c(34, 56, 90))
dat
class(dat) # data.frame
typeof(dat) # It is acutally a special list!



