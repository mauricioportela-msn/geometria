// -----------------------------------------------------------------------------
//
// Biblioteca para Calculo de Areas e Comprimentos
// Mauricio Portela
// Harbour 3.2
//
// -----------------------------------------------------------------------------

#define PI 3.14159265359

// -----------------------------------------------------------------------------
// FUNCAO AUXILIAR
// -----------------------------------------------------------------------------

FUNCTION GrauParaRad(anguloGraus)
RETURN anguloGraus * PI / 180.0


// -----------------------------------------------------------------------------
// QUADRADO
// -----------------------------------------------------------------------------

FUNCTION AreaQuadrada(ladoQuadrado)
RETURN ladoQuadrado * ladoQuadrado

FUNCTION ComprimentoDiagonalQuadrado(ladoQuadrado)
RETURN sqrt(2) * ladoQuadrado

FUNCTION ComprimentoDoQuadrado(areaQuadrado)
RETURN sqrt(areaQuadrado)

FUNCTION PerimetroDoQuadrado(ladoQuadrado)
RETURN 4 * ladoQuadrado


// -----------------------------------------------------------------------------
// RETANGULO
// -----------------------------------------------------------------------------

FUNCTION AreaRetangular(comprimentoRet, larguraRet)
RETURN comprimentoRet * larguraRet

FUNCTION ComprimentoDiagonalRetangulo(comprimentoRet, larguraRet)
RETURN sqrt((comprimentoRet * comprimentoRet) + (larguraRet * larguraRet))

FUNCTION PerimetroDoRetangulo(comprimentoRet, larguraRet)
RETURN 2 * (comprimentoRet + larguraRet)


// -----------------------------------------------------------------------------
// LOSANGO
// -----------------------------------------------------------------------------

FUNCTION AreaLosango(diagonalMaiorLosango, diagonalMenorLosango)
RETURN (diagonalMaiorLosango * diagonalMenorLosango) / 2

FUNCTION PerimetroLosango(ladoLosango)
RETURN 4 * ladoLosango


// -----------------------------------------------------------------------------
// TRAPEZIO
// -----------------------------------------------------------------------------

FUNCTION AreaTrapezio(baseMaiorTrp, baseMenorTrp, alturaTrp)
RETURN ((baseMaiorTrp + baseMenorTrp) / 2) * alturaTrp

FUNCTION MedianaDoTrapezio(baseMaiorTrp, baseMenorTrp)
RETURN (baseMaiorTrp + baseMenorTrp) / 2

FUNCTION PerimetroTrapezio(lado1Trp, lado2Trp, lado3Trp, lado4Trp)
RETURN lado1Trp + lado2Trp + lado3Trp + lado4Trp


// -----------------------------------------------------------------------------
// TRIANGULO
// -----------------------------------------------------------------------------

FUNCTION AreaTriangular(baseTri, alturaTri)
RETURN (baseTri * alturaTri) / 2

FUNCTION PerimetroTriangulo(lado1Tri, lado2Tri, lado3Tri)
RETURN lado1Tri + lado2Tri + lado3Tri

FUNCTION AlturaTrianguloEquilatero(ladoEquilatero)
RETURN (sqrt(3) / 2) * ladoEquilatero


// -----------------------------------------------------------------------------
// CIRCULO
// -----------------------------------------------------------------------------

FUNCTION AreaCircular(diametroCirc)
    LOCAL raioCirc
    raioCirc := diametroCirc / 2
RETURN PI * raioCirc * raioCirc

FUNCTION CircunferenciaDoCirculo(diametroCirc)
RETURN PI * diametroCirc

FUNCTION RaioDoCirculo(areaCirc)
RETURN sqrt(areaCirc / PI)


// -----------------------------------------------------------------------------
// SETOR CIRCULAR
// -----------------------------------------------------------------------------

FUNCTION AreaSetorCircular(raioSetor, anguloCentral)
RETURN (PI * raioSetor * raioSetor) * ;
       (anguloCentral / 360.0)

FUNCTION ComprimentoArcoDoCirculo(raioArco, anguloCentral)
RETURN (2 * PI * raioArco) * (anguloCentral / 360.0)


// -----------------------------------------------------------------------------
// SEGMENTO CIRCULAR
// -----------------------------------------------------------------------------

FUNCTION AreaSegmentoCircular(raioSeg, anguloCentral)
    LOCAL anguloRad
    anguloRad := GrauParaRad(anguloCentral)
RETURN (raioSeg * raioSeg / 2) * (anguloRad - sin(anguloRad))

FUNCTION ComprimentoCordaPorAngulo(raioCorda, anguloCentral)
    LOCAL metadeRad
    metadeRad := GrauParaRad(anguloCentral / 2)
RETURN 2 * raioCorda * sin(metadeRad)

FUNCTION ComprimentoCordaPorSagitta(raioSag, sagittaValor)
RETURN 2 * sqrt(sagittaValor * (2 * raioSag - sagittaValor))

FUNCTION SegmentoCircularSagitta(raioSag, comprimentoCorda)
RETURN raioSag - sqrt((raioSag * raioSag) - ((comprimentoCorda * comprimentoCorda) / 4))


// -----------------------------------------------------------------------------
// ELIPSE
// -----------------------------------------------------------------------------

FUNCTION AreaElipse(diametroMaiorElipse, diametroMenorElipse)
    LOCAL semiEixoMaior
    LOCAL semiEixoMenor
    semiEixoMaior := diametroMaiorElipse / 2
    semiEixoMenor := diametroMenorElipse / 2
RETURN PI * semiEixoMaior * semiEixoMenor

FUNCTION CircunferenciaElipse(diametroMaiorElipse, diametroMenorElipse)
    LOCAL semiEixoMaior := diametroMaiorElipse / 2
    LOCAL semiEixoMenor := diametroMenorElipse / 2
RETURN PI * (3 * (semiEixoMaior + semiEixoMenor) - ;
       sqrt((3 * semiEixoMaior + semiEixoMenor) * ;
       (semiEixoMaior + 3 * semiEixoMenor)))
// -----------------------------------------------------------------------------
