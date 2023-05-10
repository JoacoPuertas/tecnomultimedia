int estado, reloj, colorBtn;
float textoSize, textoMovX, textoMovX2, textoMovY, opacidad;
PImage pipaA, pipaB, pipaC, pipaD, pipaE, pipaF, meme;
PFont mainFont, secFont;
boolean der;


void setup() {
  size(640, 480);
  pipaA =loadImage("data/pipa.png");
  pipaB =loadImage("data/pipab.png");
  pipaC =loadImage("data/pipac.png");
  pipaD =loadImage("data/pipad.png");
  pipaE =loadImage("data/pipae.png");
  pipaF =loadImage("data/pipaf.png");
  mainFont = loadFont("data/KristenITC-Regular-48.vlw");
  secFont = loadFont("data/ImprintMT-Shadow-48.vlw");


  meme = loadImage("data/meme.png");
  estado = 0;
  textFont(mainFont);
  textAlign(CENTER, CENTER);
  textoSize = 0;
  textoMovX = 0;
  textoMovX2 = 800;
  textoMovY = 480;
  colorBtn = 255;
  opacidad = 0;
  der = true;
}

void draw() {
  int difeTiempo = millis() - reloj ;
  if (estado == 0) {
    tint(180, 180, 255);
    image(pipaA, 0, 0);
    fill(255);
    textoSize = textoSize + 0.4;

    if (textoSize >= 40) {
      textoSize = 40;
    }

    textSize(textoSize);
    text("Esta es una presentación \n de la raza de perros", width/2, 220);
    textSize(textoSize * 2);
    fill(20, 110, 170);
    textFont(secFont);
    text("VIZSLA", width/2, 360);
    textFont(mainFont);
    //boton de comenzar
    fill(colorBtn);
    stroke(255);
    if ( dist(580, 400, mouseX, mouseY) < 40/2 ) {
      colorBtn= color(30, 30, 200);
      cursor(HAND);
    } else {
      colorBtn = 255 ;
      cursor(ARROW);
    }
    fill(200, 160, 160);
    textSize(16);
    text("EMPEZAR", 580, 360);
    fill(colorBtn);
    stroke(255);
    strokeWeight(6);
    circle( 580, 400, 40 );
  } else if  (estado == 1) {
    cursor(ARROW);
    textoMovX = textoMovX + 1.50;

    if (textoMovX >= width/2 ) {
      textoMovX = width/2;
    }
    tint(180, 180, 255);
    image(pipaB, 0, 0);
    textSize(36);
    fill(255);
    textLeading(50);
    text("Son perros medianos \n con un peso de entre \n 20 y 29kg", textoMovX, height/2);

    if ( difeTiempo >= 5000) {
      estado = 2 ;
      reloj = millis();
      textoMovX = 0;
    }
  } else if (estado == 2) {
    textoMovY = textoMovY - 0.90;

    if  (textoMovY <= 180 ) {
      textoMovY = 180;
    }
    tint(180, 180, 255);
    image(pipaC, 0, 0);
    textSize(36);
    text("Los machos suelen medir \n entre 55 y 60cm a la cruz. \n Las hembras tienen una \n altura media de 53-58cm ", width/2, textoMovY);

    if ( difeTiempo >= 8000) {
      estado = 3 ;
      reloj = millis();
      textoMovY = 480;
    }
  } else if (estado == 3) {
    opacidad= opacidad + 1;
    tint(160, 160, 225);
    image(pipaD, 0, 0);
    textSize(36);
    fill(255, opacidad);
    text("CUERPO \n Musculoso y proporcionado \n con el pelo corto, liso \n y de color dorado corrizo", width/2, 140);

    if ( difeTiempo >= 7000) {
      estado = 4 ;
      reloj = millis();
      opacidad = 0 ;
    }
  } else if (estado == 4) {
    tint(150, 150, 225);
    image(pipaE, 0, 0);
    fill(random(130, 220), random(130, 220), random(130, 220));
    text("Son perros guardianes, \n amigables y juguetones \n Necesitan mucha interaccion \n con los seres humanos", width/2, 330);

    if ( difeTiempo >= 6000) {
      estado = 5 ;
      reloj = millis();
    }
  } else if (estado == 5) {
    if ( der == true) {
      textoMovX2 = textoMovX2 - 3.0;
    }

    if (textoMovX2 <= 170) {
      der = false;
    }
    if (der == false) {
      textoMovX2 = textoMovX2 + 3.0;

      if (textoMovX2 >= 250) {
        textoMovX2 = 250;
      }
    }
    tint(180, 180, 255);
    image(pipaF, 0, 0);
    fill(255);
    textSize(36);
    text("Todas estas fotos \n fueron de mi perrito ", textoMovX2, height/2);
    textSize(50);
    text("PIPA", textoMovX2, 330);
    if ( difeTiempo >= 8000) {
      estado = 6 ;
      reloj = millis();
      textoMovX2 = 800;
      der = true;
    }
  } else {
    background (0);
    image(meme, 0, 0);
    noFill();
    strokeWeight(4);
    stroke(30, 90, 180);
    rect(-10, -10, 210, 200);
    fill(30, 90, 180);
    textSize(62);
    text("FIN!", width/2, height/2);
    textSize(16);
    text("Pulsa el boton para volver a empezar", width/2, 350);
    // color del boton
    fill(colorBtn);
    stroke(255);
    if ( dist(width/2, 410, mouseX, mouseY) < 60/2 ) {
      colorBtn= color(200, 30, 30);
      cursor(HAND);
    } else {
      colorBtn = 255 ;
      cursor(ARROW);
    }
    fill(colorBtn);
    stroke(255);
    strokeWeight(6);
    circle( width/2, 410, 60 );
  }
  //impresion en consola

  println ("RELOJ:", millis());
  println ("DIFERENCIA:", difeTiempo);
  println ("ESTADO", estado);
}

void mousePressed() {
  //Boton de empezar
  if ( estado == 0 ) {
    if ( dist(580, 400, mouseX, mouseY) < 40/2 ) {
      estado = 1;
      reloj = millis();
      textoSize = 0;
    }
  }

  //boton de reiniciar
  if ( estado == 6 ) {
    if ( dist(width/2, 410, mouseX, mouseY) < 60/2 ) {
      estado = 0;
      reloj = millis();
    }
  }
}
