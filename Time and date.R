#Sample Functions for Data Wrangling

today1 <- Sys.Date()

today2 <- date()

now <- Sys.time()

#All functions above give some form of date or time

class(now)
#Tells u if your in POSIXct or POSIXlt

# Converst from POSIX to string
new_now <- strftime(now, "%a, %B %d - %H:%M:%S %y")

#strftime converts between POSIXct to string. Consult the POSIX format
#Strptime coverts in the opposite direction, better for display
#formating matters only if you are presenting to user. 

#Convert from string to POSIX, stick to original format
new_today <- strptime(today2, "%a %b %d %H:%M:%S %y")
#Converted into a string

later <- Sys.time()
a <- difftime(later, now, units = "mins")
#Class(a) is difftime, a variation of posix

another_now <- lubridate::dmy("17-12-2012")
# Turns this date in dmy format into POSIX format.

cat(now)
#print how variable is stored in the computer

sentence <- "This is the first line.\nThis is the second."
print(sentence)
cat(sentence)
#Cat separates lines through \n
#\t print as a space

