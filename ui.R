
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("How old are you?"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        dateInput("dob", "Date of Birth:", value = "2016-05-29"),
        selectInput("units","Select Units:", c("days", "months", "years"), "years")
    ),

    # Show a plot of the generated distribution
    mainPanel(
        
            p("You are ", 
              textOutput("age"),
              " old.")
        
    )
  )
))
