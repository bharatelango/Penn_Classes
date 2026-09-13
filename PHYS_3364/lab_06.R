library(tidyverse)

Frequency_Hz <- c(10, 20, 30, 50, 70, 100, 300, 1000, 3000, 10000)
Amplitude_NodeA_mV <- c(522.93, 507.26, 506.6, 508.8, 507.4, 505.06, 486.2, 474.06, 461.33, 459.2)
Amplitude_NodeB_mV <- c(19.8, 34.992, 49.618, 81.565, 111.9, 151.09, 327.57, 458.53, 447.97, 447.4)
Phase_Shift_degrees <- c(106.19, 90.08, 86.532, 82.613, 78.462, 74.445, 48.208, 17.428, 6.09, 1.89)

df_total <- data.frame(Frequency_Hz, Amplitude_NodeA_mV, Amplitude_NodeB_mV, Phase_Shift_degrees)

df_total %>% 
  ggplot(aes(x = log10(Frequency_Hz), y = Amplitude_NodeB_mV/Amplitude_NodeA_mV)) +
  geom_point() +
  labs(x = "log(Frequency) (Hz)", y = "Vb/Va", title = "Vb/Va vs. log(Frequency)") +
  theme_minimal()

df_total %>% 
  ggplot(aes(x = log10(Frequency_Hz), y = Phase_Shift_degrees)) +
  geom_point() +
  labs(x = "log(Frequency) (Hz)", y = "Phase Shift (°)", title = "Phase Shift vs. log(Frequency)") +
  theme_minimal()
