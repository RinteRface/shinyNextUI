#' Pokemon API data
#'
#' Extract of some data from the 151 first Pokemons.
#'
#' @format ## `poke_data`
#' A nested list with 151 entries. Each sublist contains:
#' * name (char): Pokemon name.
#' * description (char): Pokemon description.
#' * shape (char): Pokemon shape.
#' * sprites (list):
#'     * front_default (char): front sprite URL.
#'     * shiny_default (char): front sprite URL (shiny form).
#'
#' * ...
#' @note Have a look to inst/app-doc/data-doc.html to get an
#' interactive overview.
#' @source <https://pokeapi.co/docs/v2>
"poke_data"
