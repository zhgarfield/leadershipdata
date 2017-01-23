## notes from class

#source the input file
source("Survival analysis of leaders using Archigos.r")

d<-archigos


cor.test(~un_region+un_continent, data=archigos)
#for HW, str command, info about data, who or how collected, what variables mean 


#8/26

## vectors and lists

## Vectors
# 4 types of vectors:
# string/characher vector
# integer (just integers, no 3.5, 3.6, just 1,2,3,4, etc.)
# numeric (can contain arbitray numeric values)
# boolean (true or false)
# Vectors can only contain that type of info, all of one type

# creating long vectors

x<-(1:100)
length(x)
class(x)

## lists

# can mix different types of vectors, lists. e.g. list of lists or list of vectors.

## data frame, a list of vectors. spreadsheet columns are converted to vectors
# also, vectors must be same length in data frame (not true of lists in general)

## subsetting with [ ], can't mix positive and negative indicies of vectors

#8.31

# Indexing

# select from a vector
x <- rnorm(100)
hist(x)
z<- c(1:6,20:26)
z<- x<0
x[z]
x[x<0]
x[-1]
x[-(1:99)]
## works for lists and vectors, but boolean don't work with lists

## Matrix, 

## turn into matrix
dim(x) <- c(10,10)

## to index the matrix
x[4,3] #first is row, second is column
# works same for data frame

x[1:5,3]
# pull our first 5 rows, column 3

x[1:5,1:3]
# pull out first five rows, in first 3 columns


## indexing lists

list()

y = list(
first_letter='a',
great_number=3,
more_than_four=4.5,
fun=TRUE,
a_vector=c(4,6,2)
)

# notice the difference between getting a list returned from the list item, adn getting a vector
y["first_letter"]
y$first_letter
mean(y['a_vector'])
mean(y$a_vector)
typeof(y$a_vector)
typeof(y['a_vector'])

a<-y[['a_vector']]
mean(a)

## martix
# get all rows in column 3
x[,3] # 3rd column
x[5,] # 5th row
z<-x[1:5,] # first 5 rows


## assignments - putting data in
x[4,4]<-999
x[4,]<-1:10

## homework
#assign cor test to object
#typeof    what's in there
#names attributes







