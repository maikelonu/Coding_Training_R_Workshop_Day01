# //////////////////////////////////////////////////////////////////////////////////
# INSTITUTO TECNOLOGICO DE COSTA RICA
# Escuela de Ingenieria en Construccion
# https://www.tec.ac.cr
# Day 01. Introduction to R programming

# M.Sc. Eng. Maikel Mendez M
# Water Resources + GIS + DataScience
# Instituto Tecnologico de Costa Rica
# https://www.tec.ac.cr
# https://orcid.org/0000-0003-1919-141X
# https://www.scopus.com/authid/detail.uri?authorId=51665581300
# https://scholar.google.com/citations?user=JnmSVFYAAAAJ&hl=en
# https://www.youtube.com/c/maikelmendez
# https://github.com/maikelonu
# //////////////////////////////////////////////////////////////////////////////////

# //////////////////////////////////////////////
# BLOCK: Basic interaction with R
# //////////////////////////////////////////////

# Working directory is selected
setwd("C:/DATOS/FUNDA_R/R_Workshop/Day01")

# Lists the current working directory
getwd()

# Lists the objects in the current workspace
ls()

# R Packages
# -------------------------------------------------------------------------------------------
# Packages are collections of R functions, data, and compiled code in a well-defined format. 
# The directory where packages are stored on your computer is called the library.
# The function .libPaths() shows you where your library is located, and the function
# library() shows you what packages you've saved in your library.
# -------------------------------------------------------------------------------------------

# Available R libraries
library()

# R liobrary location
.libPaths()

# CRAN libraries are installed
# install.packages("pastecs")

# CRAN libraries are requested (loaded)
require(pastecs)
library(pastecs)
require(dplyr)
require(MASS)

# Asking R for help

# General help
help.start() 

# Help on function foo
help("mean")
?mean
help(dgamma)
example(dgamma)

#Searches the help system for instances of the string
help.search("optim") 
help.search("MASS")

# Data sets from each R library
data()

# Lists all available vignettes for currently installed packages
vignette()

# Exploring R data sets 

# nottem data set
data(nottem)
View(nottem)
class(nottem)
help(nottem)
str(nottem)
names(nottem)
head(nottem)
tail(nottem)

# BOD data set
data(BOD)
View(BOD)
class(BOD)
help(BOD)
str(BOD)
names(BOD)
head(BOD)
tail(BOD)

# Workspace is cleared
rm(list = ls())

# Objects under execution
ls()

# Arithmetic Operators 

# Addition
1 + 2

# Division
13 / 2

# Exponentiation (^ or **)
2 ^ 6

# Nested operations
5 * (2 + 3)

# Integer division
31 %/% 7

# Modulus (x mod y): for example, 5%%2 is 1
31 %% 7

pi * 2^3 - sqrt(4)

abs(12 - 17 * 2 / 3 - 9)

factorial(4)

sin(45 * pi / 180)

# Variable Assignment

x = 4

x <- 4

length(x)

x <- 1

x

print(x)

length(x)

msg <- "hello"

length(msg)

print(msg)

x <- 5

print(5)

x <- 10:30

print(x)

length(x)

y <- ((x[5])*1.33)

a <- 10

b <- 20

a <- b

print(a)

# Logical Operators in R
# -------------------------------------------------------------------------------------------
# <       Less than
# <=      Less than or equal to
# >       Greater than
# >=      Greater than or equal to
# ==      Exactly equal to
# !=      Not equal to
# !x      Not x
# x | y   x or y
# x & y   x and y
# isTRUE(x) Tests whether x is TRUE
# -------------------------------------------------------------------------------------------

aa <- 1
bb <- 2
cc <- 3
dd <- 4
ee <- 5

ee < aa

aa <= cc

dd > bb

dd >= bb

cc == aa

cc != aa

!aa 

aa | ee

aa & ee

isTRUE(ee < aa)

isTRUE(ee > aa)

# Using R Functions 
# -------------------------------------------------------------------------------------------
# Another core concept involves using functions to perform more complex 
# operations. Functions in R work like they do in mathematics: 
# they specify a transformation from one or more inputs (called arguments 
# or parameters) to one or more outputs (or return values)
# -------------------------------------------------------------------------------------------

