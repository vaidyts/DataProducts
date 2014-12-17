library(shiny)

shinyServer(function(input, output) {
  data(mtcars)
  mtcars <- cbind(Name=row.names(mtcars),mtcars)
  output$carstable <- renderDataTable(
  mtcars[ ( (mtcars$mpg  >= input$mpgrange[[1]])  & (mtcars$mpg <= input$mpgrange[[2]])  &
            (mtcars$cyl  >= input$cylrange[[1]])  & (mtcars$cyl <= input$cylrange[[2]])  &
            (mtcars$disp >= input$disprange[[1]]) & (mtcars$disp <= input$disprange[[2]]) &
            (mtcars$hp   >= input$hprange[[1]])   & (mtcars$hp <= input$hprange[[2]])   &
            (mtcars$gear >= input$gearrange[[1]]) & (mtcars$gear <= input$gearrange[[2]]) &
            (input$chkauto*(mtcars$am == !(input$chkauto)) | input$chkman*(mtcars$am == input$chkman))
          ),
        ]
  )
})