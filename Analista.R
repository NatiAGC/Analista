#Carga de paquetes

library(tidyverse)
library(readxl)
library(dplyr)
library(writexl)
library(stringr)


#Exportación de bases
Planilla <- read_xlsx("C:/Users/npvazquez/Desktop/AGC_DATOS/Exportaciones/RegistroDesvios2809.xlsx")

Planilla <- Planilla %>%
  filter(ID > 800) %>%
  rename('JulietaO' = "Julieta O.")

Planilla <- Planilla %>%
  select ("NSUACI","Fecha_reporte_desvio", "Fecha_desvío", "Ubicacion", "Descripcion_desvio", "Motivo", "Cierre_correcto","Aldana", "Francisco", "Ignacio", "Jazmín", "Julieta", "JulietaO", "Lisandro", "Natalia", "Santiago")

Planilla <- Planilla %>%
  add_column ("Comentario" = NA,
            "Comentario Lu" = NA)

order_PL <- c("NSUACI","Fecha_reporte_desvio", "Fecha_desvío", "Ubicacion", "Descripcion_desvio", "Motivo", "Cierre_correcto","Comentario", "Comentario Lu", "Aldana", "Francisco", "Ignacio", "Jazmín", "Julieta", "JulietaO", "Lisandro", "Natalia", "Santiago")

Planilla <- Planilla [, order_PL]

Planilla <- Planilla %>%
  arrange(Ubicacion, by_group = TRUE)

#Aldi
Desvíos_Aldana <- Planilla %>%
  filter(Aldana == "x" |
           Aldana == "X")
Desvíos_Aldana <- Desvíos_Aldana %>%
  rename ('Comentario Aldana' = "Comentario")
  
write_xlsx(x = Desvíos_Aldana, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Aldana.XLSX')

#Fran
Desvíos_Francisco <- Planilla %>%
  filter(Francisco == "x" |
           Francisco == "X")
Desvíos_Francisco <- Desvíos_Francisco %>%
  rename ('Comentario Francisco' = "Comentario")

write_xlsx(x = Desvíos_Francisco, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Francisco.XLSX')

#Nacho
Desvíos_Ignacio <- Planilla %>%
  filter(Ignacio == "x" |
           Ignacio == "X")

Desvíos_Ignacio <- Desvíos_Ignacio %>%
  rename ('Comentario Ignacio' = "Comentario")

write_xlsx(x = Desvíos_Ignacio, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Ignacio.XLSX')

#Jazmín
Desvíos_Jazmín <- Planilla %>%
  filter(Jazmín == "x" |
           Jazmín == "X")

Desvíos_Jazmín <- Desvíos_Jazmín %>%
  rename ('Comentario Jazmín' = "Comentario")

write_xlsx(x = Desvíos_Jazmín, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Jazmín.XLSX')

#Julieta
Desvíos_Julieta <- Planilla %>%
  filter(Julieta == "x" |
           Julieta == "X")

Desvíos_Julieta <- Desvíos_Julieta %>%
  rename ('Comentario Julieta' = "Comentario")

write_xlsx(x = Desvíos_Julieta, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Julieta.XLSX')

#JulietaO
Desvíos_JulietaO <- Planilla %>%
  filter( JulietaO == "x" |
          JulietaO == "X")

Desvíos_JulietaO <- Desvíos_JulietaO %>%
  rename ('Comentario Julieta O' = "Comentario")

write_xlsx(x = Desvíos_JulietaO, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_JulietaO.XLSX')

#Lisandro
Desvíos_Lisandro <- Planilla %>%
  filter(Lisandro == "x" |
           Lisandro == "X")

Desvíos_Lisandro <- Desvíos_Lisandro %>%
  rename ('Comentario Lisandro' = "Comentario")

write_xlsx(x = Desvíos_Lisandro, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Lisandro.XLSX')

#Natalia
Desvíos_Natalia <- Planilla %>%
  filter(Natalia == "x" |
           Natalia == "X")

Desvíos_Natalia <- Desvíos_Natalia %>%
  rename ('Comentario Natalia' = "Comentario")

write_xlsx(x = Desvíos_Natalia, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Natalia.XLSX')

#Santiago
Desvíos_Santiago <- Planilla %>%
  filter(Santiago == "x" |
           Santiago == "X")

Desvíos_Santiago <- Desvíos_Santiago %>%
  rename ('Comentario Santiago' = "Comentario")

write_xlsx(x = Desvíos_Santiago, path ='C:/Users/npvazquez/Desktop/AGC_DATOS/RESULTADOS_CONTROLES/Desvíos_Santiago.XLSX')
















