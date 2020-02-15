#runapp file
#' IndexFunds
#'
#' It will provide the price of the selected ETF. Already pre-select four tickers of the most promising ETF's to invest.
#'
#'
#' @return shiny app
#'
#' @export
indexfunds <- function(){

  shiny::runApp(system.file("indexapp", package = "IndexFunds"))

}



