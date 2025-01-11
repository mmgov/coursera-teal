library(teal.modules.general)
library(sparkline)
library(tern)
library(forcats)

#ADSL <- pharmaverseadam::adsl

ADTTE <- pharmaverseadam::adtte_onco

app <- teal::init(
  data = cdisc_data(
    ADSL = df_explicit_na(example_cdisc_data("ADSL")),
    ADAE = df_explicit_na(example_cdisc_data("ADAE")),
    ADTTE = df_explicit_na(example_cdisc_data("ADTTE")),
    verify = TRUE
  ),
  modules = teal::modules(
  tm_data_table(),
  tm_variable_browser()
  )
)
shinyApp(app$ui, app$server)
