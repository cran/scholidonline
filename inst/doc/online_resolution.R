## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

is_pkgdown <- identical(Sys.getenv("IN_PKGDOWN"), "true")

## ----example1, eval = TRUE----------------------------------------------------
scholid::is_scholid(
  "10.1000/182",
  type = "doi"
  )

## ----example2, eval = is_pkgdown----------------------------------------------
# scholidonline::id_exists(
#   "10.1000/182",
#   type = "doi"
#   )

