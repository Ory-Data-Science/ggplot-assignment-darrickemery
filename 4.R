dimorph_data <- read.csv(url("http://www.esapubs.org/archive/ecol/E088/096/avian_ssd_jan07.txt"),
                sep = "\t", na.strings = c("-999.00", "999.00", "-999", "999", "-999.0"))
ggplot(data= dimorph_data, aes(x= F_mass))+
  labs(x= "Female Mass(g)") + geom_histogram()
ggplot(data= dimorph_data, aes(x= F_mass))+
  labs(x= "Female Mass(g)") + geom_histogram(fill= "blue")
ggplot(data = dimorph_data, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) + geom_histogram(aes(x = M_mass), alpha = 0.3) +
  scale_x_log10() + labs(x = "Female Mass(g)") 
ggplot(data = dimorph_data, aes(x = F_mass)) +
  geom_histogram(fill = "blue", alpha = 0.3) + geom_histogram(aes(x = M_mass), alpha = 0.3) +
  scale_x_log10() + labs(x = "Female Mass(g)") +
  facet_wrap(~ Family)
ggplot(data = dimorph_data, aes(x = F_wing)) +
  geom_histogram(fill = "blue", alpha = 0.3) + geom_histogram(aes(x = M_wing), alpha = 0.3) +
  scale_x_log10() + labs(x = "Female Mass(g)") +
  facet_wrap(~ Family)