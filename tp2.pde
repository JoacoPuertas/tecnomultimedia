
//link al video explicativo subido a Youtube
//https://www.youtube.com/watch?v=ty_nAt3dsgU


PImage optico;
float colorcito = 10;
void setup() {
  size(800,400);
  optico = loadImage("data/arte-optico.png");
}

void draw() {
  background(255);
  //IMAGEN DE REFERENCIA
  //imagen izquierda con fondo blanco e imagen achicada para que se aprecie bien.
  noStroke();
  fill(255);
  rect(0,0,400,400);
  image(optico,0,25);
  
  // DIBUJO
  
  colorMode(RGB);
  //cambia de color moviendo el Mouse en Y
  fill(245, map(mouseY, 0, 400, 0, 255), colorcito);
  
  //For anidado que con el i va achicando los triangulos y moviandolos para que queden centrados y con la j cambia la liña
  for(float i = 195; i > 0; i = i - 15 ){
    for(float j = 10; j > 0; j = j - 1){
      float c = map(i, j * 20, 230, 90, 230 );
      stroke(c);
      strokeWeight(2);
      
      //triangulos chiquitos
      if(i <= 15) {
        fill(colorcito + 150, map(mouseY, 0, 400, 0, 150), colorcito + 50);
      }
      
      //triangulos
      tri(602.5 - i/2, 140 + i/4, i);
      tri(502.5 - i/2, 316 + i/4, i);
      tri(702.5 - i/2, 316 + i/4, i);
    }
  }
  
  //triangulo del medio
  pushMatrix();
  fill(interactive(0, 800));
  rotate(radians(60));
  for(float i = 200; i > 0; i = i - 15 ){
    stroke(0);
    strokeWeight(0.5);
    tri(517 - i/2, i/4 - 389, i);
  }
  popMatrix();
}

void mousePressed(){
  colorcito = colorcito + 10;
  if (colorcito >= 100){
    colorcito = 100;
  }
}

void keyPressed(){
  if ( key == 'r'){
    colorcito = 10;
  }
}
  
