mammal_data<- read.csv(url("http://esapubs.org/archive/ecol/E084/093/Mammal_lifehistories_v2.txt"), 
                sep = "\t", nrows = 1440, na.strings = c("-999.00", "999.00"))
ggplot(data= mammal_data, aes(x= mass.g., y= newborn.g.)) + 
  labs(x= "Adult Mass", y= "Newborn Mass") +
  geom_point()