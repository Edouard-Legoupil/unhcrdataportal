# WARNING - Generated by {fusen} from /dev/flat_full.Rmd: do not edit by hand


test_that("odp works", {
  expect_true(inherits(odp, "function")) 
})

# Define unit tests for odp function
test_that("odp returns sitemap when page is NULL", {
  sitemap <- odp()
  expect_true(is.data.frame(sitemap))
})

test_that("odp returns specific page from sitemap", {
  page <- "Sudan situation"
  result <- odp(page)
  expect_true(is.data.frame(result))
  expect_equal(result[["page_name"]][[1]], page)
})


test_that("odp returns population data correctly", {
  page <- "Sudan situation"
  dataset <- "population"
  result <- odp(page = page, dataset =  dataset  )
  expect_true(is.list(result))
})


