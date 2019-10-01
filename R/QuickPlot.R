QuickPlot <- function(data = NULL,
                      viewer = "dialog") {


  # res_data <- get_data(data, name = deparse(substitute(data)))
  # if (!is.null(res_data$esquisse_data)) {
  #   res_data$esquisse_data <- dropListColumns(res_data$esquisse_data)
  # }
  # rv <- reactiveValues(
  #   data = res_data$esquisse_data,
  #   name = res_data$esquisse_data_name
  # )

  if (viewer == "browser") {
    inviewer <- shiny::browserViewer(browser = getOption("browser"))
  } else if (viewer == "pane") {
    inviewer <- shiny::paneViewer(minHeight = "maximize")
  } else {
    inviewer <- shiny::dialogViewer(
      "ggQuickPlot",width=1350,height=1000

    )
  }

  appDir <- system.file("shiny-code", "app", package = "ggQuickPlotR")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `ggQuickPlotR`.", call. = FALSE)
  }

  #shiny::runApp(appDir, display.mode = "normal")

  shiny::runGadget(shiny::shinyAppDir(appDir = appDir),
    viewer = inviewer
  )
}
