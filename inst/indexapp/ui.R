
# Define UI for application that draws a chart
shiny::shinyUI(fluidPage(

    # Application title
    titlePanel("Index Funds"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            # Dropdown menu for selecting pollutant
            selectInput("indexfunds",
                        label = "Select ETF",
                        choices = c('KOIN','BLOK','BLCN','LEGR'),
                        selected = "KOIN"),
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("graph")

        )
    )
))
