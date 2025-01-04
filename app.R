library(teal)
library(shiny)

app <- teal::init(
  data = teal_data(
    iris = iris, 
    mtcars = mtcars
  ),
  modules = teal::modules(
    tm_data_table(),
    tm_variable_browser()
  )
)
shinyApp(app$ui, app$server)



