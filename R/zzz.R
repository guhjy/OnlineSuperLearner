#' General packages used by all of the other classes
#' @import methods
#' @import R.oo
#' @import R.utils
#' @importFrom R.utils Arguments
#' @import magrittr
#' @import parallel
generalImports <- list()

# General fixes, for usability
expit <- plogis
logit <- qlogis
throw <- stop

# Helper functions
#' Checks whether an object is an instance of the provided class
#' @param obj the object to check the class from
#' @param obj.class the class which we expect it to enherit from
is.a <- function(obj, obj.class) {
  obj.class <- Arguments$getCharacter(obj.class)
  obj.class %in% class(obj)
}