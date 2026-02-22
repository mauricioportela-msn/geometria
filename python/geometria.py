# ------------------------------------------------------------------------------
# Biblioteca para Cálculo de Áreas e Comprimentos
# Maurício Portela
# Versão Python
# ------------------------------------------------------------------------------

import math

PI = math.pi


# ------------------------------------------------------------------------------
# FUNÇÃO AUXILIAR
# ------------------------------------------------------------------------------

def grau_para_rad(angulo_graus):
    return angulo_graus * PI / 180.0


# ------------------------------------------------------------------------------
# QUADRADO
# ------------------------------------------------------------------------------

def area_quadrada(lado_quadrado):
    return lado_quadrado * lado_quadrado


def comprimento_diagonal_quadrado(lado_quadrado):
    return math.sqrt(2) * lado_quadrado


def comprimento_do_quadrado(area_quadrado):
    return math.sqrt(area_quadrado)


def perimetro_do_quadrado(lado_quadrado):
    return 4 * lado_quadrado


# ------------------------------------------------------------------------------
# RETÂNGULO
# ------------------------------------------------------------------------------

def area_retangular(comprimento_ret, largura_ret):
    return comprimento_ret * largura_ret


def comprimento_diagonal_retangulo(comprimento_ret, largura_ret):
    return math.sqrt(comprimento_ret**2 + largura_ret**2)


def perimetro_do_retangulo(comprimento_ret, largura_ret):
    return 2 * (comprimento_ret + largura_ret)


# ------------------------------------------------------------------------------
# LOSANGO
# ------------------------------------------------------------------------------

def area_losango(diagonal_maior, diagonal_menor):
    return (diagonal_maior * diagonal_menor) / 2


def perimetro_losango(lado_losango):
    return 4 * lado_losango


# ------------------------------------------------------------------------------
# TRAPÉZIO
# ------------------------------------------------------------------------------

def area_trapezio(base_maior, base_menor, altura):
    return ((base_maior + base_menor) / 2) * altura


def mediana_trapezio(base_maior, base_menor):
    return (base_maior + base_menor) / 2


def perimetro_trapezio(lado1, lado2, lado3, lado4):
    return lado1 + lado2 + lado3 + lado4


# ------------------------------------------------------------------------------
# TRIÂNGULO
# ------------------------------------------------------------------------------

def area_triangular(base, altura):
    return (base * altura) / 2


def perimetro_triangulo(lado1, lado2, lado3):
    return lado1 + lado2 + lado3


def altura_triangulo_equilatero(lado):
    return (math.sqrt(3) / 2) * lado


# ------------------------------------------------------------------------------
# CÍRCULO
# ------------------------------------------------------------------------------

def area_circular(diametro):
    raio = diametro / 2
    return PI * raio**2


def circunferencia_do_circulo(diametro):
    return PI * diametro


def raio_do_circulo(area):
    return math.sqrt(area / PI)


# ------------------------------------------------------------------------------
# SETOR CIRCULAR
# ------------------------------------------------------------------------------

def area_setor_circular(raio, angulo_central):
    return PI * raio**2 * (angulo_central / 360.0)


def comprimento_arco_do_circulo(raio, angulo_central):
    return 2 * PI * raio * (angulo_central / 360.0)


# ------------------------------------------------------------------------------
# SEGMENTO CIRCULAR
# ------------------------------------------------------------------------------

def area_segmento_circular(raio, angulo_central):
    theta = grau_para_rad(angulo_central)
    return (raio**2 / 2) * (theta - math.sin(theta))


def comprimento_corda_por_angulo(raio, angulo_central):
    metade = grau_para_rad(angulo_central / 2)
    return 2 * raio * math.sin(metade)


def comprimento_corda_por_sagitta(raio, sagitta):
    return 2 * math.sqrt(sagitta * (2 * raio - sagitta))


def segmento_circular_sagitta(raio, comprimento_corda):
    return raio - math.sqrt(raio**2 - (comprimento_corda**2) / 4)


# ------------------------------------------------------------------------------
# ELIPSE
# ------------------------------------------------------------------------------

def area_elipse(diametro_maior, diametro_menor):
    semi_maior = diametro_maior / 2
    semi_menor = diametro_menor / 2
    return PI * semi_maior * semi_menor


def circunferencia_elipse(diametro_maior, diametro_menor):
    semi_maior = diametro_maior / 2
    semi_menor = diametro_menor / 2
    return PI * (
        3 * (semi_maior + semi_menor)
        - math.sqrt((3 * semi_maior + semi_menor) *
                    (semi_maior + 3 * semi_menor))
    )


# ------------------------------------------------------------------------------
