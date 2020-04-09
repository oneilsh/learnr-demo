# RStudio, LearnR, and Shiny demos on BinderHub

[![Binder](http://mybinder.org/badge_logo.svg)](http://mybinder.org/v2/gh/datasci-osu/dsosuk8s/master?urlpath=git-pull?repo=https%3A%2F%2Fgithub.com%2Foneilsh%2Flearnr-demo%26urlpath=rstudio)

This is a demo of RStudio, learnr, and a shiny dashboard. It's build to be launched
on MyBinder with `urlpath=rstudio` containing an `.Rprofile` that looks for files called `rstudio-launch.R` and sources them. 

This repo's `rstudio-launch.R` prompts the user with a dialog to go directly to RStudio, or to
open one of the included `learnr` or `shiny` demos; if the latter, the user is prompted to choose a `.launch` file that will be sourced to execute the demo.

