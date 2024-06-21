# for loop examples

# simple for loop

myseq <- seq(1,5)

for (i in myseq) {
  print(paste("Counter:", i, "   Value:", myseq[i]))
}

# different ways of iterating over a loop

myseq2 <- c("a", "b", "c", "d", "e")
# iterate over actual elements-no index value is available
for (i in myseq2) {
  print(paste("Counter:", i, "   Value:", myseq2[i]))
}

# iterate over indexes
for (i in seq_along(myseq2)) {
  print(paste("Counter:", i, "   Value:", myseq2[i]))
}

# equivalent to above
for (i in 1:length(myseq2)) {
  print(paste("Counter:", i, "   Value:", myseq2[i]))
}



