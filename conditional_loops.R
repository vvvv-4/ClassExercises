# while and repeat loop examples

# while loop INFINITE
# use either the tiny stop button or Ctrl+C or Ctrl+X to stop

i <- 1 # initialize the counter

while (i < 3) {
  print(i)
}

# while loop that should've been a for loop

i <- 1 # initialize the counter

while (i < 3) {
  print(i)
  i <- i + 1
}

#  repeat loop that counts from 1 to 30

j <- 1 #initialize counter

repeat {
  print(j)
  j <- j + 1
  if (j > 30) {
    break
  }
}





