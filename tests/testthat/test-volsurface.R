context("VolSurface")

testthat::test_that("Vol surface creation works", {
  testthat::expect_is(build_vol_surface(), "VolSurface")
})

testthat::test_that("Time variance interpolation creation works", {
  testthat::expect_true(
    is.LinearCubicTimeVarInterpolation(LinearCubicTimeVarInterpolation())
  )
})

testthat::test_that("Time variance interpolation works", {
  maturity <- c(
    as.Date("2023-08-15"), as.Date("2023-10-10"), as.Date("2020-02-29"),
    as.Date("2021-04-15"), as.Date("2022-06-10"), as.Date("2025-06-10")
  )
  smile <- c(3, 96, 150, 80, 90, 300)
  vs <- build_vol_surface()
  res <- interpolate(vs, tibble::tibble(maturity = maturity, smile = smile))
  exp <- c(
    0.6076543447950257, 0.26853916752886564, 0.19909034016558932,
    0.25769535624031686, 0.25855784359768552, 0.26647898600000003
  )
  testthat::expect_equal(round(res, 12), round(exp, 12))
})