abs(-4)

sqrt(64)

log(1.75)


# //////////////////////////////////////////////
# BLOCK: R OBJECTS (Data structures)
# //////////////////////////////////////////////

# -------------------------------------------------------------------------------------------
# R has a wide variety of objects for holding data, including scalars, vectors, matrices, 
# arrays, data frames, and lists. They differ in terms of the type of data they can hold, how
# they're created, their structural complexity, and the notation used 
# to identify and access individual elements

# Classes:

# vectors (atomic classes): 
#     numeric,
#     logical,
#     character,
#     integer,
#     complex
# matrices
# lists
# factors
# data frames
# -------------------------------------------------------------------------------------------

# R vectors 
# -------------------------------------------------------------------------------------------
# A frequently-used function is c(), which stands for concatenate. 
# This takes a sequence of arguments and sticks them together into a vector.
# Vectors are an ordered group of elements with a single dimension. 
# -------------------------------------------------------------------------------------------

# Numeric
x <- c(0.5, 0.6)    

is.numeric(x)

is.vector(x)

# Logical

x <- c(TRUE, FALSE) 

x <- c(T, F) 

is.logical(x)

# Character

x <- c("a", "b", "c") 

is.character(x)

# Integer

x <- 9:29 

class(x)

is.numeric(x)

is.integer(x)

is.vector(x)

is.character(x)

# Complex

x <- c(1+0i, 2+4i) 

is.complex(x)

# Integer (again)

x <- vector("numeric", length = 10)

x <- 9:29 

sum(x)

mean(x)

sd(x)

a <- c(-2, 4, 5.5)

sum(abs(a))

# Mixing Objects

y <- c(1.7, "a") # character

y <- c(TRUE, 2) # numeric

y <- c(2, TRUE) # numeric

y <- c("a", TRUE) # character

x <- 0:6

class(x)

as.numeric(x)

muestra <- ((seq(1, 10)) + 1.111)

print(muestra)

mean(muestra)

muestra <- muestra + (mean(muestra))

length(muestra)

summary(muestra)

sort(muestra)

muestra <- sort(muestra)

rank(muestra)

# You can also associate a name with each element in the vector

c(foo=1, bar=2)

v <- 1:3

names(v) <- c("foo", "bar", "buz")

print(v)

# Indexing elements in R
# -------------------------------------------------------------------------------------------
# To pull specific elements out of a vector
# -------------------------------------------------------------------------------------------

v <- 2:7

v[3]

v[3:6]

v[c(3,4,5,6)]

# -------------------------------------------------------------------------------------------
# If your vector has names associated with the values, 
# you can index with those too
# -------------------------------------------------------------------------------------------

v <- 1:3

names(v)= c("foo", "bar", "buz")

v["bar"]

v[1:2] = c(4, 5)

v["buz"] = 6

print(v)

# Explicit Coercion in R
# -------------------------------------------------------------------------------------------
# There are some functions to convert vectors between types by coercion
# -------------------------------------------------------------------------------------------

x <- 0:6

x <- as.numeric(x)

x <- as.logical(x)

x <- as.character(x)

x <- c("a", "b", "c")

x <- as.numeric(x)

as.logical(x)

as.complex(x)

# Combining Vectors

n <- c(2, 3, 5) 

s <- c("aa", "bb", "cc", "dd", "ee") 

ns <- c(n, s) 

# Missing Values
# In R, missing values are represented by the symbol NA (not available).
# Impossible values (e.g., dividing by zero) are represented by the symbol
# NaN (not a number)

x <- c(1, 2, NA, 10, 3)

is.na(x)

mean(x) # returns NA

# Excluding Missing Values from Analyses

x1 <- na.omit(x) # one way

class(x1)

x1 <- x[ !is.na(x) ] # another way

class(x1)

mean(x, na.rm=TRUE) # returns 4 

# NULL isn't a problem, because it doesn't exist

vx <- c(1, 2, 3, NULL, 5)

mean(vx)

x <- rnorm(100, 180, 20)

y <- rnorm(100, 90, 10)

print(x)

print(y)

length(x)

plot(x, y)

cor.test(x, y)

