boolean zonaCircular( int x, int y, int r){
  return dist(mouseX,mouseY, x, y) <= r;
}

void boton(int x, int y, int d){
  noStroke();
  if (dist(mouseX,mouseY, x, y) <= d) {
    fill(0,40,0);
  } else {
    fill(0,80,0);
  }
  circle(x,y,d);
  if (dist(mouseX,mouseY, x, y) <= d) {
    fill(0,130,0);
  } else {
    fill(0,170,0);
  }
  rect(x - d/4, y - d/8, d/2 - 10, d/4);
  triangle(x + d/10, y - d/4, x + d/10, y - d/4 + d/2, x + d/3, y);
}
void boton2(int x, int y, int d, char l){
  noStroke();
  if (dist(mouseX,mouseY, x, y) <= d) {
    fill(0,50,0);
  } else {
    fill(150,210,180);
  }
  circle(x,y,d);
  if (dist(mouseX,mouseY, x, y) <= d) {
    fill(250);
  } else {
    fill(0);
  }
  textSize(d/2);
  text(l,x, y-5);
}

void botonesFinales(){
  boton2(150, 555, 70, 'R');
  boton2(450,555,70,'C');
}

void botonCuadrado() {
  textSize(40);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50){
      fill(25,100,25);
  } else {
      fill(50,150,50);
  }
  rect(210,270,180,50);
  if (mouseX > 210 && mouseX < 210 + 180 && mouseY > 270 && mouseY < 270 + 50){
      fill(150);
  } else {
      fill(200);
  }
  text("REINICIAR", 300,290);
}

void pantalla(int i, int x, int y, int anc, int alt){
      image(libro[1+i],0 ,0 );
      fill(255);
      text(textos[i], x,y,anc,alt);
}
