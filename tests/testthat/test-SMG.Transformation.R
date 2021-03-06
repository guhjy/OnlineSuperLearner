context("SMG.Transformation.R")
described.class <- SMG.Transformation

context(' initialize')
test_that("it should initialize", {
  function_to_use  <- sin
  suffix  <- 'sin'
  colnames_to_use <- c('x1', 'x2')
  expect_error(described.class$new(function_to_use = function_to_use, suffix = suffix, colnames_to_use = colnames_to_use),
               NA)
})

context(' update')

context(' process')
test_that("it should provide the correct transformation of the data", {
  function_to_use  <- sin
  suffix  <- 'sin'
  colnames_to_use <- c('x1', 'x2')
  subject <- described.class$new(function_to_use = function_to_use, suffix = suffix, colnames_to_use = colnames_to_use)
  data <- data.table(x1=c(0,1,2,3),x2=c(1000,900,800,700), x3=c(9,7,5,3), y=c(1,0,1,0))
  result <-  subject$process(data)
  expect_equal(result$x1_sin, sin(c(0,1,2,3)))
  expect_equal(result$x2_sin, sin(c(1000,900,800,700)))

  function_to_use  <- cos
  suffix  <- 'cos'
  colnames_to_use <- c('x1', 'x2')
  subject <- described.class$new(function_to_use = function_to_use, suffix = suffix, colnames_to_use = colnames_to_use)
  data <- data.table(x1=c(0,1,2,3),x2=c(1000,900,800,700), x3=c(9,7,5,3), y=c(1,0,1,0))
  result <-  subject$process(data)
  expect_equal(result$x1_cos, cos(c(0,1,2,3)))
  expect_equal(result$x2_cos, cos(c(1000,900,800,700)))
})

test_that("it should set the correct colnames", {
  function_to_use  <- cos
  suffix  <- 'cos'
  colnames_to_use <- c('x1', 'x2')
  subject <- described.class$new(function_to_use = function_to_use, suffix = suffix, colnames_to_use = colnames_to_use)
  data <- data.table(x1=c(0,1,2,3),x2=c(1000,900,800,700), x3=c(9,7,5,3), y=c(1,0,1,0))
  result <-  subject$process(data)
  expect_equal(names(result), c('x1_cos', 'x2_cos'))
})

test_that("it should return the correct number of rows?", {
  
})
