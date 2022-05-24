library(brew)
library(rmarkdown)

# RENDER SITE ----
unlink("_docs", recursive = TRUE)
rmarkdown::render_site()

# CREATE SITEMAP ----
output_dir <- "_docs"
base_url <- "https://lunean.com/pathway_commons/"
file_list <- list.files(output_dir, "html")
writeLines(paste0(base_url, file_list), "sitemap.txt")
