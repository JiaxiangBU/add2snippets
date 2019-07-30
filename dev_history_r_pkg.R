library(devtools)
use_git()

# https://github.com/JiaxiangBU/add2impala/blob/master/DESCRIPTION
file.edit("DESCRIPTION")
library(devtools)

use_build_ignore("dev_history.R")
use_roxygen_md()
use_pipe()
library(magrittr)

use_readme_rmd()
rmarkdown::render("README.Rmd")
file.remove("README.html")

options(usethis.full_name = "Jiaxiang Li")
use_mit_license()

use_news_md()
source("../imp_rmd/R/pull_and_push.R")

# add zenodo citation -----------------------------------------------------

library(devtools)
use_r("add_uml")
load_all()
document()
# load_all()
install()

# publish -----------------------------------------------------------------

use_version()

# git push
# make public
use_github_release()
# publish release
# https://zenodo.org/account/settings/github/

add_zenodo_citation(here::here("README.Rmd"))
