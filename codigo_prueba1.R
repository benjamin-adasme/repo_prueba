pacman::p_load(tidyverse,
               readxl,
               readxlsb)

df1 <- read_xlsb("os2_acc_2021_v2.xlsb", sheet = 1)
