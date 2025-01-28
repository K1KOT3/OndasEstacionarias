# Simulación de Ondas Estacionarias en Processing

Este repositorio contiene un programa desarrollado en **Processing** que simula ondas estacionarias en una cuerda. Se presentan la onda fundamental y los tres primeros armónicos en movimiento, aplicando conceptos de física ondulatoria.

## Funcionalidades

1. **Visualización de ondas estacionarias**:
   - Representación animada de la onda fundamental y los tres primeros armónicos.
   - Cada onda aparece ordenada en la pantalla de arriba hacia abajo.

2. **Personalización**:
   - Mejora opcional con colores, imágenes de fondo o efectos sonoros.

## Requisitos

- [Processing IDE](https://processing.org/download) instalado en tu computadora.

## Uso

1. Clona este repositorio en tu computadora:
   ```bash
   git clone https://github.com/k1kot3/OndasEstacionarias.git
   ```
2. Abre el archivo OndasEstacionarias.pde en el IDE de Processing.
3. Ejecuta el programa para observar las ondas estacionarias animadas.

## Conceptos implementados

El programa utiliza las siguientes ecuaciones para simular las ondas:

Altura de la cuerda en cada punto:
𝑦𝑛(𝑥,𝑡)=𝐴𝑛⋅𝑠𝑖𝑛(2𝜋/𝜆𝑛⋅𝑥)⋅𝑐𝑜𝑠(2𝜋𝑓𝑛⋅𝑡)y n​ (x,t)=A n​ ⋅sin(2π/λ n​ ⋅x)⋅cos(2πf n ⋅t)

λ_n = 2L / n: Longitud de onda.
f_n = n · f1: Frecuencia del armónico

## Personalización

El programa puede ampliarse para:

Incluir sonidos o música asociados al movimiento de las ondas.
Cambiar colores y diseño de las visualizaciones.
Agregar configuraciones interactivas para ajustar parámetros como amplitud o longitud.

Contribuciones bienvenidas :)
