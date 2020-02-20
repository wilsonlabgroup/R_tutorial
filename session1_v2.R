### Explore Rstudio. 
### Set working directory. 

### Basic mathematical operations in R
1 + 100 #Simple addition. Notice that anything after a # is ignored!

# If you type incomplete command.
#1 + 
# Use "Esc" to cancel command.
  
3 + 5 * 2 #R follows order of operations

(3+5) * 2

3 + 5 * 2^2

# Scientific notation for really small or large numbers
2/100000

# You can write numbers in scientific notation:
1e4

### R has many built in mathematical functions. 
sin(1) #trigonometry functions
log(1) #natural log
log10(10) #log base 10
exp(0.5) #e^(1/2)
sqrt(4) #Square root of 4
# Look up function names in R help, package documentation, Google and auto-completion.
# Get help: type ? before function name. 

### Logical comparisons in R
1 == 1 #Tests for equality. Evaluates to true.
1 != 2 #Inequality (read as "is not equal to")
1 <  2 #Less than
1 <= 1 #Less than or equal to
1 >  2 #Greater than
1 >= 1 #Greater than or equal to

# you can also compare words/strings
"a" == "a" #
"a" != "b"

### Variables in R ###
### Output printed to the console is not retrievable. How can we save results for later use?
#We can store values or output of expressions using the assignment operator
x <- 1/40 #Like this. Notice that nothing is printed. Instead, we can retrieve the value later

x  #Note that x now appears in our environment

#Assignment operator and equals sign
# However, it is good practice to use <- for assignment and "=" to pass arguments to a function.
# In Rstudio, press Alt + "-" for "<-".   

#We can use x in place of a number in any calculation
log(x) #-3.688879

x <- 100 #Note that X can be reassigned
log(x) #4.60517

#Assignment values can contain the variable itself. The ENTIRE right side is calculated first.
x <- x+1 #Note that the value is updated in our environment tab.
x
# Variable names can contain letters, numbers, underscores and periods.
# Cannot start with numbers nor contain spaces. 
# Common conventions:
# periods.separated
# underscores_separated
# firstLetterUppercase

### Vectors in R ###
# variable and functions in R can have vectors as values
# a vector contains multiple individual values of the same data type
1:5

# you can also create a vector with specific components using the "c" function
c(1,2,3,4,5)
# you can also concatenate vectors using "c"
c(1:5, 7, 8, 9)

# operations that work on a single value, when applied to a vector, will operate on ALL items
1:5^2
# sometimes, the inverse is also true
2^(1:5)
# vector can be stored in a variable
y <- 1:5
y

2^y
log(y)
y >= 3

# some functions work on entire vectors
sum(y) #adds all numbers in a vector
mean(y) #calculates the mean 

# Remember, vectors can only have 1 variable type
# What happens when you try to put two types together?

c(1:4, TRUE) # [1] 1 2 3 4 1
c(1:4, TRUE, "notANumber") # 
#[1] "1"          "2"          "3"          "4"          "TRUE"       "notANumber"