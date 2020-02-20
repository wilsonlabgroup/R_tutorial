# Manipulating data frames
# Read in a data frame from file. 
# Write a comma-deliminated file by "File -> New File -> Text File". 
dat <- read.table(file = "example1.csv", header = TRUE, sep = ",")

# Subsetting a data frame is very similar with subsetting a matrix. 
typeof(dat[2,])
class(dat[,"height"])
# You can use the $ to subset by names
dat$color # characters are by default stored as factors.
dat <- read.table(file = "example.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
dat$color <- as.character(dat$color)
class(t(dat))
# Subsetting with logical operations
dat[dat$color == "red", ]

# Subset using the function subset
subset(dat, color == "red") # columns can be referred to (by name) as variables in the function call


# Adding columns/rows to data frames.
name <- c("a", "b", "c", "d")
dat <- cbind(dat, name)

dat$name2 <- c("e", "f", "g", "h")

dat[, c("height", "weight", "name", "color")]
### Write data frame to a file.
write.table(dat, file = "example_modified.txt", col.names = TRUE, row.names = FALSE, quote = FALSE, sep = "\t")




