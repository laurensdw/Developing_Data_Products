library(shiny)

shinyServer(function(input, output) {
  
  dataInput <- reactive({
    subset(USArrests, select=c(input$crime), subset=(row.names(USArrests) == input$state))
  })
  
  output$plot1 <- renderPlot({
    
    ## Creation of barplot
    barplot(dataInput()[,input$crime],
            main=paste("Crimes by State"),
            ylab=paste("Amount of ", input$crime), ylim=c(0,400),
            xlab= input$state)
  })
})