# IWD 2019 site

The site has been shifted to R Markdown, so you can render the whole thing like this:

```
rmarkdown::render_site(input = ".")
```

Notes:

- The 2018 version is "orphaned", in the sense of being archived in the `2018` folder and not in any way tied to the R Markdown site. That folder just gets copied into the `docs` folder. 
- The site will be moved onto GitHub.
- The `bootstrap.min.css` file supplies the [pulse bootswatch theme](https://bootswatch.com/pulse/) 
- The `img` folder contains all the images
- The `data` folder contains a csv file with the profile info

