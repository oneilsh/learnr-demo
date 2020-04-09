lessons_selected <- rstudioapi::showQuestion("Welcome",
                        "Welcome to RStudio, an integrated development environment (IDE) for R. Note that if this page has been launched from a public service (like mybinder.org), changes made here may not persist. Privately hosted services usually don't have this restriction.\n\nRStudio can be used to edit code as well as run lessons (with learnr) and dashboards (with shiny). \n\nWhich would you like to try?",
                        ok = "See Lessons & Dashboards",
                        cancel = "Open RStudio IDE")

if(lessons_selected) {
  applaunch <- rstudioapi::selectFile(label = "Select Lesson/Dashboard",
                              caption = "Choose which lesson or dashboard you'd like to open.",
                              path = "~/learnr-demo/",
                              filter = "Launch File (*.launch)")
  #applaunch <- paste0(dir, "/launch.R")
  if(file.exists(applaunch)) {
    source(applaunch)
  } else {
    error("Whoops, I was expecting to find a launch.R script in that folder, but didn't!")
  }
}
