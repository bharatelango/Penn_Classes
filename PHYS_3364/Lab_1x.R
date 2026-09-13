#Physics 3364: Lab 1x

#Packages
library(tidyverse)

#Voltage Divider Code
lab_1x_vd <- read_csv("Coding/R_Studio_Code/Courses/PHYS 3364/lab_1x_voltage_divider.csv") %>% subset(select = 1:4)

lab_1x_vd <- lab_1x_vd %>% rename(`I(R2.nA) (A)` = `I(R2.nA)`)
lab_1x_vd <- lab_1x_vd %>% 
  mutate(
    `V(R2) (V)` = `I(R2.nA) (A)`*(2*10^3)
  )

lab_1x_vd %>% 
  ggplot(aes(x = `I(R2.nA) (A)`, y = `V(R2) (V)`)) +
  geom_point() +
  theme_minimal()

slope_vd <- lab_1x_vd %>% lm(`V(R2) (V)` ~ `I(R2.nA) (A)`, data = .)

#LED Code
lab_1x_LED <- read.csv("Coding/R_Studio_Code/Courses/PHYS 3364/lab_1x_LED.csv") %>% subset(select = 1:4)

lab_1x_LED <- lab_1x_LED %>% rename(`I(D1.nA) (A)` = I.D1.nA., `V(V2) (V)` = V.V2.)

lab_1x_LED %>% 
  ggplot(aes(y = `I(D1.nA) (A)`, x = `V(V2) (V)`)) +
  geom_point() +
  theme_minimal()

slope_LED <- lab_1x_LED %>% lm(`I(D1.nA) (A)` ~ `V(V2) (V)`, data = .)

#Voltage Divider as Voltage Source (1k and 2k)
lab_1x_vd_vs_1k2k <- read.csv("Coding/R_Studio_Code/Courses/PHYS 3364/lab_1x_voltage_divider_voltage_source_1k:2k.csv") %>% subset(select = 1:3)

lab_1x_vd_vs_1k2k <- lab_1x_vd_vs_1k2k %>% rename(`I(RL) (A)` = I.AM1.nA., `VL (V)` = V.un3.)

lab_1x_vd_vs_1k2k %>% 
  ggplot(aes(x = `I(RL) (A)`, y = `VL (V)`)) +
  geom_point() +
  theme_minimal()

slope_vd_vs_1k2k <- lab_1x_vd_vs_1k2k %>% lm(`VL (V)` ~ `I(RL) (A)`, data = .)






#Voltage Divider as Voltage Source (10 and 20)
lab_1x_vd_vs_1020 <- read.csv("Coding/R_Studio_Code/Courses/PHYS 3364/lab_1x_voltage_divider_voltage_source_10:20.csv") %>% subset(select = 1:3)

lab_1x_vd_vs_1020 <- lab_1x_vd_vs_1020 %>% rename(`I(RL) (A)` = I.AM1.nA., `VL (V)` = V.un3.)

lab_1x_vd_vs_1020 %>% 
  ggplot(aes(x = `I(RL) (A)`, y = `VL (V)`)) +
  geom_point() +
  theme_minimal()

slope_vd_vs_1020 <- lab_1x_vd_vs_1020 %>% lm(`VL (V)` ~ `I(RL) (A)`, data = .)

#Voltage Divider as Voltage Source (100k and 200k)
lab_1x_vd_vs_100k200k <- read.csv("Coding/R_Studio_Code/Courses/PHYS 3364/lab_1x_voltage_divider_voltage_source_100k:200k.csv") %>% subset(select = 1:3)

lab_1x_vd_vs_100k200k <- lab_1x_vd_vs_100k200k %>% rename(`I(RL) (A)` = I.AM1.nA., `VL (V)` = V.un3.)

lab_1x_vd_vs_100k200k %>% 
  ggplot(aes(x = `I(RL) (A)`, y = `VL (V)`)) +
  geom_point() +
  theme_minimal()

slope_vd_vs_100k200k <- lab_1x_vd_vs_100k200k %>% lm(`VL (V)` ~ `I(RL) (A)`, data = .)
