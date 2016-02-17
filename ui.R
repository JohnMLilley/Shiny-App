library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculation"),
  
    sidebarPanel(
      helpText("Please enter your height in inches"),
      numericInput('height', 'Height inches', 67, min = 48, max = 84, step = 1),
      helpText("Please enter your weight in pounds"),
      numericInput('weight', 'Weight pounds', 150, min = 100, max = 250, step = 1),
      helpText("Click on Submit to see your calculated BMI"),
      submitButton('Submit')
    ),
    mainPanel(
        h3('BMI Results'),
        h4('You entered'),
        p('Height'), verbatimTextOutput("input_height"),
        p('Weight'), verbatimTextOutput("input_weight"),
        h4('Calculated BMI: '),
        verbatimTextOutput("BMIcalc"),
        verbatimTextOutput("prognosis")
        
    )
  )
)

