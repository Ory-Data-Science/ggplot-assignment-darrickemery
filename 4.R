dimorph_data <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999", "-999.0"))
ggplot(data= dimorph_data, aes(x= F_mass))+
  labs(x= "Female Mass(g)") + geom_histogram()