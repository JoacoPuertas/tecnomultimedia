// Link al video https://www.youtube.com/watch?v=IkFHRZ_REkI

float y;
int estado = 0;
int c = 18;
PImage[] libro = new PImage[c];
String[] textos = new String[c];

void setup(){
  size(600,600);
  //carga imagenes 
  for(int i = 0 ; i < c ; i++ ){
    libro[i] = loadImage("libro" + i + ".png"); 
  }
  
  //carga de textos
  textos[0] = "Mowgli, un niño humano, es encontrado en la selva por la pantera Bagheera, quien lo lleva a la manada de lobos para que lo cuiden";
  textos[1] = "Mowgli crece en la manada de lobos y se convierte en un miembro valioso. Aprende las leyes de la selva y desarrolla  habilidades de supervivencia";
  textos[2] = "Shere Khan, el tigre, amenaza a Mowgli  debido a su origen humano.";
  textos[3] = "Mowgli es enviado a una aldea humana,  donde intenta adaptarse a su nueva vida con la ayuda de los aldeanos.";
  textos[4] = "La manada protege a Mowgli y le enseñan  a sobrevivir en la selva";
  textos[5] = "Mowgli se convierte en un cazador hábil y aprende a respetar y proteger la selva desde su posición en la aldea. Vive una vida pacífica y armoniosa";
  textos[6] = "Adquiere habilidades y se convierte  en un defensor de la naturaleza.";
  textos[7] = "Mowgli logra una vida pacifica, pero aún tiene mucho camino que recorrer";
  textos[8] = "Mowgli descubre una antigua cueva llena de tesoros  escondidos y se encuentra con Kaa,  la serpiente hipnotizadora, quien le da consejos valiosos.";
  textos[9] = "Mowgli se reúne con Baloo, el oso, y aprende lecciones importantes sobre la amistad y la importancia de seguir su propio camino.";
  textos[10] = "Mowgli se encuentra con un grupo de monos traviesos que lo capturan y lo llevan a su líder, el rey Louie.";
  textos[11] = "Mowgli acepta la oferta de Louie y se convierte en un aliado de los monos. Juntos, planean tomar el control de la selva y desafiar a Shere Khan.";
  textos[12] = "Mowgli utiliza su ingenio y logra escapar de los monos. Regresa a la selva, detienen a los monos y logran una vida tranquila";
  textos[13] = "Mowgli debe decidir se arrepentirse o continuar en la conquista de la selva junto a los monos.";
  textos[14] = "Mowgli se arrepiente, pero ya era tarde. Debe luchar solo contra Shere Khan y los monos para lograr la paz en la selva";
  textos[15] = "Continua con los monos y logran la conquista completa de la selva";
  textos[16] = "Mowgli se encuentra con Shere Khan y muere por un feroz ataque del tigre.";
  y=0;
}

