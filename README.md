# R Project 

<h1 align="left">Index Funds</h1>

<p>Selection of index funds to visually find a desire ETF to view prices
over a one year period.</p>

<h2>Installation</h2>

```R
# first install the R package "devtools" if not installed (install.packages("devtools")
devtools::install_github('unimi-dse/f13b0221')
```

<h2>Dataset</h2>

<p>This package provides a data set of index funds selected for blockchain technologies companies.</p>

```R
# dataset documentation
?IndexFunds::indexfunds
```

<h2>Usage</h2>
```R
# Load the package
require(indexfunds)
```
<h3>Functions</h3>
> #### The main function is the following:
>
> - indexfunds. Will allow to select the ticker of your choice.
> - loaddata. Will store the data collected from Yahoo source.
>
>  *Ticker* selected shoud be represented **graphically**.

<h2>Shiny App</h2>

The function `indexfunds()` runs a Graphical User Interface to present the data slected by the user. 

```R
indexfunds()
```

