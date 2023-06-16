
// funcion del triangulo sin Retorno
void tri(float x, float y, float l) {
  triangle(x, y, x + l/2, y - sin(PI/3) * l, x + l, y);
}

//Funcion de color con retorno
color interactive(float min, float max) {
colorMode(HSB);
//mapea indice entre sus limites a escala 255:
float hue = map(mouseX, min, max, 0, 40);
//retorna color segun el tono calculado, con saturacion y brillo constante:
return color( hue, 130, 200 );
}
