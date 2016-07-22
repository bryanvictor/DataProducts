
percent_poverty <- function(household_size, household_income) {
  
  
  if (household_size=="1") { y<-11880}
  if (household_size=="2") { y<-16020}
  if (household_size=="3") { y<-20160}
  if (household_size=="4") { y<-24300}
  if (household_size=="5") { y<-28440}
  if (household_size=="6") { y<-32580}
  if (household_size=="7") { y<-36730}
  if (household_size=="8") { y<-40890}
  if (household_size=="9") { y<-45050}
  if (household_size=="10") { y<-49210}
  
  prediction <- round(household_income / y * 100, digits = 0)
  
  
  output <- paste0("Based on your stated household size of ", household_size, 
                   " and your household income of $", household_income, ", your family is currently at ",
                   prediction, "% of the poverty threshold.")
  cat(output)
}

shinyServer(
function(input, output) {
  
  output$prediction <- renderPrint({percent_poverty(input$household_size, input$household_income)})
}
  )