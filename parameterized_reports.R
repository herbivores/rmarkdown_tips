# Parameterized reports

render_one <- function(state, year) {
    # assuming the output format of input.Rmd is PDF
    rmarkdown::render(
        'input.Rmd',
        output_file = paste0(state, '-', year, '.pdf'),
        params = list(state = state, year = year),
        envir = parent.frame()
    )
}



# Then you can use nested for-loops to generate all reports:

    for (state in state.name) {
        for (year in 2000:2020) {
            render_one(state, year)
        }
    }

rmarkdown::render("input.Rmd", params = "ask")
rmarkdown::render(..., params = list(state = 'Iowa', year = 2018))



