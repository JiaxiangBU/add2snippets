#' Paste the workflow figure built with the Unified Modeling Language
#'
#' @importFrom glue glue
#' @importFrom clipr write_clip
#' @export
add_uml <- function(open.r.snippets = TRUE) {
  text <- glue::glue('
  snippet push
      nomnoml::nomnoml("
      #stroke: #a86128
      [<frame>目前点击相关的模型、规则安排|
        [<abstract>模型v1.0||xxx]
        [xxx的合作方名单] --> [模型v1.0]

        [<abstract>模型v2.0||xxx模型]
        [xxx的合作方名单] --> [模型v2.0]

        [<abstract>模型v3.0||user-based xxx]
        [xxx的合作方名单] --> [模型v3.0]

        [<abstract>模型v3.1||item-based xxx]
        [xxx的合作方名单] --> [模型v3.1]

        [<abstract>模型v3.2||@xxx 排序]
        [xxx的合作方名单] --> [模型v3.2]

        [<abstract>默认排序||@xxx]
        [模型v1.0] --> [默认排序]
        [模型v2.0] --> [默认排序]
        [模型v3.0] --> [默认排序]
        [模型v3.1] --> [默认排序]
        [模型v3.2] --> [默认排序]


        [<abstract>去重逻辑||@xxx]
        [默认排序] --> [去重逻辑]
      ]
      ")')
  clipr::write_clip(text, allow_non_interactive = TRUE)
  if(open.r.snippets) {
      file.edit("~/.R/snippets/r.snippets")
  } else {
      print(text)
  }
  cat("Paste the snippet in the document.")
  cat("We recommend you do it manually.")
}

