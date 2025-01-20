nextui_deps <- function() {
  htmltools::htmlDependency(
    name = "nextui",
    version = "2.6.14",
    package = "shinyNextUI",
    src = c(file = "nextui-2.6.14"),
    script = "nextui.js"
  )
}

unpkg_root <- "https://unpkg.com"
react_deps <- c("react", "react-dom")

build_dep <- function(name, version = 18, mode = c("prod", "dev")) {
  mode <- match.arg(mode)
  mode <- switch(mode, "prod" = "production.min", "dev" = "development")

  cdn <- sprintf(
    "%s/%s@%s/umd/",
    unpkg_root,
    name,
    version
  )
  htmltools::htmlDependency(
    name = sprintf("%s-v%s", name, version),
    version = utils::packageVersion("shinyNextUI"),
    src = c(href = cdn),
    script = sprintf("%s.%s.js", name, mode)
  )
}

create_react_deps <- function() {
  lapply(react_deps, build_dep)
}
