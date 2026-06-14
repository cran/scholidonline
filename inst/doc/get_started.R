## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

is_pkgdown <- identical(Sys.getenv("IN_PKGDOWN"), "true")

## ----installation, eval = FALSE-----------------------------------------------
# install.packages("scholidonline")

## ----scholidonline_types, eval = TRUE-----------------------------------------
scholidonline::scholidonline_types()

## ----scholidonline capabilities, eval = TRUE----------------------------------
out <- scholidonline::scholidonline_capabilities()
knitr::kable(out)

## ----capabilities by type, eval = TRUE----------------------------------------
out <- scholidonline::scholidonline_capabilities()
knitr::kable(subset(out, type == "openalex"))

## ----id_exists 1, eval = is_pkgdown-------------------------------------------
# scholidonline::id_exists(
#   x    = "10.1000/182",
#   type = "doi"
# )

## ----description, eval = is_pkgdown-------------------------------------------
# scholidonline::id_exists(
#   x = c(
#     "10.1000/182",
#     "12345678"
#   )
# )

## ----conversion 1, eval = is_pkgdown------------------------------------------
# scholidonline::id_convert(
#   x    = "12345678",
#   from = "pmid",
#   to   = "doi"
# )

## ----conversion 2, eval = is_pkgdown------------------------------------------
# scholidonline::id_convert(
#   x = c("12345678", "PMC1234567"),
#   to = "doi"
# )

## ----metadata 1, eval = is_pkgdown--------------------------------------------
# out <- scholidonline::id_metadata(
#   x    = "10.1038/nature12373",
#   type = "doi"
# )
# knitr::kable(out)

## ----metadata 2, eval = is_pkgdown--------------------------------------------
# out <- scholidonline::id_metadata(
#   x = "10.1038/nature12373",
#   type = "doi",
#   fields = c("title", "year", "doi")
# )
# knitr::kable(out)

## ----id_links 1, eval = is_pkgdown--------------------------------------------
# out <- scholidonline::id_links(
#   x    = "PMC1234567",
#   type = "pmcid"
# )
# knitr::kable(out)

## ----mixed data, eval = is_pkgdown--------------------------------------------
# x <- c(
#   "https://doi.org/10.1000/182",
#   "PMCID: PMC1234567",
#   "not an id"
# )
# 
# types <- scholid::detect_scholid_type(x)
# 
# x_norm <- rep(NA_character_, length(x))
# 
# for (i in seq_along(x)) {
#   if (is.na(types[i])) {
#     next
#   }
# 
#   x_norm[i] <- scholid::normalize_scholid(
#     x = x[i],
#     type = types[i]
#   )
# }
# 
# types
# x_norm

## ----mixed data exists, eval = is_pkgdown-------------------------------------
# scholidonline::id_exists(x)

## ----provider selection, eval = is_pkgdown------------------------------------
# scholidonline::id_exists(
#   x        = "10.1000/182",
#   type     = "doi",
#   provider = "crossref"
# )
# 
# scholidonline::id_exists(
#   x        = "10.1000/182",
#   type     = "doi",
#   provider = "doi.org"
# )

