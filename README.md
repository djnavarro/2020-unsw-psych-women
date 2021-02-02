# IWD 2020 site

The site has been shifted to R Markdown, so you can render the whole thing like this:

```
rmarkdown::render_site(input = ".")
```

Notes:

- The 2018 version is "orphaned", in the sense of being archived in the `2018` folder and not in any way tied to the R Markdown site. That folder just gets copied into the `docs` folder. 
- The 2019 version is generated from `2019.Rmd` 
- The `bootstrap.min.css` file supplies the [pulse bootswatch theme](https://bootswatch.com/pulse/) 
- The `img` folder contains all the images seaprately for each year
- The `data` folder contains csv files with the profile info separately for each year