# R Matrices 
# -------------------------------------------------------------------------------------------
# A matrix is a two-dimensional array in which each element has the same mode
# (numeric, character, or logical). Matrices are created with the matrix() function.
# -------------------------------------------------------------------------------------------

m <- matrix(nrow = 2, ncol = 3)

is.matrix(m)

is.data.frame(m)

class(m)

dim(m)

attributes(m)

print(m)

m <- matrix(1:6, nrow = 2, ncol = 3)

m <- 1:10

class(m)

dim(m) <- c(2, 5)

class(m)

dim(m) <- c(5, 2)

class(m)

# Now suppose we want the element in row 4 and column 2:

m[4, 2]

m[2, ] # all elements, row 2 for all columns

m[, 1] # all elements, column for all rows

# We can also extract more than one rows or columns at a time. 

m[ ,c(1,2)]  # the 1st and 2rd columns 

# Using the cbind and rbind functions

x <- 1:3

y <- 10:12

m1 <- cbind(x, y)

class(m1)

m2 <- rbind(x, y)

class(m2)

# Basic operations with matrices

m1 <- cbind(x, y)

m2 <- cbind(x, y)

m2 <- 2.11 * m2

m3 <- m1 + m2

m3 <- m1 / m2

m3 <- m1 * m2

t(m1) 	# Transpose function

rowMeans(m1) 	# Returns vector of row means.

rowSums(m1) 	# Returns vector of row sums.

colMeans(m1) 	# Returns vector of column means.

colSums(m1) 	# Returns vector of column sums. 

m <- matrix(1:4, nrow = 2, ncol = 2)

dimnames(m) <- list(c("a", "b"), c("c", "d"))

colnames(m) <- c("h", "f") # assing names to columns

rownames(m) <- c("x", "z") # assing names to rows

# R Arrays
# -------------------------------------------------------------------------------------------
# Arrays are similar to matrices but can have more than two dimensions.
# -------------------------------------------------------------------------------------------

dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")

z <- array(1:24, c(2, 3, 4), dimnames=list(dim1, dim2, dim3))

print(z)

z[1,2,3]

z[2,1,2]

# R Lists 
# -------------------------------------------------------------------------------------------
# An ordered collection of objects (components). 
# A list allows you to gather a variety of (possibly unrelated) 
# objects under one name. 
# -------------------------------------------------------------------------------------------

x <- list(1, "a", TRUE, 1 + 4i)

str(x)

x <- vector("list", length = 5) # empty list 

n <- c(2, 3, 5) 

s <- c("aa", "bb", "cc", "dd", "ee") 

b <- c(TRUE, FALSE, TRUE, FALSE, FALSE) 

x <- list(n, s, b, 3)   # x contains copies of n, s, b

# Lists indexing
# We retrieve a list slice with the single square bracket "[]" operator.

x[1]

x[2]

x[4]

# Member Reference
# -------------------------------------------------------------------------------------------
# In order to reference a list member directly, we have to use 
# the double square bracket "[[]]" operator.
# -------------------------------------------------------------------------------------------

x[[2]]

x[[2]][1]

x[[2]][1] <- "TA" 

# R Factors 
# -------------------------------------------------------------------------------------------
# Factors are categorical variables that are quite useful in summary statistics,
# plots, and regressions. They basically act like dummy variables that R codes for you
# Use the factor() function for nominal data and the ordered() function for ordinal data
# -------------------------------------------------------------------------------------------

x <- factor(c("yes", "yes", "no", "yes", "no"))

class(x)

summary(x)

x <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no"))

summary(x)

cc <- factor(c("Toyota", "Toyota", "Nissan", "Toyota", "Nissan", "BMW", "BMW", "AUDI"))

summary(cc)

is.factor(cc)

is.character(cc)

# R Data Frames 
# -------------------------------------------------------------------------------------------
# Possibly the most useful data structure, and the one you'll 
# encounter most often when doing statistics with R
# Technically, a dataframe is a list of vectors of different class
# It's similar to the dataset you'd typically see in SAS, SPSS, and Stata.
# Data frames are the most common data structure you'll deal with in R.
# -------------------------------------------------------------------------------------------

x <- data.frame(foo = 1:4, bar = c(T, T, F, F))

View(x)

names(x)

colnames(x) <- c("foo2" ,"bar2")

