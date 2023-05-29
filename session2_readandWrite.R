# reading and writing data in R 

##############################################################
# writing a vector to a file
myGenes <- c("gene1","gene2","gene3","gene4")
writeLines(myGenes, con = "mygenes.txt")
file.show("mygenes.txt")

# an alternative
cat(myGenes, file = "mygenes.txt", sep = "\n")

# writing a dataframe to a file using write.table()
write.table(mydf, file = "mydataframe.txt", sep = "\t", col.names = TRUE, row.names = FALSE, quote = FALSE)

write.table(mydf, file = "mydataframe.csv", sep = ",", col.names = TRUE, row.names = TRUE, quote = FALSE)

write.csv()

##############################################################
# reading data into R

# scan(): a flexible way to read in data

# read in a vector using scan
myNumbers<- scan("number_file1") 
myNumbers # by default the datatype is numeric

# what if we have a text file?
myText <- scan("text_file1")



# use the "what" parameter to specify data type
myText <- scan("text_file1", what = character())
myText <- scan("text_file1", what = "") # give it an "example" data

myNumbers<- scan("number_file1", what = numeric())
myNumbers<- scan("number_file1", what = 123)

# use scan to read in complex data types

myList <- scan("complex_data", what = "") # data read in as a vector
myList <- scan("complex_data", what = list("",0))
myList <- scan("complex_data", what = list("gene" = "", "value" = 0))

# input data interactively 
test <- scan()

# read in data with readLines(): reads each line of the input file as an element in a character vector
test <- readLines("text_file1")
test <- readLines("complex_data")


# read in data frames using the read.table() function
mydf2 <- read.table("mydataframe.txt", sep = "\t", header = TRUE, stringsAsFactors = FALSE)

# some useful parameters
comment.char 
skip
col.names & row.names

mydf2 <- read.table("mydataframe.txt", sep = "\t", header = FALSE, skip = 1, col.names = c("col1","col2","col3"), row.names = c("g1","g2","g3","g4","g5"))
                                                                                 
                                                                                 
                                                                                 
                                                                                 