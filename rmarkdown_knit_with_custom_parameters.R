# rmarkdown Knit with custom parameters

# 15.3.2 Knit with custom parameters
# Even if your document has the params field in the YAML metadata, you can actually override it by providing a custom list of parameter values to the function rmarkdown::render(). For example:
    
    
rmarkdown::render("MyDocument.Rmd", params = list(
        year = 2017,
        region = "Asia",
        printcode = FALSE,
        file = "file2.csv"
    ))

# a function could also be used to create an output file with a different filename for each of the different combination of parameters.

render_report = function(region, year) {
    rmarkdown::render(
        "MyDocument.Rmd", params = list(
            region = region,
            year = year
        ),
        output_file = paste0("Report-", region, "-", year, ".pdf")
    )
}