x$const.1 <- 1.111

x$product.1 <-(x$foo2 * x$const.1)

x$product.1[3] <-(x$foo2[2] * x$const.1[1])

x$label <- c("green")

# -------------------------------------------------------------------------------------------
# In standard database terminology, these are records and fields, respectively. 
# Rows are generally accessed by the row number (although they can have names), 
# and columns by the variable name (although they can also be accessed by number). 
# A data frame can also be considerd a list whose members are the fields; 
# these can be accessed with the [[ ]] (list access) operator.
# -------------------------------------------------------------------------------------------

# Another example

patientID <- c(1, 2, 3, 4)

age <- c(25, 34, 28, 52)

diabetes <- c("Type1", "Type2", "Type1", "Type1")

status <- c("Poor", "Improved", "Excellent", "Poor")

patientdata <- data.frame(patientID, age, diabetes, status)

View(patientdata)

# Calling data frames from R data bases

data(trees)

str(trees)

View(trees)

names(trees)

trees$Height

trees$Height[1:5]

trees[[2]]

trees[[1]]

trees[[2]][1:5]

trees[1, ]

trees[ ,2]

trees[1, 1]

trees[1, 3]

trees[1,"Height"]

trees$HG.Ratio <- trees$Height / trees$Girth

# Another example

student <- rep(1:3, 3)

score <- c(9, 6.5, 8, 8, 7.5, 6, 9.5, 8, 7)

tests <- data.frame(cbind(student, score))

str(tests)

# -------------------------------------------------------------------------------------------
# The problem is that the student is considered as a continuous variable 
# when in fact it is a factor. We do much better if we make the appropriate conversion:
# -------------------------------------------------------------------------------------------

tests$student <- as.factor(tests$student)

str(tests)

# Functions attach and detach

# -------------------------------------------------------------------------------------------
# The attach() function adds the data frame to the R search path. When a variable
#name is encountered, data frames in the search path are checked for the variable 
# in order. 

# The detach() function removes the data frame from the search path. Note that
# detach() does nothing to the data frame itself. 
# -------------------------------------------------------------------------------------------

data("mtcars")
View(mtcars)

# Common way would be:
summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

# This can also be written as
attach(mtcars)
summary(mpg)
plot(mpg, disp)
plot(mpg, wt)
detach(mtcars)

# //////////////////////////////////////////////
# BLOCK: Getting Data In and Out of R
# //////////////////////////////////////////////

# Importing data from a delimited text file
help("read.table")
help("write.table")

# Function read.table
df.cement <- read.table("cement01.txt", header = TRUE, sep = "\t", quote = "")

# Function read.delim
# df.cement02 <- read.delim("D:/R_ITC/R_Workshop/Day01/cement01.txt")

df.cement02 <- read.delim("cement01.txt")

names(df.cement)

summary(df.cement)

summary(df.cement$resistencia_28_dias_kgf_cm2)

min(df.cement$resistencia_28_dias_kgf_cm2)

max(df.cement$resistencia_28_dias_kgf_cm2)

mean(df.cement$resistencia_28_dias_kgf_cm2)

median(df.cement$resistencia_28_dias_kgf_cm2)

range(df.cement$resistencia_28_dias_kgf_cm2)

var(df.cement$resistencia_28_dias_kgf_cm2)

quantile(df.cement$resistencia_28_dias_kgf_cm2)

which.max(df.cement$resistencia_28_dias_kgf_cm2)

df.cement[1:5, ]

test.01 <- df.cement[1:5, 1:2]

test.01 <- df.cement[1:5, "cemento"]

# Importing data from Excel
# -------------------------------------------------------------------------------------------
# The best way to read an Excel file is to export it to a comma-delimited file 
# from Excel and import it into R
# -------------------------------------------------------------------------------------------

# CRAN libraries are requested (loaded)
require(xlsx)

# xlsx is stored in a new object
workbook <- "pumps.xlsx"

# read.xlsx {xlsx} function is requested over worksheet 1
df.excel <- read.xlsx(workbook, 1)

# Importing data from SPSS
# -------------------------------------------------------------------------------------------
# IBM SPSS datasets can be imported into R via the read.spss() function in the foreign package. 
# Alternatively, you can use the spss.get() function in the Hmisc package
# -------------------------------------------------------------------------------------------

