nextui_deps <- function() {
  htmltools::htmlDependency(
    name = "nextui",
    version = "1.0.0",
    package = "shinyNextUI",
    src = c(file = "nextui-1.0.0"),
    script = "nextui.js"
  )
}

unpkg_root <- "https://unpkg.com"
react_deps <- c("react", "react-dom")

build_dep <- function(name, version = 18, mode = c("prod", "dev")) {
  mode <- match.arg(mode)
  mode <- switch (mode,
    "prod" = "production.min",
    "dev" = "development"
  )

  cdn <- sprintf(
    "%s/%s@%s/umd/",
    unpkg_root,
    name,
    version
  )
  htmltools::htmlDependency(
    name = sprintf("%s-v%s", name, version),
    version = "1.0.0",
    src = c(href = cdn),
    script = sprintf("%s.%s.js", name, mode)
  )
}

create_react_deps <- function() {
  lapply(react_deps, build_dep)
}
