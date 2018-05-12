# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  # A page header
  h1("MPG Dataset Exploration"), 
  
  # Add a select input for the x variable
selectInput("x_var", "Choose the X Variable", choices = select_values),
  
  # Add a select input for the y variable
selectInput("y_var", "Choose the Y Variable", choices = select_values),


  # Add a sliderInput to set the size of each point
sliderInput("size", "Choose the circle size", 1, 100, 10),

  # Add a selectInput that allows you to select a color from a list of choices
selectInput("color", "Choose the Color", choices = c(
  "blue",
  "green"
))
plotOutput("scatter")

  # Plot the output with the name "scatter"
)
shinyUI(ui)
