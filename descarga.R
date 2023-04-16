
# Descarga de archivos ----------------------------------------------------

pacman::p_load(tidyverse,
               readxl,
               httr,
               openxlsx)
#Metodo 1

url1 <- "https://www.carabineros.cl/transparencia/tproactiva/OS2/os2_acc_2023_02.xlsx"

dl_file <- download.file(url1, destfile = tempfile(fileext = ".xlsx"))

#Método 2

r <- GET(url1, write_disk(path = tempfile(pattern = "file"), overwrite = T))

df <- read_xlsx(tf)

#Método 3

df = read.xlsx(url1)
