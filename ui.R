library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("This Shiny apps calculate your Age and Display Zodiac sign"),
  sidebarPanel(
    dateInput("birthday", "Please enter your birthday (YYYY-MM-DD) :"),
    checkboxGroupInput("display", "Do you want to:",
                       c("Display Age" = "1",
                         "Display your Zodiac" = "2")),
    # h3("Function:"),
    h5("This application will calculate your age and display your zodiac sign"),
    h5("You choose what to show by clicking any of the above checkboxes."),
    h6("The ui.r and server.r scripts can be viewed via GitHub repository at: https://github.com/nazilacj/Developing_Data_Products")
  ),
  mainPanel(
    img(src="zodiac.png", height = 100, width = 400),
    h5('Your Birthday is:'),
    verbatimTextOutput("age"),
    verbatimTextOutput("zod")
    
  )
))