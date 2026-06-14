## ----vectorized calls, eval = TRUE--------------------------------------------
scholidonline::id_exists(
  c("31452104", "999999999"),
  type = "pmid",
  provider = "ncbi"
)

## ----manual loops, eval = TRUE------------------------------------------------
vapply(
  c("31452104", "999999999"),
  function(x) {
    scholidonline::id_exists(
      x,
      type = "pmid",
      provider = "ncbi"
    )
  },
  logical(1)
)

## ----id_exists batching, eval = TRUE------------------------------------------
scholidonline::id_exists(
  c("31452104", "999999999", NA_character_),
  type = "pmid",
  provider = "ncbi"
)

## ----id_metadata batching, eval = TRUE----------------------------------------
scholidonline::id_metadata(
  c("31452104", "999999999", NA_character_),
  type = "pmid",
  provider = "ncbi"
)

## ----id_links batching, eval = TRUE-------------------------------------------
scholidonline::id_links(
  c("PMC6784763", "PMC999999999", NA_character_),
  type = "pmcid",
  provider = "ncbi"
)

## ----id_convert batching, eval = TRUE-----------------------------------------
scholidonline::id_convert(
  c("31469695", "999999999", NA_character_),
  from = "pmid",
  to = "pmcid",
  provider = "ncbi"
)

## ----rate limit default, eval = TRUE------------------------------------------
options(scholidonline.rate_limit = TRUE)

## ----disable rate limiting, eval = TRUE---------------------------------------
options(scholidonline.rate_limit = FALSE)

## ----arxiv throttling, eval = TRUE--------------------------------------------
options(scholidonline.arxiv.min_interval = 3)

## ----NCBI throttling, eval = TRUE---------------------------------------------
options(scholidonline.ncbi.min_interval = 0.34)

## ----PMC throttling, eval = TRUE----------------------------------------------
options(scholidonline.epmc.min_interval = 1)

## ----openalex mailto, eval = TRUE---------------------------------------------
options(scholidonline.openalex.mailto = "you@example.org")

