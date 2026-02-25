# ==========================================================
# Demonstração da Biblioteca Geometria
# ==========================================================
# python demo_geometria.py

import geometria as geo

def main():
    print("======================================")
    print(" DEMONSTRAÇÃO - BIBLIOTECA GEOMETRIA ")
    print("======================================\n")

    lado = 5
    comprimento = 10
    largura = 4
    raio = 7
    diametro = 14
    angulo = 60

    print("Quadrado:")
    print(f"Área: {geo.area_quadrada(lado)}")
    print(f"Perímetro: {geo.perimetro_do_quadrado(lado)}")
    print(f"Diagonal: {geo.comprimento_diagonal_quadrado(lado)}")
    print()

    print("Retângulo:")
    print(f"Área: {geo.area_retangular(comprimento, largura)}")
    print(f"Diagonal: {geo.comprimento_diagonal_retangulo(comprimento, largura)}")
    print()

    print("Círculo:")
    print(f"Área: {geo.area_circular(diametro)}")
    print(f"Circunferência: {geo.circunferencia_do_circulo(diametro)}")
    print()

    print("Setor Circular:")
    print(f"Área do setor: {geo.area_setor_circular(raio, angulo)}")
    print(f"Comprimento do arco: {geo.comprimento_arco_do_circulo(raio, angulo)}")
    print()

    print("Segmento Circular:")
    print(f"Área do segmento: {geo.area_segmento_circular(raio, angulo)}")
    print(f"Comprimento da corda: {geo.comprimento_corda_por_angulo(raio, angulo)}")
    print()

    print("Elipse (20 x 10):")
    print(f"Área: {geo.area_elipse(20, 10)}")
    print(f"Circunferência: {geo.circunferencia_elipse(20, 10)}")


if __name__ == "__main__":
    main()
