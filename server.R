library(shiny)

BMI <- function(height,weight) (weight/(height*height))*703

shinyServer(
  function(input, output) {
    output$input_height <- renderText({input$height})
    output$input_weight <- renderText({input$weight})
    output$BMIcalc <- renderText({BMI(input$height,input$weight)})
    output$prognosis <- renderText({
             if (BMI(input$height,input$weight) >= 30) "You are obese!"
             else if (BMI(input$height,input$weight) >= 25) "You are overweight"
             else if (BMI(input$height,input$weight) < 18.5) "You are seriously underweight"
             else if (BMI(input$height,input$weight) < 20) "You are underweight"
             else "You are within the ideal weight range for your height"
    })
  }
)
