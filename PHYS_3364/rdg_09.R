library(tidyverse)

#================================================================
#Question 1
df <- read.csv("~/Coding/R_Studio_Code/Courses/PHYS 3364/CircuitLab_simulation_2026-02-12T08_44_57.251Z.csv")

df <- df %>% rename(V_D = V.V_D., I_D1 = I.D1.nA.)

plot <- df %>% 
  ggplot(aes(x = V_D, y = I_D1)) +
  geom_line() +
  theme_minimal() +
  labs(title = "I_D1 vs. V_D", x = "V_D (V)", y = "I_D1 (A)")
plot(plot)

head(filter(df, df$I_D1 > 0.001), n = 1L)

df_500 <- df %>% 
  filter(I_D1 > 500*10^-6)

df_500 <- df_500 %>% 
  mutate(Delta_V = NA, Delta_I = NA)

for(i in 1:(length(df_500$V1.V) - 1)) {
  df_500[i, 5] <- df_500[i+1, 2] - df_500[i, 2]
  df_500[i, 6] <- df_500[i+1, 3] - df_500[i, 3]
}
df_500 <- df_500[-896,]

df_500 <- df_500 %>% 
  mutate(p = Delta_V/Delta_I)

plot2 <- df_500 %>% 
  ggplot(aes(x = I_D1, y = p)) +
  geom_line() +
  theme_minimal() +
  labs(title = "p vs. I_D1", x = "I_D1 (A)", y = "p (Ohms)")
plot(plot2)

head(filter(df_500, df_500$p < 50), n = 1L)

#================================================================
#Question 2

df2 <- read.csv("~/Coding/R_Studio_Code/Courses/PHYS 3364/CircuitLab_simulation_2026-02-12T10_08_37.895Z.csv")

plot3 <- df2 %>% 
  ggplot(aes(x = V.V_D., y = I.D1.nK.)) +
  geom_line() +
  theme_minimal() +
  labs(title = "I_D1 vs. V_D", x = "V_D (V)", y = "I_D1 (A)")
plot(plot3)


