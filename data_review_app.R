library(teal.modules.general)
library(sparkline)

#ADSL <- pharmaverseadam::adsl

ADTTE <- pharmaverseadam::adtte_onco

app <- teal::init(
  data = cdisc_data(
    ADSL = example_cdisc_data("ADSL"),
    ADAE = example_cdisc_data("ADAE"),
    ADTTE = example_cdisc_data("ADTTE"),
    verify = TRUE
  ),
  modules = teal::modules(
  tm_data_table(),
  tm_variable_browser()
  )
)
shinyApp(app$ui, app$server)
