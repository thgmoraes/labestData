% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Paula.R
\name{PaulaEx3.7.15}
\alias{PaulaEx3.7.15}
\title{Tumor Benigno na Mama}
\format{Um \code{data.frame} com 100 observações e 14 variáveis.

\describe{

\item{\code{est}}{Identificação do estrato (par).}

\item{\code{obs}}{Observação (1 = caso, 2 = controle).}

\item{\code{idade}}{Idade do paciente no momento da entrevista (em
    anos).}

\item{\code{diag}}{Diagnóstico (1:caso, 0:controle).}

\item{\code{tesc}}{Tempo de escolaridade (em anos).}

\item{\code{gesc}}{Grau de escolaridade (0 = nenhum, 1 = segundo
    grau, 2 = técnico, 3 = universitário, 4 = mestrado, 5 =
    doutorado).}

\item{\code{cur}}{Checkup Regular (1 = sim, 2 = não).}

\item{\code{ipg}}{Idade da primeira gravidez.}

\item{\code{iim}}{Idade do início da menstruação.}

\item{\code{numab}}{Número de abortos}

\item{\code{numfi}}{Número de filhos.}

\item{\code{peso}}{Peso (em libras).}

\item{\code{iupmen}}{Idade do último período menstrual.}

\item{\code{ec}}{Estado civil (1 = casada, 2 = divorciada, 3 =
    separada, 4 = viúva, 5 = solteira).}

}}
\source{
PAULA (2004), Exercício 3.7.14, pág. 273.
}
\description{
Estudo de caso-controle com emparelhamentos do tipo 1:1,
    em que os casos foram mulheres com diagnóstico confirmado de
    tumor benigno na mama. Os controles foram mulheres sadias
    diagnosticadas no mesmo hospital e período dos casos.
}
\examples{

data(PaulaEx3.7.15)
str(PaulaEx3.7.15)

# Transformar variáveis
PaulaEx3.7.15 <- transform(
                 PaulaEx3.7.15,
                 PaulaEx3.7.15$est <- as.factor(PaulaEx3.7.15$est),
                 PaulaEx3.7.15$diag <- as.factor(PaulaEx3.7.15$diag),
                 PaulaEx3.7.15$cur <- as.factor(PaulaEx3.7.15$cur),
                 PaulaEx3.7.15$ec <- as.factor(PaulaEx3.7.15$ec))

# Libra para Kg
PaulaEx3.7.15$peso <- PaulaEx3.7.15$peso*0.453592

pairs(~ idade + diag + tesc + gesc + cur + ipg + idmens
          + numab + numfi + peso + idupmens + ec,
      data = PaulaEx3.7.15)

}
\references{
Hosmer, D. W. e Lemeshow, S. (1989).  Applied Logistic
    Regression. John Wiley, New York. (Capítulo.7)
}
\keyword{RM}

