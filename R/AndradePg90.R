#' @name AndradePg90
#' @title Pesos de Bezerros Recém-Nascidos (Charoleza e Gir)
#' @description Pesos ao nascer de 24 bezerros machos das raças
#'     Charoleza e Gir.
#' @format Um \code{data.frame} com 24 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{raca}}{Fator de 2 níveis que são as raças dos bezerros
#'     (Charoleza e Gir).}
#'
#' \item{\code{peso}}{Peso do bezerro macho recém nascido, em kg.}
#'
#' }
#' @seealso \code{\link{AndradeTb2.32}}
#' @keywords AASI
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Página 90)
#' @examples
#'
#' data(AndradePg90)
#' str(AndradePg90)
#'
#' library(lattice)
#' densityplot(~peso, groups = raca,
#'             data = AndradePg90,
#'             auto.key = list(
#'                 corner = c(0.1, 0.9),
#'                 title = "Raça do bezerro",
#'                 cex.title = 1
#'             ))
#'
#' # Agrupando dados de AndradeTb2.32, um estudo similar.
#' # help(AndradeTb2.32)
#'
#' da <- rbind(AndradePg90, AndradeTb2.32)
#' bwplot(peso ~ raca,
#'        data = da,
#'        xlab = "Raça do Bezerro",
#'        ylab = "Peso (em kg)")
#'
NULL
