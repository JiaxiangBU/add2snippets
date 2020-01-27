
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

For RStudio users, just hold <kbd>Shift</kbd> + <kbd>Tab</kbd> to type
the snippets.

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
#>     [<frame>Current_CTR_Model|
#>       [<abstract>Model_v1.0||xxx]
#>       [Party_A] --> [Model_v1.0]
#> 
#>       [<abstract>Model_v2.0||xxxModel_]
#>       [Party_A] --> [Model_v2.0]
#> 
#>       [<abstract>Model_v3.0||user-based xxx]
#>       [Party_A] --> [Model_v3.0]
#> 
#>       [<abstract>Model_v3.1||item-based xxx]
#>       [Party_A] --> [Model_v3.1]
#> 
#>       [<abstract>Model_v3.2||@xxx Rank]
#>       [Party_A] --> [Model_v3.2]
#> 
#>       [<abstract>Default_Rank||@xxx]
#>       [Model_v1.0] --> [Default_Rank]
#>       [Model_v2.0] --> [Default_Rank]
#>       [Model_v3.0] --> [Default_Rank]
#>       [Model_v3.1] --> [Default_Rank]
#>       [Model_v3.2] --> [Default_Rank]
#> 
#> 
#>       [<abstract>Distinct_Logic||@xxx]
#>       [Default_Rank] --> [Distinct_Logic]
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
[Contributor Code of
Conduct](https://github.com/JiaxiangBU/add2snippets/blob/master/CODE_OF_CONDUCT.md).<br>By
contributing to this project, you agree to abide by its terms.

</h6>

<h4 align="center">

**License**

</h4>

<h6 align="center">

MIT © [Jiaxiang
Li](https://github.com/JiaxiangBU/add2snippets/blob/master/LICENSE.md)

</h6>
