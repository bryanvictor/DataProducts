shinyUI(
  pageWithSidebar(
  headerPanel("Household Income and the Poverty Line"),

    sidebarPanel(
      helpText("A number of government assistance programs determine
               eligibibilty based on how much a household earns in 
               relation to the poverty line.  Eligibility guidelines
               often speak in terms of percentages (e.g. Must earn less
               250% of the poverty threshold to qualify).

               This app can be used to convert your current household
               income into a percertage of the poverty threshold based
               on poverty levels established in January 2016.  Note that 
               the poverty threshold varies based on household size."),
      
      selectInput("household_size", 
                  label = "Choose the number of people in your 
                           household (including yourself):",
                  choices = c("1",
                              "2",
                              "3",
                              "4",
                              "5",
                              "6",
                              "7",
                              "8",
                              "9",
                              "10"),
                  selected = "None"),
      
      numericInput("household_income", 
                  label = "Please enter your current household income
                           (Do not use a dollar sign):", value = 0),
      submitButton('Submit')
),

mainPanel(
  textOutput("prediction")
  )))    

