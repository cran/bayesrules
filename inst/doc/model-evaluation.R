## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(bayesrules)

## ----comment =""--------------------------------------------------------------
# Data generation
example_data <- data.frame(x = sample(1:100, 20)) 
example_data$y <- example_data$x*3 + rnorm(20, 0, 5)


# rstanreg model
example_model <- rstanarm::stan_glm(y ~ x,  data = example_data, refresh = FALSE)

# Prediction Summary
prediction_summary(example_model, example_data, 
                   prob_inner = 0.6, prob_outer = 0.80, 
                   stable = TRUE)


## ----comment =""--------------------------------------------------------------
prediction_summary_cv(model = example_model, data = example_data, 
                      k = 2, prob_inner = 0.6, prob_outer = 0.80)

## ----comment =""--------------------------------------------------------------
# Data generation
x <- rnorm(20)
z <- 3*x
prob <- 1/(1+exp(-z))
y <- rbinom(20, 1, prob)
example_data <- data.frame(x = x, y = y)


# rstanreg model
example_model <- rstanarm::stan_glm(y ~ x, data = example_data, 
                                    family = binomial, refresh = FALSE)

# Prediction Summary
classification_summary(model = example_model, data = example_data, cutoff = 0.5)                   

## ----comment =""--------------------------------------------------------------
classification_summary_cv(model = example_model, data = example_data, k = 2, cutoff = 0.5)                   

## ----comment=""---------------------------------------------------------------
# Data
data(penguins_bayes, package = "bayesrules")

# naiveBayes model
example_model <- e1071::naiveBayes(species ~ bill_length_mm, data = penguins_bayes)

# Naive Classification Summary
naive_classification_summary(model = example_model, data = penguins_bayes, y = "species")

## ----comment=""---------------------------------------------------------------
naive_classification_summary_cv(model = example_model, data = penguins_bayes, 
                                y = "species", k = 2)

