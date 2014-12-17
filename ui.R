library(shiny)

shinyUI(fluidPage(

  titlePanel("*** Welcome to the Vintage Cars Selector !!! ***"),
  
  img(src="64oldsmobileF.jpg"),

  sidebarLayout(
    sidebarPanel(
      h3("1. Please provide the requirements of the vintage car you desire"),
      
      checkboxInput("chkauto", "Automatic", value=TRUE),
      
      checkboxInput("chkman", "Manual", value=TRUE),      
      
      sliderInput("mpgrange", "Miles Per Gallon",
                  min = 10, max = 40, step=1, value = c(10,40)),

      sliderInput("cylrange", "Number of Cylinders",
                  min = 4, max = 8, step=2, value = c(4,8)),
      
      sliderInput("disprange", "Engine Displacement (cc)",
                  min = 50, max = 500, step=50, value = c(50,500)),
      
      sliderInput("hprange", "Horse Power (Bhp)",
                  min = 50, max = 350, step=50, value = c(50,350)),
      
      sliderInput("gearrange", "Number of gears",
                  min = 3, max = 5, step=1, value = c(3,5))
      
      ),
    
    mainPanel(
      h3("2. Here are the vintage cars meeting your requirements !"),
      dataTableOutput("carstable")
    )
  )
))