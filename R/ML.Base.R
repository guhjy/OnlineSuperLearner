#' Base class for any machine learning model. Extend this class if you want to create a new machine learning model.
#'
#' @docType class
#' @importFrom R6 R6Class
#' @field model the most recent / best model fitted.
#' @field iteration the iteration we are currently on. This is needed for calculating the average cv risk score
#' @field CV.risk the calculated crossvalidated risk of the estimator
#' @section Methods:
#' \describe{
#'   \item{\code{new()}}{This method is used to create object of this class. }
#'
#'   \item{\code{fit(data, X, Y)}}{Method to fit the current machine learning model. Should be overridden in the subclass.}
#'   \item{\code{predict(data, X)}}{Method to predict using the current model.}
#'   \item{\code{getModel()}}{Getter for the latest model.}
#'}
ML.Base <- R6Class("ML.Base",
  inherit = condensier::logisfitR6,
  public =
    list(
      fitfunname='ml.base',
      lmclass='ML.BaseR6',

      process = function(X_mat, Y_vals, X_mat_test, Y_vals_test) {
        throw('Deprecated!')
      },

      # Functions for testing only
      perform_prediction = function(...) {
        private$do.predict(...)
      },

      perform_fit = function(...) {
        private$do.fit(...)
      },

      perform_update = function(...) {
        private$do.update(...)
      }
    ),
  active =
    list(
      ),
  private =
    list(
        do.fit = function(X_mat, Y_vals) {
          throw('The fit method needs to be inherited')
        },

        do.predict = function(X_mat, m.fit) {
          warning("You are using the base predict function, you'd probably want to inherit and override this")
          if (is.null(m.fit)) {
            throw('Train the model first')
          }
          pred <- predict(m.fit, X_mat)
        }
    )
)

