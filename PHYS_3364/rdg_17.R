#Packages
library(tidyverse)

df <- read.csv("Coding/GitHub/PHYS 3364/Files/rdg_17_ib_vs_vbe.csv")

ib_vs_vbe <- df %>% 
  ggplot(aes(V.B., I.I_B.nA.)) +
  geom_line() +
  theme_minimal() +
  labs(title = "i_b vs. v_be", x = "v_be (V)", y = "i_b (A)")

plot(ib_vs_vbe)

df10 <- read.csv("Coding/GitHub/PHYS 3364/Files/rdg_17_ic_vs_vce_10uA.csv")
df30 <- read.csv("Coding/GitHub/PHYS 3364/Files/rdg_17_ic_vs_vce_30uA.csv")
df50 <- read.csv("Coding/GitHub/PHYS 3364/Files/rdg_17_ic_vs_vce_50uA.csv")

ic_vs_vce_30 <- df30 %>% 
  ggplot(aes(V.Q1.nC., I.i_C.nA.)) +
  geom_line() +
  theme_minimal() +
  labs(title = "i_c vs. v_ce", x = "v_ce (V)", y = "i_c (A)")

plot(ic_vs_vce_30)

ic_vs_vce <- ggplot() +
  # Map the color to a string inside aes() to create the legend entry
  geom_line(data = df10, aes(V.Q1.nC., I.i_C.nA., color = "ib = 10uA")) + 
  geom_line(data = df30, aes(V.Q1.nC., I.i_C.nA., color = "ib = 30uA")) + 
  geom_line(data = df50, aes(V.Q1.nC., I.i_C.nA., color = "ib = 50uA")) +
  # Use scale_color_manual to define the actual colors for those strings
  scale_color_manual(values = c("ib = 10uA" = "blue", "ib = 30uA" = "red", "ib = 50uA" = "green")) +
  labs(title = "i_c vs. v_ce", x = "v_ce (V)", y = "i_c (A)", color = "ib values") +
  theme_minimal()

plot(ic_vs_vce)