void draw(){
  textSize(25);
  textAlign(CENTER, CENTER);
  tint(130, 180, 150);
  switch(estado){
    case 0:
      image(libro[0],0,0);
      boton(530,530,100);
      break;
    case 1:  
      pantalla(0,10,10,580,120);
      boton(530,530,100);
      break;
    case 2:
      pantalla(1,10,10,580,120);
      boton(530,530,100);
      break;
    case 3: 
      pantalla(2,10,10,580,120);
      fill(0,100,0);
      rect(150,390,295,30);
      fill(235,255,255);
      text("LA MANADA DEBE DECIDIR",300, 400);
      fill(255);
      text("Lo protegen ",400, 470);
      text("Lo envían a una\n aldea humana",200, 470);
      boton(400,550,70);
      boton(200,550,70);
      break;
    case 4:
      pantalla(3,10,10,580,120);
      boton(530,530,100);
      break;
    case 5: 
      pantalla(4,10,0,580,120);
      boton(530,530,100);
      break;
    case 6:
      pantalla(5,10,10,580,120);
      boton(530,530,100);
      break;
    case 7:
      pantalla(6,10,10,580,120);
      boton(530,530,100);
      break;
     case 8:
      background(0,50,0);
      pantalla(7,10,10,580,120);
      boton(530,530,100);
      break;
    case 9: 
      pantalla(8,10,10,580,120);
      boton(530,530,100);
      break;
    case 10:
      pantalla(9,10,400,580,120);
      tint(90, 150, 120);
      boton(530,530,100);
      break;
    case 11:
      image(libro[11],0 ,0 );
      tint(100, 160, 130);
      fill(255,255,255);
      text(textos[10], 10,450,440,120);
      boton(530,530,100);
      break;
    case 12:
      image(libro[12],0,0);
      tint(70, 130, 100);
      fill(255);
      text("Aceptar la oferta del rey Louie de conquistar la selva",50, 10, 450,150);
      text("Escapar para avisarle a los animales lo que planean los monos",50, 430, 450,150);
      boton(550,90,70);
      boton(550,510,70);
      break;
    case 13: 
      textSize(25);
      pantalla(12,10,-10, 590, 150);
      textSize(50);
      fill(0);
      rect(250,535,100,50);
      fill(255);
      text("FIN", 300,550);
      botonesFinales();
      //botonCreditos
      break;
    case 14:
      image(libro[14],0,0);
      fill(255);
      text("Luego de una semana, donde los monos ya avanzaron con su plan, Mowgli comienza a dudar sobre su decisión ",10, -10, 580,160);
      text("Arrepentirse e intentar\n remediar todo ",420, 470);
      text("Seguir con el plan\n de los monos",180, 470);
      boton(420,550,70);
      boton(180,550,70);
      break;
    case 15:
      pantalla(14,10,0,580,150);
      boton(530,530,100);
      break;
    case 16:
      textSize(25);
      pantalla(15,10,-30, 590, 150);
      textSize(50);
      fill(0);
      rect(250,535,100,50);
      fill(255);
      text("FIN", 300,550);
      botonesFinales();
      break;
    case 17:
      textSize(25);
      pantalla(16,10,-30, 590, 150);
      textSize(50);
      fill(0);
      rect(250,535,100,50);
      fill(255);
      text("FIN", 300,550);
      botonesFinales();
      break;
    case 18:
      //creditos
      fill(255);
      background(0);
      textSize(30);
      y = y + 2;
      text("EL LIBRO DE LA SELVA ", 300, y);
      if (y > 150) {
        text("TP3 - Joaquin Puertas - Tecno multimedia" , 300, y -150);
      } 
      if (y > 300) {
        text("Profesores : Matias y Fernando" , 300, y -300);
      } 
      if (y > 450) {
        text("Gracias por ver, ojala les haya gustado :)" , 300, y -450);
      }
      if ( y > 900) {
        botonCuadrado();
      }
  }
}

void mousePressed(){
  //COMIENZO
    if (estado == 0  && zonaCircular(530,530,100)){
    estado = 1;
  } else if (estado == 1  && zonaCircular(530,530,100)){
    estado = 2;
  } else if (estado == 2  && zonaCircular(530,530,100)){
    estado = 3;
  } 
  
  //LOBOS
  if(estado == 3 && zonaCircular(400,550,70)){
   estado = 5;
  } else if (estado == 5 && zonaCircular(530,530,100)) {
    estado = 7;
  }  else if (estado == 7 && zonaCircular(530,530,100)) {
    estado = 8;
  //fin del camino
  
  } else if (estado == 8  && zonaCircular(530,530,100)) {
    estado = 9;
  } else if (estado == 9  && zonaCircular(530,530,100)) {
    estado = 10;
  } else if (estado == 10  && zonaCircular(530,530,100)) {
    estado = 11;
  } else if (estado == 11  && zonaCircular(530,530,100)) {
    estado = 12;
  } else if (estado == 12  && zonaCircular(550,510,70)) {
    estado = 13;
  } else if (estado == 12  && zonaCircular(550,90,70)) {
    estado = 14;
  } else if (estado == 14  && zonaCircular(420,550,70)) {
    estado = 15;
  } else if (estado == 14  && zonaCircular(180,550,70)) {
    estado = 16;
  } else if (estado == 15  && zonaCircular(530,530,100)) {
    estado = 17;
  }
  
  
  //ALDEA
  if(estado == 3 && zonaCircular(200,550,70)){
   estado = 4;
  } else if (estado == 4 && zonaCircular(530,530,100)) {
    estado = 6;
  } else if (estado == 6 && zonaCircular(530,530,100)) {
    estado = 8;
  } 
  
  //fin del camino ALDEA
  
  //BOTONES FINALES
  if (estado == 13 && zonaCircular(450,555,70)) {
    estado = 18;
  } else if (estado == 16 && zonaCircular(450,555,70)) {
    estado = 18;
  } else if (estado == 17 && zonaCircular(450,555,70)) {
    estado = 18;
  }
  
  if (estado == 13 && zonaCircular(150, 555, 70)) {
    estado = 0;
  } else if (estado == 16 && zonaCircular(150, 555, 70)) {
    estado = 0;
  } else if (estado == 17 && zonaCircular(150, 555, 70)) {
    estado = 0;
  }
  
  if (estado == 18 && zonaCircular(300, 300, 200)){
    y = 0;
    estado = 0;
  }
}