# CRAN libraries are requested (loaded)
require(Hmisc)

# spss.get {Hmisc} function is requested
df.spss <- spss.get("employee_data.sav", use.value.labels=TRUE)

names(df.spss)

# Importing data from Stata

# CRAN libraries are requested (loaded)
require(foreign)

# read.dta {foreign} function is requested
df.Stata <- read.dta("medical.dta")

# //////////////////////////////////////////////
# BLOCK: Selection and subsetting
# //////////////////////////////////////////////

# R Logical Expressions
# -------------------------------------------------------------------------------------------
# Recoding involves creating new values of a variable conditional on the 
# existing values of the same and/or other variables
# -------------------------------------------------------------------------------------------

# Logical Operators in R
# -------------------------------------------------------------------------------------------
# <       Less than
# <=      Less than or equal to
# >       Greater than
# >=      Greater than or equal to
# ==      Exactly equal to
# !=      Not equal to
# !x      Not x
# x | y   x or y
# x & y   x and y
# isTRUE(x) Tests whether x is TRUE
# -------------------------------------------------------------------------------------------

df.cement$resistencia_28_dias_kgf_cm2 > 250

sum(df.cement$resistencia_28_dias_kgf_cm2 > 250)

sum(df.cement$resistencia_28_dias_kgf_cm2 < 250)

length(df.cement$resistencia_28_dias_kgf_cm2)

(sum(df.cement$resistencia_28_dias_kgf_cm2 < 250)) /(length(df.cement$resistencia_28_dias_kgf_cm2))

df.cement$resistencia_28_dias_kgf_cm2 == 388.00

# Function subset
df.test.01 <- subset(df.cement, cemento == "marca-A")

df.test.02 <- subset(df.cement, cemento == "marca-A" & cemento == "marca-B")

df.test.02 <- subset(df.cement, cemento == "marca-A" | cemento == "marca-B") 

df.test.03 <- subset(df.cement, cemento == "marca-A" & tipo_elemento == "viga")

# Function sample
# -------------------------------------------------------------------------------------------
# Sampling from larger datasets is a common practice in data mining and 
# machine learning.
# -------------------------------------------------------------------------------------------

df.sample.01 <- df.cement[sample(1:nrow(df.cement), 3, replace=FALSE),]

# //////////////////////////////////////////////
# BLOCK: Advanced data management
# //////////////////////////////////////////////

# -------------------------------------------------------------------------------------------
# Mathematical functions
# -------------------------------------------------------------------------------------------

x <- 55.7459

abs(x)

sqrt(x)

ceiling(x)

floor(x)

trunc(x)

round(x, digits=1)

signif(x, digits=2)

signif(x, digits=3)

cos(x)

sin(x)

tan(x)

acos(x)

asin(x)

atan(x)

log(x,base=2)

log(x) # LN

log10(x)

exp(x)

# -------------------------------------------------------------------------------------------
# Statistical functions
# -------------------------------------------------------------------------------------------

x <- df.cement[, 2]

mean(x)

median(x)

sd(x)

var(x)

mad(x)

range(x)

sum(x)

min(x)

max(x)

# -------------------------------------------------------------------------------------------
# Descriptive Statistics
# -------------------------------------------------------------------------------------------

# Function subset
df.cementA <- subset(df.cement, cemento == "marca-A")
df.cementB <- subset(df.cement, cemento == "marca-B")
df.cementC <- subset(df.cement, cemento == "marca-C")

# stat.desc {pastecs} function is requested
stat.desc(df.cementA)

stat.desc(df.cementA[ , 2])

round(stat.desc(df.cementA[ , 2]),3)

df.cementA.desc <- as.data.frame(round(stat.desc(df.cementA[ , 2]),3))

df.cementB.desc <- as.data.frame(round(stat.desc(df.cementB[ , 2]),3))

df.cementC.desc <- as.data.frame(round(stat.desc(df.cementC[ , 2]),3))

df.total.desc <- cbind(df.cementA.desc, df.cementB.desc, df.cementC.desc)

colnames(df.total.desc) <- c("marca-A", "marca-B", "marca-C")

