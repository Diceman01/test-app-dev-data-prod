
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

    output$age <- renderText({
        
        
        if(input$units == "days") {
            age <- difftime(Sys.Date(), input$dob, "days")
        } else if (input$units == "months") {
            age <- as.POSIXlt(Sys.Date())$mon - as.POSIXlt(input$dob)$mon +
                12 * (as.POSIXlt(Sys.Date())$year - as.POSIXlt(input$dob)$year)
        } else { 
            age <- as.POSIXlt(Sys.Date())$year - as.POSIXlt(input$dob)$year
        }
        
        paste(age, input$units)
        
    }) 
})
