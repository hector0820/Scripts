require(data.table)
setwd("Downloads")
!file.exists("inegi.zip") && download.file(
  "https://www.inegi.org.mx/contenidos/programas/enoe/15ymas/datosabiertos/2022/conjunto_de_datos_enoen_2022_1t_csv.zip",
  "inegi.zip"
)
unzip("inegi.zip")
setwd("conjunto_de_datos_sdem_enoen_2022_1t/conjunto_de_datos/")
test <- fread("conjunto_de_datos_sdem_enoen_2022_1t.csv")
class(test)

fread("conjunto_de_datos_sdem_enoen_2022_1t.csv",
      select = c("est", "ageb", "salario")) |>
  dplyr::slice(1:3)

library("DBI")
library("RSQLite")
dbWriteTable(prueba, "VIV", read.csv("../../conjunto_de_datos_viv_enoen_2022_1t/conjunto_de_datos/conjunto_de_datos_viv_enoen_2022_1t.csv"), append = T)
library(dplyr)
dbListFields(prueba, "SDEM")
dbListFields(prueba, "VIV")
dbReadTable(prueba, "SDEM")

test |>
  select(sex, ing_x_hrs) |>
  group_by(sex) |>
  filter(ing_x_hrs > 0) |>
  summarise(mean = mean(ing_x_hrs))


tbl(prueba, "SDEM", "VIV") |>
  select(sex, ing_x_hrs, tipo) |>
  filter(ing_x_hrs > 0)
 


