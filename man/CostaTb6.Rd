% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Costa.R
\name{CostaTb6}
\alias{CostaTb6}
\title{Efeito da Cobertura Morta no Peso Seco de Br\enc{ó}{o}colis}
\format{Um \code{data.frame} com 20 observações e 3 variáveis, em que

\describe{

\item{\code{cobert}}{Fator nominal com níveis de cobertura morta
    aplicada sobre o solo onde foi cultivado o brócolis: cobertura
    com sorgo, com crotalária, com milheto e com a vegetação
    espontânea.}

\item{\code{bloco}}{Fator de níveis nominais considerado para
    controle local, possivelmente os canteiros da horta, com 5
    níveis.}

\item{\code{peso}}{Variável resposta contínua, peso seco (g
    parcela\eqn{^{-1}}) de brócolis.}

}}
\source{
Costa (2013), Tabela 6 pág. 63.
}
\description{
Experimento instalado em delineamento de blocos
    casualizados para estudar o efeito de tipos de cobertura morta no
    peso seco de brócolis.
}
\examples{

library(lattice)

data(CostaTb6)
str(CostaTb6)

with(CostaTb6, addmargins(tapply(X = peso,
                                 INDEX = list(bloco, cobert),
                                 FUN = sum)))

# Ordenar para evitar o efeito espaguete no gráfico.
CostaTb6 <- CostaTb6[with(CostaTb6, order(cobert, bloco)), ]

xyplot(peso ~ cobert, data = CostaTb6,
       groups = bloco, type = "b",
       xlab = "Tipos de cobertura do solo",
       ylab = expression("Peso seco de brócolis"~(g~parcela^{-1})),
       auto.key = list(corner = c(0.1, 0.1), columns = 2,
                       title = "Blocos", cex.title = 1))

}
\keyword{DBC}

