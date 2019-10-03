

# This script creates all the html templates needed for showcase
library(rmarkdown)
library(here)

themes <- c("default", "cerulean", "journal", "flatly",
            "darkly", "readable", "spacelab", "united",
            "cosmo", "lumen", "paper", "sandstone", "simplex", 
            "yeti", "null")
pretty <- c("cayman", "tactile", "architect", "leonids", "hpstr")
rmdformats <- c("readthedown", "html_clean", "html_docco", "material")
for(atheme in c(themes, pretty)) {
  if(atheme == "null") {
    render(here("slides", "html_template.Rmd"),
           output_format = html_document(theme = NULL),
           output_file = glue::glue("html_template_{atheme}.html"),
           output_dir = here("slides", "html"))
  } else if(atheme %in% pretty){
    render(here("slides", "html_template.Rmd"),
           output_format = prettydoc::html_pretty(theme = atheme),
           output_file = glue::glue("html_template_{atheme}.html"),
           output_dir = here("slides", "html"))
  } else if(atheme %in% rmdformats) {
    render(here("slides", "html_template.Rmd"),
           output_format = eval(parse(text = glue::glue("rmdformats::{atheme}()"))),
           output_file = glue::glue("html_template_{atheme}.html"),
           output_dir = here("slides", "html"))    
  } else {
    render(here("slides", "html_template.Rmd"),
           output_format = html_document(theme = atheme),
           output_file = glue::glue("html_template_{atheme}.html"),
           output_dir = here("slides", "html"))
  }
  webshot::webshot(here("slides", "html", glue::glue("html_template_{atheme}.html")),
                   file = here("slides", "images", glue::glue("html_template_{atheme}.png")),
                   delay = 1, 
                   vwidth = 600)
}


