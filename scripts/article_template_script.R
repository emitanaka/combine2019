library(rmarkdown)
library(here)
library(rticles)
library(glue)
library(pdftools)

journals <- c("acm_article", "acs_article", "aea_article", "agu_article", 
              "amq_article", "ams_article", "asa_article", "biometrics_article", 
              "copernicus_article", 
              "elsevier_article", "frontiers_article", "ieee_article", "jss_article", 
              "mdpi_article", "mnras_article", "peerj_article", "plos_article", 
              "pnas_article", "rsos_article", "rss_article", 
              "sage_article", "sim_article", "springer_article", "tf_article")
journals <- c("rsos_article", "rss_article", 
              "sage_article", "sim_article", "springer_article", "tf_article")

for(manuscript in journals) {
  draft_manuscript <- here("slides", "articles", glue("article_template_{manuscript}"),
                    glue("article_template_{manuscript}.Rmd"))
  if(!file.exists(draft_manuscript)) {
    draft(here("slides", "articles", glue("article_template_{manuscript}.Rmd")),
          template = manuscript, 
          create_dir = TRUE,
          package = "rticles",
          edit = FALSE)
  }
  render(draft_manuscript)
  pdf_from <- here("slides", "articles", glue("article_template_{manuscript}"),
                           glue("article_template_{manuscript}.pdf"))
  pdf_to <- here("slides", "articles", 
                   glue("article_template_{manuscript}.pdf"))
  file.copy(from = pdf_from,
            to = pdf_to)
  png_file <- here("slides", "articles", 
                 glue("article_template_{manuscript}.png"))
  pdf_convert(pdf_to,
              pages = 1,
              filenames = png_file
              )
}

# oddly R journal has issues rendering via command line
# it compiled fine via texstudio
# actually seems to generate the output as RJwrapper.pdf...
# I manually changed it to the format I need
manuscript <- "rjournal_article"
pdf_from <- here("slides", "articles", glue("article_template_{manuscript}"),
                 glue("article_template_{manuscript}.pdf"))
pdf_to <- here("slides", "articles", 
               glue("article_template_{manuscript}.pdf"))
file.copy(from = pdf_from,
          to = pdf_to)
png_file <- here("slides", "articles", 
                 glue("article_template_{manuscript}.png"))
pdf_convert(pdf_to,
            pages = 1,
            filenames = png_file
)
