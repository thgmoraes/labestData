% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Charnet.R
\name{CharnetEx11.3}
\alias{CharnetEx11.3}
\title{Rela\enc{çã}{ca}o do Pre\enc{ç}{c}o de Venda de
    Im\enc{ó}{o}vel e suas Caracter\enc{í}{i}sticas}
\format{Um \code{data.frame} com 5 colunas e 20 linhas, em que

\describe{

\item{\code{preco}}{Preço de venda do imóvel, em reais.}

\item{\code{area}}{Área total de construção, em m\eqn{^2}.}

\item{\code{tempo}}{Tempo de construção, em anos.}

\item{\code{nquar}}{Número de quartos.}

\item{\code{pisc}}{Fator que indica se há piscina (\code{S}) ou não
    (\code{N}) no imóvel.}

}}
\source{
CHARNET et al. (2008), Capítulo 11, exercício 3, pág. 274.
}
\description{
Estudo observacional onde o interesse é explicar o valor
    de venda de imóveis de um mesmo bairro a partir de suas
    características presença de piscina, tempo de construção, área
    total e número de quartos.
}
\examples{

data(CharnetEx11.3)
str(CharnetEx11.3)

plot(CharnetEx11.3)

}
\keyword{RM}
\keyword{dummy}

