
# set tickers

loaddata<-function(tickers){

    # set dates
    first.date <- Sys.Date() - 360
    last.date <- Sys.Date()
    freq.data <- 'daily'


    #tickers <- c('KOIN','BLOK','BLCN','LEGR')
    l.out <- BatchGetSymbols::BatchGetSymbols(tickers = tickers,
                                              first.date = first.date,
                                              last.date = last.date,
                                              freq.data = freq.data,
                                              cache.folder = file.path(tempdir(),
                                                                       'BGS_Cache') ) # cache in tempdir()
    print(l.out$df.control)
    return(l.out)
}

# Define server logic required to draw a histogram
shiny::shinyServer(

    function(input, output) {


        output$graph <- renderPlot({
            dataset<-loaddata(input$indexfunds)

            p<- ggplot2::ggplot(dataset$df.tickers, ggplot2::aes(x = ref.date, y = price.close))
            p<- p + ggplot2::geom_line()
            p<- p + ggplot2::facet_wrap(~ticker, scales = 'free_y')

            p


        }

        )

    })
