library(shiny)


shinyUI(fluidPage(
  
  # Application title
  titlePanel("Text Mining of Hapiness"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("caption", "How was your day?"),
      checkboxGroupInput("variable", "Hit your score and:", c("Drink a good beer","Eat a terrific chocolate cake","Drink a warm te","Have a refreshing soda")),
      submitButton("Reveal your Score"), 
      fluidRow( includeMarkdown("documentation.Rmd"))
       ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      h1("Your current level of hapinnes is:"),
      h2(textOutput("caption", container = span))
    )
  )
))