#' Paste the workflow figure built with the Unified Modeling Language
#'
#' @importFrom glue glue
#' @importFrom clipr write_clip
#' @import utils
#' @param open.r.snippets Logical, by default \code{TRUE}
#' @param is_paste Logical, by default \code{TRUE}
#' @return If \code{open.r.snippets = FALSE}, the result is the text including the UML text.
#' If \code{open.r.snippets = TRUE}, open the local R snippet file.
#' @export
#' @examples
#' add_uml(open.r.snippets = FALSE, is_paste = FALSE)
add_uml <- function(open.r.snippets = TRUE, is_paste = TRUE) {
  text <- glue::glue('
  snippet push
      nomnoml::nomnoml("
      #stroke: #a86128
      [<frame>Current_CTR_Model|
        [<abstract>Model_v1.0||xxx]
        [Party_A] --> [Model_v1.0]

        [<abstract>Model_v2.0||xxxModel_]
        [Party_A] --> [Model_v2.0]

        [<abstract>Model_v3.0||user-based xxx]
        [Party_A] --> [Model_v3.0]

        [<abstract>Model_v3.1||item-based xxx]
        [Party_A] --> [Model_v3.1]

        [<abstract>Model_v3.2||@xxx Rank]
        [Party_A] --> [Model_v3.2]

        [<abstract>Default_Rank||@xxx]
        [Model_v1.0] --> [Default_Rank]
        [Model_v2.0] --> [Default_Rank]
        [Model_v3.0] --> [Default_Rank]
        [Model_v3.1] --> [Default_Rank]
        [Model_v3.2] --> [Default_Rank]


        [<abstract>Distinct_Logic||@xxx]
        [Default_Rank] --> [Distinct_Logic]
      ]
      ")')
  if(is_paste) {
    clipr::write_clip(text, allow_non_interactive = TRUE)
  }
  if(open.r.snippets) {
      utils::file.edit("~/.R/snippets/r.snippets")
  } else {
      print(text)
  }
  cat("Paste the snippet in the document.")
  cat("We recommend you do it manually.")
}

