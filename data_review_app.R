library(teal.modules.general)
library(teal.modules.clinical)
library(sparkline)
library(tern)
library(forcats)
library(dplyr)

ADSL <- pharmaverseadam::adsl

ADTTE <- pharmaverseadam::adtte_onco

app <- teal::init(
  data = cdisc_data(
    ADSL = df_explicit_na(example_cdisc_data("ADSL")),
    ADAE = df_explicit_na(example_cdisc_data("ADAE")),
    ADTTE = df_explicit_na(example_cdisc_data("ADTTE")),
    verify = TRUE
  ),
  modules = teal::modules(
  # tm_data_table(),
  # tm_variable_browser()
    tm_t_summary(
      label = "Demographic Table",
      dataname = "ADSL",
      arm_var = choices_selected(
        choices = c("TRT01P","TRT01A"),
        selected = "TRT01P"
      ),
      summarize_vars = choices_selected(
        choices = variable_choices(ADSL),
        selected = c("SEX","AGE")
      ),
      numeric_stats = c("n","mean_sd","median","range")
    )
  )
)
shinyApp(app$ui, app$server)
