# Lab 03 - String Manipulation Exercise

# Create a variable `lyric` that contains the text "I like to eat apples and
# bananas"
lyric <- "I like to eat apples and bananas"

# Use the `substr()` function to extract the 1st through 13th letters from the
# `lyric`, and store the result in a variable called `intro`
# Use `?substr` to see more about this function
intro <- substr(lyric, 1, 13)
intro

# Use the `substr()` function to extract the 15th through the last letter of the
# `lyric`, and store the result in a variable called `fruits`
# Hint: use `nchar()` to determine how many total letters there are!
length <- nchar(lyric)
length
fruit <- substr(lyric, 15, nchar(lyric))
fruit <- substr(lyric, 15, length)
fruit <- substr(lyric, 15, 32) #not as good
fruit


# Use the `gsub()` function to substitute all the "a"s in `fruits` with "ee".
# Store the result in a variable called `fruits_e`
# Hint: see http://www.endmemo.com/program/R/sub.php for a simpmle example (or
# use `?gsub`)
fruits_e <- gsub("a", "ee", lyric)
fruits_e

# Use the `gsub()` function to substitute all the "a"s in `fruits` with "o".
# Store the result in a variable called `fruits_o`
fruits_o <- gsub("a","o",lyric)
fruits_o

# Create a new variable `lyric_e` that is the `intro` combined with the new
# `fruits_e` ending. Print out this variable
fruits_e <- gsub("a","e", fruit)
fruits_e
fruits_e_result <- paste(intro, fruits_e)
fruits_e_result <- paste(intro, gsub("a","e", fruit))
fruits_e_result

# Without making a new variable, print out the `intro` combined with the new
# `fruits_o` ending
fruits_o <- paste(intro, gsub("a","o",fruit))
fruits_o