# R Dates
# -------------------------------------------------------------------------------------------
# Dates are typically entered into R as character strings and then translated into date
# variables that are stored numerically. The function as.Date() is used to make this
# translation. The syntax is as.Date(x, "input_format"), where x is the character data
# and input_format gives the appropriate format for reading the date 
# -------------------------------------------------------------------------------------------
# SYMBOL	MEANING	                EXAMPLE
# %d	    Day as a number (0-31)	01-31
# %a	    Abbreviated weekday	    Mon
# %A	    Unabbreviated weekday	  Monday
# %m	    Month (00-12)	          00-12
# %b	    Abbreviated month	      Jan
# %B	    Unabbreviated month	    January
# %y	    Two-digit year	        7
# %Y	    Four-digit year	        2008
# -------------------------------------------------------------------------------------------

# The default format for inputting dates is yyyy-mm-dd. The statement
mydates <- as.Date(c("2007-06-22", "2004-02-13"))

class(mydates)

# The statement converts the character data to dates using this default format. In contrast,
strDates <- c("01/05/1965", "08/16/1975")
mydates2 <- as.Date(strDates, "%m/%d/%Y")

# Precipitation, temperature and Q-observed data.frame is loaded
df.ptq <- read.delim ("hbvtecptq.txt", header = TRUE, sep = "\t")

# df.ptq$DATE factor class is converted to date class 
DATEtemp01 <- df.ptq$DATE
df.ptq$DATE <- as.Date(DATEtemp01, format = "%d/%m/%Y")

# Two functions are especially useful for time-stamping data. Sys.Date() returns
# today's date, and date() returns the current date and time. 

Sys.Date()

date()

today <- Sys.Date()

format(today, format="%B %d %Y")

format(today, format="%A")

# Start the clock!
ptm <- proc.time()

  set.seed(237)
  x <- seq(0, pi, length.out = 5000)
  y <- sin(x) + 0.1*rnorm(5000)
  plot(x, y)

# Stop the clock
proc.time() - ptm

# -------------------------------------------------------------------------------------------
# If-statement & For-loop
# -------------------------------------------------------------------------------------------

df.cement$rule <- NA

counter <- length(df.cement$resistencia_28_dias_kgf_cm2)

for(i in 1:counter) {

  if (df.cement$resistencia_28_dias_kgf_cm2[i] > 250) {
    df.cement$rule[i] = "OK"
  }
  else {
    df.cement$rule[i] = "FAILED"
  }

}

sort(df.cement$resistencia_28_dias_kgf_cm2)

# //////////////////////////////////////////////
# BLOCK: Managing data with dplyr package
# //////////////////////////////////////////////

# CRAN libraries are requested
detach(package:pastecs)
require(dplyr)

# select() function
subset.1 <- dplyr::select(df.cement, tipo_elemento)

subset.2 <- dplyr::select(df.cement, secuencia:tipo_elemento)

subset.3 <- dplyr::select(df.cement, -secuencia)

subset <- dplyr::select(df.cement, ends_with("2"))

subset <- dplyr::select(df.cement, ends_with("o"))

subset <- dplyr::select(df.cement, starts_with("c"))

# filter() function
filter.1 <- filter(df.cement, resistencia_28_dias_kgf_cm2 > 250)

filter.2 <- filter(df.cement, resistencia_28_dias_kgf_cm2 < 250)

filter.3 <- filter(df.cement, resistencia_28_dias_kgf_cm2 > 250 & cemento == "marca-A")

# arrange() function
arrange.1 <- arrange(df.cement, resistencia_28_dias_kgf_cm2)

arrange.2 <- arrange(df.cement, desc(resistencia_28_dias_kgf_cm2))

# rename() function
raname.1 <- dplyr::rename(df.cement, resistencia = resistencia_28_dias_kgf_cm2)

# mutate() function
mutate.1 <- mutate(df.cement, resis_trend = resistencia_28_dias_kgf_cm2 - mean(resistencia_28_dias_kgf_cm2))

# transmute() function
transmute.1 <- transmute(df.cement, resis_trend = resistencia_28_dias_kgf_cm2 - mean(resistencia_28_dias_kgf_cm2))

dplyr::summarize(df.cement)
