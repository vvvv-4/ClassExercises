
# For loop example Jun 21

#Simple for loop

myseq <- seq(1,5)

for (i in myseq){
  print(paste("Counter:",i, "   Value:", myseq[i]))
}

# INTERATE OVER ACTUAL ELEMENTS, NO INDEX VALUE IS AVAILABLE
myseq2 <- c("a", "b", "c", "d", "e")
for (i in myseq2){
  print(paste("Counter:",i, "   Value:", myseq2[i]))
}

# INTERATE OVER INDEXES /For vectors that are complementary to each othe r
for (i in seq_along(myseq2)){
  print(paste("Counter:",i, "   Value:", myseq2[i]))
}

# Equivalent to the above, this would give you the specific position of 5 
for (i in length(myseq2)){ #does not work length() does not produce range
  print(paste("Counter:",i, "   Value:", myseq2[i]))
} 
#nchar() would give the length of the function 

for (i in 1:length(myseq2)){ 
  print(paste("Counter:",i, "   Value:", myseq2[i]))
} 