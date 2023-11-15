#' Pokemon API data
#'
#' Extract of some data from the 151 first Pokemons.
#'
#' @format ## `poke_data`
#' A nested list with 151 entries. Each sublist contains:
#' \describe{
#'   \item{name}{Char: Pokemon name.}
#'   \item{description}{Char: Pokemon description.}
#'   \item{shape}{Char: Pokemon shape.}
#'   \item{sprites}{List: Front and back sprites (images).}
#'    \itemize{
#'      \item{front_default}{Char: front sprite URL}
#'      \item{shiny_default}{Char: front sprite URL (shiny form)}
#'    }
#'    \item{habitat}{Char: Pokemon habitat.}
#'    ...
#' }
#' @note Have a look to inst/app-doc/data-doc.html to get an
#' interactive overview.
#' @source <https://pokeapi.co/docs/v2>
"poke_data"
