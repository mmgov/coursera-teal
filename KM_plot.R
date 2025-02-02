library(teal.modules.general)
library(teal.modules.clinical)
library(sparkline)
library(tern)
library(forcats)
library(dplyr)



ADSL <- df_explicit_na(pharmaverseadam::adsl)
ADAE <- df_explicit_na(pharmaverseadam::adae)
ADTTE <- df_explicit_na(pharmaverseadam::adtte_onco)

arm_levels <-c("Screen Failure","Placebo","Xanomeline Low Dose","Xanomeline High Dose")


ADSL <- ADSL %>% 
  mutate(
    TRT01P = fct_relevel(TRT01P, arm_levels),
    TRT01A = fct_relevel(TRT01A, arm_levels)
  )


ADDT