
<!-- README.md is generated from README.Rmd. Please edit that file -->

# add2snippets

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/199655626.svg)](https://zenodo.org/badge/latestdoi/199655626)
<!-- badges: end -->

The goal of add2snippets is to help add useful R snippets and avoid
wasting time on writing duplicated codes. There are similar packages
like
[Selected\_Code\_To\_Snippet](https://github.com/Timag/Selected_Code_To_Snippet).
Further more information, see
[notes](https://jiaxiangbu.github.io/learn_rstudioapi/analysis/rstudio-and-api-learning-notes.html#snippets).

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JiaxiangBU/add2snippets")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(add2snippets)
## basic example code
```

``` r
add_uml(open.r.snippets = FALSE)
#> snippet push
#>     nomnoml::nomnoml("
#>     #stroke: #a86128
#>     [<frame>目前点击相关的模型、规则安排|
#>       [<abstract>模型v1.0||xxx]
#>       [xxx的合作方名单] --> [模型v1.0]
#> 
#>       [<abstract>模型v2.0||xxx模型]
#>       [xxx的合作方名单] --> [模型v2.0]
#> 
#>       [<abstract>模型v3.0||user-based xxx]
#>       [xxx的合作方名单] --> [模型v3.0]
#> 
#>       [<abstract>模型v3.1||item-based xxx]
#>       [xxx的合作方名单] --> [模型v3.1]
#> 
#>       [<abstract>模型v3.2||@xxx 排序]
#>       [xxx的合作方名单] --> [模型v3.2]
#> 
#>       [<abstract>默认排序||@xxx]
#>       [模型v1.0] --> [默认排序]
#>       [模型v2.0] --> [默认排序]
#>       [模型v3.0] --> [默认排序]
#>       [模型v3.1] --> [默认排序]
#>       [模型v3.2] --> [默认排序]
#> 
#> 
#>       [<abstract>去重逻辑||@xxx]
#>       [默认排序] --> [去重逻辑]
#>     ]
#>     ")
#> Paste the snippet in the document.We recommend you do it manually.
```

-----

<h4 align="center">

**Code of Conduct**

</h4>

<h6 align="center">

Please note that the `add2snippets` project is released with a
[Contributor Code of Conduct](.github/CODE_OF_CONDUCT.md).<br>By
contributing to this project, you agree to abide by its terms.

</h6>

<h4 align="center">

**License**

</h4>

<h6 align="center">

MIT © [Jiaxiang Li](LICENSE.md)

</h6>
