% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/feedback-wrappers.R
\name{feedbackSuccess}
\alias{feedbackSuccess}
\title{feedbackSuccess}
\usage{
feedbackSuccess(inputId, condition, text = NULL, color = "#5cb85c",
  icon = shiny::icon("ok", lib = "glyphicon"))
}
\arguments{
\item{inputId}{the Shiny input's \code{inputId} argument}

\item{condition}{condition under which feedback is displayed}

\item{text}{default \code{NULL} text string to display below input}

\item{color}{default \code{"#5cb85c"} the color of the feedback}

\item{icon}{default \code{icon("ok", lib="glyphicon"))} a \code{shiny::icon} object}
}
\description{
wrapper for \code{feedback()} function that displays a
success message by default
}
\examples{

## Only run examples in interacive R sessions
if (interactive()) {
  ui <- fluidPage(
    useShinyFeedback(),
    
    numericInput(
      "exampleInput",
      "Show Feedback When < 0",
      value = -5
    )
  )
  
  server <- function(input, output) {
    observeEvent(input$exampleInput, {
      feedbackSuccess(
        "exampleInput",
        condition = input$exampleInput < 0
      )
    })
  }
  
  shinyApp(ui, server)
}

}
\seealso{
\code{\link{feedback}}, \code{\link{feedbackDanger}}, \code{\link{feedbackSuccess}}

Other feedback wrappers: \code{\link{feedbackDanger}},
  \code{\link{feedbackWarning}}
}
\concept{feedback wrappers}
