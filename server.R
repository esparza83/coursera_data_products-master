library(shiny)
library(qdap)

shinyServer( function(input, output,session) {
  output$caption <- renderText({
    sen <- as.character(paste0(input$variable, ' and ',input$caption))
    sen <-counts(polarity(sen)) 
    index <- round((sum(sen$polarity) +2)/4 ,digits = 2)*100
    level <- paste0(index,'%')
    level
    })
})