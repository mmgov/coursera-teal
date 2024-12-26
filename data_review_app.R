library(teal.modules.general)

ADSL <- pharmaverseadam::adsl

app <- teal::init(
  data = cdisc_data(
    ADSL = example_cdisc_data("ADSL")
  ),
  modules = teal::modules(
    tm_data_table()
    # ,
    # tm_variable_browser()
  )
)
shinyApp(app$ui, app$server)





