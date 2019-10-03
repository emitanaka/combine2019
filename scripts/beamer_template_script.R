
library(here)
library(binb)
library(glue)
library(pdftools)
library(rmarkdown)

templates <- c("iqss", "metropolis", "monash", "presento")

for(atemplate in templates) {
  draft_atemplate <- here("slides", "beamer", glue("beamer_template_{atemplate}"),
                           glue("beamer_template_{atemplate}.Rmd"))
  if(!file.exists(draft_atemplate)) {
    draft(here("slides", "beamer", glue("beamer_template_{atemplate}.Rmd")),
          template = atemplate, 
          package = "binb",
          edit = FALSE)
  }
  render(draft_atemplate)
  pdf_from <- here("slides", "beamer", glue("beamer_template_{atemplate}"),
                   glue("beamer_template_{atemplate}.pdf"))
  pdf_to <- here("slides", "beamer", 
                 glue("beamer_template_{atemplate}.pdf"))
  file.copy(from = pdf_from,
            to = pdf_to)
  png_file <- here("slides", "beamer", 
                   glue("beamer_template_{atemplate}.png"))
  pdf_convert(pdf_to,
              pages = 1,
              filenames = png_file
  )
}
