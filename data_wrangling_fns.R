# Sample functions for data wrangling


today1 <- Sys.Date()
today2 <- date()
now <- Sys.time()

# Convert from POSIX to string
new_now <- strftime(now, "%a, %B %d - %H:%M:%S %y")
new_date <- strftime(today1, "%a, %B %d - %y")

# Convert from string to POSIX
new_today <- strptime(today2, "%a %b %d %H:%M:%S %Y")

later <- Sys.time()
a <- difftime(later, now, units = "mins")

# lubridate example 
another_now <- lubridate::dmy("17 12, 2012")


# Extra Cat vs print

sentence <- "This is the-\t-first line.\nThis is the second"
print(sentence)
cat(sentence)
