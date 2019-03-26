library(shiny)

shinyUI(
  
  fluidPage(
    
    titlePanel("Overview of Violent Crime Rates by US State"),
    
    sidebarLayout(
      
      # Definition of side bar
      sidebarPanel(
        selectInput("crime", "Type of crime:",
                    choices=c("Murder", "Assault", "Rape")),
        selectInput("state", "State:",
                    choices=row.names(USArrests)),
        hr(),
        helpText("Data that shows violent crime rates by US state.", br(),
                 "Select the type of crime and state to get a barplot.")),
      
      mainPanel(
        plotOutput("plot1")))))