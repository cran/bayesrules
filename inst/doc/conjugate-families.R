## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(bayesrules)

## ----fig.align='center', fig.height=4, fig.width=5----------------------------
plot_beta(alpha = 3, beta = 13, mean = TRUE, mode = TRUE)

## -----------------------------------------------------------------------------
summarize_beta(alpha = 3, beta = 13)

## ----fig.align='center', fig.height=4, fig.width=5, message = FALSE-----------
plot_binomial_likelihood(y = 3, n = 15, mle = TRUE)

## ----fig.align='center', warning = FALSE, fig.height=4, fig.width=5-----------
plot_beta_binomial(alpha = 3, beta = 13, y = 5, n = 10, 
                   prior = TRUE, #the default 
                   likelihood = TRUE,  #the default
                   posterior = TRUE #the default
                   )

## ----fig.align='center', warning = FALSE, fig.height=4, fig.width=5-----------
summarize_beta_binomial(alpha = 3, beta = 13, y = 5, n = 10)

## ----fig.align='center', warning = FALSE, fig.height=4, fig.width=5-----------
plot_gamma_poisson(
  shape = 3,
  rate = 4,
  sum_y = 3,
  n = 9,
  prior = TRUE,
  likelihood = TRUE,
  posterior = TRUE
)

## -----------------------------------------------------------------------------
summarize_normal_normal(mean = 3.8, sd = 1.12, sigma = 5.8, y_bar = 3.35, n = 8)

