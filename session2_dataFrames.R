# Manipulating data frames
# Load R data "iris"
data(iris)
head(iris)

# Quickly examine the object 
class(iris)
head(iris)
tail(iris)
dim(iris)
summary(iris)
names(iris)
str(iris)

# Let's make a smaller data frame
mydf <- rbind(iris[c(1:3, 51:53, 101:103),])


# Subsetting a data frame is very similar with subsetting a matrix. 
# Subsetting by indices
mydf[,2]
mydf[3, c(2,5)]
mydf[-4, -c(3:10)]

# Subsetting by name
# How to explain the outputs of the following commands?
mydf[,"Species"] 
mydf["Species"] 
mydf[["Species"]]
mydf$Species

# data frames are just lists!

# characters are by default stored as factors.

# Subsetting with logical operations
mydf[mydf$Species == "versicolor", ]
mydf[mydf$Species == "versicolor", c("Sepal.Length", "Petal.Length", "Species")]
# Another way to obtain the same result?





# common mistake!
vars <- c("Sepal.Length", "Petal.Length")
mydf$vars





# Subset using the function subset
subset(mydf, Species == "versicolor") # columns can be referred to (by name) as variables in the function call
# subset takes 3 parameters: the data frame; how to subset by row; which columns to select
subset(mydf, Species == "versicolor", select = c(Sepal.Width, Petal.Width))

##############################################################
# Challenge 5
##############################################################

# Adding columns/rows to data frames.
# Create a data frame in R

mydf <- data.frame(genes = c("A", "B", "C", "D"),
                   length = c(1000, 30000, 4000, 1100),
                   target = c(TRUE, TRUE, FALSE, FALSE),
                   stringsAsFactors = FALSE)
# Add a row
newrow <- c("E", "200", TRUE)
mydf <- rbind(mydf, newrow)

newrow <- c("E", 200, "F", "G")
rbind(mydf, newrow)

# Add a column
expression <- c(50, 155, 6, 15, 10 )
cbind(mydf, expression)
# New column must have same number of rows!



