library(tidyverse)

csv <- read.csv("Coding/GitHub/PHYS 3364/Files/rdg_18.csv")

csv <- csv %>% rename(V_E = V.Re.nA., V_C = V.Rc.nB., V_B = V.Q1.nB.)

plot <- ggplot(csv, aes(x = V_B)) + 
  geom_line(aes(y = V_E, color = "VE")) +
  geom_line(aes(y = V_C, color = "VC")) + 
  theme_minimal() +
  labs(x = "VB (V)", y = "VE and VC (V)", title = "VE and VC vs. VB", color = "Legend")

plot(plot)
  