# Control flow
# When we're coding, we often want to control operations base on certain conditions, and we may want a certain action to happen repetitively. 

# Conditional statement
# if
if (condition is true) {
  perform action
}

# if ... else
if (condition is true) {
  perform action
} else {  # that is, if the condition is false,
  perform alternative action
}

# example 
x <- 11
if (x < 10) {
  print("X is larger than 10")
}

# More conditions
if (x > 10) {
  print("X is larger than 10")
} else if (x > 5 & x <= 10) {
  print("X is larger than 5 and smaller or equal to 10")
} else {
  print("X is smaller than 5")
}

### Repeating operations

# For loop: purpose- repeat a sequence of instructions under certain conditions
#// allow to group the same part of code and automate it
# for better understanding: it can be read as: for each iterator that's \
# in the sequence, you execude the code chunk 
for(iterator in set of values){
  do a thing
}

## want to print 1,2,3,...10 ; one way: 
print(1)
print(2)
print(3)
...
print(10)

# for loop: i will be updated after each iteration; 
# read as: for each i that's in the sequence c(1,2,3,...10), you execute the code: 
# "print(i)"
for (i in 1:10){
  print(i)
}

# Nested for loops
for(i in 1:5){
      #i=1, j="a',"b","c"...; i =2, j="a","b"...
  for(j in c('a', 'b', 'c', 'd', 'e')){
    print(paste(i,j))
  }
}

# We can save results of these operations.
result_vector <- c() # initialize empty vector // optional

for(i in 1:5){
  for(j in c('a', 'b', 'c', 'd', 'e')){
    #print(paste(i,j))
    temp_value <- paste(i, j)
    result_vector <- c(result_vector, temp_value)
  }
}

### R is special! => everything in r is considered as a vector or a combination 
# of serveral vectors
# Vectorized operations in R => manipulate vectors as a whole // high efficiency
paste(1:5, c('a', 'b', 'c', 'd', 'e'))

x <- 1:5
y <- 11:15
x + y


# Some tips:
# Use vectorized operations when possible.
# Do not grow objects. Initialize a vector/matrix with fixed size and fill it in. 


x <- c()
system.time(
  for(i in 1:4000){
    x<-c(x,i) #here i is combined with previous contents of x
  }
)


x<-numeric(4000) #empty numeric vector
system.time(
  for(i in 1:4000){
    x[i] <- i #changing value of particular element of x
  }
)




