library(dplyr)
#filter(df, ...) 
#select()
#arrange()
#mutate()
#count()
#group_by(),
#ungroup() 
#summarise()

#%>% pipe dplyr functions together one by one to give series of changes in one command

#head() functions as summary
mydata <- datasets::CO2

mydata %>%
  #sort (function from base pckg)
  arrange(conc) %>%#During piping does not need to implicitly mention data name
  #take a slice
  head(n=7) %>%#See the first 7 rows
  #count the rows
  count() 


mynewdata <- mydata %>%
  #order by conc descending (sort from base can automatically descend or ascend)
  arrange(desc(conc))

mydata %>% 
  arrange(Plant, desc(conc) #Sorted in descending orders within the levels of plant
          
          
mynewdata <- mydata %>%
  #add a new column thats 10% increased in uptake 
  mutate(madeup = uptake*1.1)

#madeup = 1.1 uptake only for chilled samples
mynewdata <- mydata %>%
  mutate(madeup = uptake) %>%
  filter(Treatment == "chilled") %>%
  #add a new column thats 10% increased in uptake, but all the unchilled rows were removed 
  mutate(madeup = uptake*1.1)

#So lets try again
newdata <- mydata %>%
  #case_when is similar to an if statement, allows differentiate in treatment based on conditions 
  mutate(madeup = case_when(
    Treatment == "chilled" ~ uptake * 1.1,
    .default = uptake 
  )) 

#summary statistics 
newdata %>% #Does not see the data changes on the surface 
  group_by(Type) %>%
  #Cannot summarize something that is not grouped. Summary shows the difference in n() and sd for the two samples
  #Summarize usually the last step 
  summarize(NoOfSamples = n(), stdDev = sd(madeup))

#summary statistics on two column 
newdata %>% 
  group_by(Type, Treatment) %>%
  summarize(NoOfSamples = n(), stdDev = sd(madeup))
#Summarize give 4 groups

#Add a new column of stddev to the table 
newdata <- newdata %>% 
  group_by(Type, Treatment) %>% 
  #Already grouped, do not have to apply per/bucket with case_when 
  mutate(StdDev = sd(madeup)) %>%
  #ungroup to facilitate future coding 
  ungroup()

#If you want to different things based on conditions, use case_when instead of group() 

newdata %>%
  select(Treatment,
         Type, 
         Plant,
         MagicNumber = StdDev) #New name first, old name later, refer to column with the new name

athletes <- read.csv("/Users/vv/Desktop/olympic_events.csv")

atheletes <- rename(athletes, country = NOC)

#join athletes to gap 

gap <- gapminder::gapminder_unfiltered
#Another dataset to be joined.

bigdata <- athletes %>% 
  #Dont need to write left data set, specified already 
  left_join(gap, by = c("Team" = "country")) #Left column name joint with right column name, need to specify.
#Many to many relationship, R gives a cross product 

#Plot average height vs. Average  gdp

plot(x = betterdata$AvgHeight, y = betterdata$AvgGDP, "l")

betterdata <- atheletes %>% 
  #leftjoin success! matching for country and year
  left_join(gap,by = c("Team" = "country", "Year"= "year" )) %>% 
  group_by(Team) %>%
  summarize(AvgHeight = mean(Height, na.rm = TRUE), 
            AvgGDP = mean(gdpPercap, na.rm = TRUE))
 

            
