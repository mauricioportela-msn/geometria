//
// hbmk2 demo_geometria.prg geometria.prg -l hbct.hbc
//

FUNCTION Main()
    LOCAL lado        := 5
    LOCAL comprimento := 10
    LOCAL largura     := 4
    LOCAL baseMaior   := 12
    LOCAL baseMenor   := 6
    LOCAL altura      := 5
    LOCAL raio        := 7
    LOCAL diametro    := 14
    LOCAL angulo      := 60
    LOCAL sagitta     := 2
    LOCAL corda       := 8

    CLS
    ? "=========================================="
    ? " DEMONSTRACAO - BIBLIOTECA GEOMETRIA"
    ? "=========================================="

    // QUADRADO
    ? "Quadrado (lado =", alltrim(str(lado)), ")"
    ? "Area................:", alltrim(str(AreaQuadrada(lado)))
    ? "Perimetro...........:", alltrim(str(PerimetroDoQuadrado(lado)))
    ? "Diagonal............:", alltrim(str(ComprimentoDiagonalQuadrado(lado)))
    ?

    // RETANGULO
    ? "Retangulo (", alltrim(str(comprimento)), "x", alltrim(str(largura)), ")"
    ? "Area................:", alltrim(str(AreaRetangular(comprimento, largura)))
    ? "Perimetro...........:", alltrim(str(PerimetroDoRetangulo(comprimento, largura)))
    ? "Diagonal............:", alltrim(str(ComprimentoDiagonalRetangulo(comprimento, largura)))
    ?

    // TRAPEZIO
    ? "Trapezio (B=", alltrim(str(baseMaior)), ", b=", alltrim(str(baseMenor)), ", h=", alltrim(str(altura)), ")"
    ? "Area................:", alltrim(str(AreaTrapezio(baseMaior, baseMenor, altura)))
    ? "Mediana.............:", alltrim(str(MedianaDoTrapezio(baseMaior, baseMenor)))
    ?

    // TRIANGULO
    ? "Triangulo (base=", alltrim(str(comprimento)), ", altura=", alltrim(str(altura)), ")"
    ? "Area................:", alltrim(str(AreaTriangular(comprimento, altura)))
    ? "Perimetro (3,4,5)...:", alltrim(str(PerimetroTriangulo(3,4,5)))
    ?

    // CIRCULO
    ? "Circulo (diametro=", alltrim(str(diametro)), ")"
    ? "Area................:", alltrim(str(AreaCircular(diametro)))
    ? "Circunferencia......:", alltrim(str(CircunferenciaDoCirculo(diametro)))
    ? "Raio (via area).....:", alltrim(str(RaioDoCirculo(AreaCircular(diametro))))
    ?

    // SETOR CIRCULAR
    ? "Setor Circular (raio=", alltrim(str(raio)), ", angulo=", alltrim(str(angulo)), ")"
    ? "Area do setor.......:", alltrim(str(AreaSetorCircular(raio, angulo)))
    ? "Comprimento do arco.:", alltrim(str(ComprimentoArcoDoCirculo(raio, angulo)))
    ?

    // SEGMENTO CIRCULAR
    ? "Segmento Circular (raio=", alltrim(str(raio)), ", angulo=", alltrim(str(angulo)), ")"
    ? "Area do segmento....:", alltrim(str(AreaSegmentoCircular(raio, angulo)))
    ? "Comprimento da corda:", alltrim(str(ComprimentoCordaPorAngulo(raio, angulo)))
    ? "Sagitta (corda=8)...:", alltrim(str(SegmentoCircularSagitta(raio, corda)))
    ? "Corda via sagitta...:", alltrim(str(ComprimentoCordaPorSagitta(raio, sagitta)))
    ?

    // ELIPSE
    ? "Elipse (D1=20, D2=10)"
    ? "Area................:", alltrim(str(AreaElipse(20,10)))
    ? "Circunferencia......:", alltrim(str(CircunferenciaElipse(20,10)))
    ?

    ? "=========================================="
    ? " FIM DA DEMONSTRACAO"
    ? "=========================================="
    ? "Pressione qualquer tecla..."
    PAUSE(0)
RETURN Nil
