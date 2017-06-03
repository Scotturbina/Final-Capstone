#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
    fixedPage(
      column(
        width = 12,
        offset = 1,
        titlePanel("Word prediction app"),
        wellPanel("As everyone knows auto-completion is a common application on mobile devices
                  that helps them to drecrease the time typing a phrase. Basically the application 
                  will show the user the most probable words from the set of words written."),
                  
        fixedRow(
          width=5,
          sidebarPanel(
            span(
              textInput(
                "phrase",
                "Text Input: (Please enter the phrase except the last word)",
                value = ""
              ),
              actionButton("predictButton", "Predict")
            )
          ),
          mainPanel(
            strong("Text input predicted:"),
            textOutput("phrase"),
            strong("Prediction:"),
            textOutput("word")
   
          )
        )
      )
    )
  )
