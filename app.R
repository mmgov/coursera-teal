library(teal)
library(shiny)

app <- teal::init(
  data = teal_data(
    iris = iris, 
    mtcars = mtcars
  ),
  modules = example_module(),
  header = "my life",
  footer = "good learning"
)
shinyApp(app$ui, app$server)
