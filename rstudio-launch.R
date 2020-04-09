achtung_shown <- FALSE

chooser <- function() {
  lessons_selected <- rstudioapi::showQuestion("Welcome",
                          "Welcome to RStudio, an open-source integrated development environment (IDE) for R. \n\nRStudio can also help run lessons (with the learnr package) and dashboards (with the shiny package). \n\nWhich would you like to try?",
                          ok = "See Lessons & Dashboards",
                          cancel = "Open RStudio IDE")
  
  if(lessons_selected) {
    if(!achtung_shown) {
      rstudioapi::showDialog("Achtung!", "<p>Select a .launch file of your choice in the next screen.</p><p>When you are done with the lesson or dashboard, come back to this page and select 'Terminate R' from the 'Session' menu to start over.</p>")
      achtung_shown <- TRUE
    }
    applaunch <- rstudioapi::selectFile(label = "Select Lesson/Dashboard",
                                caption = "Choose which lesson or dashboard you'd like to open.",
                                path = "~/learnr-demo/",
                                filter = "Launch File (*.launch)")
    if(file.exists(applaunch)) {
      source(applaunch)
    } else {
      error("Whoops, I was expecting to find a launch.R script in that folder, but didn't!")
    }
  } else {
    rm(achtung_shown)
    rm(chooser)
  }
}

chooser()

