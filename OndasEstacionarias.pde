int dx = 8; // Espacio horizontal entre puntos
float F_1 = 1.0; // Frecuencia fundamental
float t = 0.0; // Tiempo
float F; // Frecuencia de la onda
float L_onda; // Longitud de onda
float amplitud = 40.0; // Amplitud de la onda
int L_cuerda; // Longitud de la cuerda
float[] y_1, y_2, y_3, y_4; // Posiciones verticales de los segmentos de la cuerda

void setup() {
  size(640, 440);
  frameRate(30);
  L_cuerda = width; // Longitud de la cuerda igual al ancho de la ventana
  
  // Cálculo de las constantes de las cuatro ondas
  F = F_1;
  L_onda = (2 * L_cuerda) / 1;
  y_1 = new float[L_cuerda / dx];
  
  F = 2 * F_1;
  L_onda = (2 * L_cuerda) / 2;
  y_2 = new float[L_cuerda / dx];
  
  F = 3 * F_1;
  L_onda = (2 * L_cuerda) / 3;
  y_3 = new float[L_cuerda / dx];
  
  F = 4 * F_1;
  L_onda = (2 * L_cuerda) / 4;
  y_4 = new float[L_cuerda / dx];
}

void draw() {
  background(0);
  
  // Cálculo de las posiciones verticales
  float x = 0;
  for (int j = 0; j < y_1.length; j++) { // Bucle para rellenar las posiciones
    y_1[j] = -amplitud * sin(2 * PI * x / L_onda) * cos(2 * PI * F_1 * t);
    y_2[j] = -amplitud / 2 * sin(2 * PI * x / (L_onda / 2)) * cos(2 * PI * 2 * F_1 * t);
    y_3[j] = -amplitud / 3 * sin(2 * PI * x / (L_onda / 3)) * cos(2 * PI * 3 * F_1 * t);
    y_4[j] = -amplitud / 4 * sin(2 * PI * x / (L_onda / 4)) * cos(2 * PI * 4 * F_1 * t);
    x += dx;
  }
  
  // Se dibujan todas las ondas
  noStroke();
  
  fill(255, 0, 0, 50); // Onda fundamental (onda roja)
  for (int i = 0; i < y_1.length; i++) {
    ellipse(0.5 * dx + i * dx, 80 + y_1[i], 16, 16);
  }
  
  fill(0, 255, 0, 50); // Segundo armónico (onda verde)
  for (int i = 0; i < y_2.length; i++) {
    ellipse(0.5 * dx + i * dx, 160 + y_2[i], 16, 16);
  }
  
  fill(0, 0, 255, 50); // Tercer armónico (onda azul)
  for (int i = 0; i < y_3.length; i++) {
    ellipse(0.5 * dx + i * dx, 240 + y_3[i], 16, 16);
  }
  
  fill(255, 255, 0, 50); // Cuarto armónico (onda amarilla)
  for (int i = 0; i < y_4.length; i++) {
    ellipse(0.5 * dx + i * dx, 320 + y_4[i], 16, 16);
  }
  
  // Actualización del tiempo para que se muevan las ondass
  t += 0.01;
}
