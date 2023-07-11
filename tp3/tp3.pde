int estado = 0;

int c = 18;
PImage[] libro = new PImage[c];

void setup(){
  size(600,600);
  //carga imagenes 
  for(int i = 0 ; i < c ; i++ ){
    libro[i] = loadImage("libro" + i + ".png"); 
  }
  textSize(25);
  textAlign(CENTER, CENTER);
}

void draw(){
  
  switch(estado){
    case 0:
      image(libro[0],0,0);
      boton(530,530,100);
      break;
    case 1:  
      image(libro[1],0 ,0 );29683010
      tint(130, 180, 150);
      fill(255,255,255);
      text("Mowgli, un niño humano, es encontrado en la selva por la pantera Bagheera, quien lo lleva a la manada de lobos para que lo cuiden", 10,10,580,100);
      boton(530,530,100);
      break;
    case 2:
      image(libro[2],0,0);
      tint(130, 180, 150);
      fill(255,255,255);
      text("Mowgli crece en la manada de lobos y se convierte\n en un miembro valioso", 300,80);
      text("Aprende las leyes de la selva y desarrolla \n habilidades de supervivencia", 240,520);
      boton(530,530,100);
      break;
    case 3: 
      image(libro[3],0 ,0 );
      tint(130, 180, 150);
      fill(255,255,255);
      text("Shere Khan, el tigre, amenaza a Mowgli \n debido a su origen humano.", 300,80);
      fill(0,100,0);
      rect(50,415,295,30);
      fill(235,255,255);
      text("LA MANADA DEBE DECIDIR:",200, 425);
      fill(255,255,255);
      text("Lo protegen ",490, 300);
      text("lo envían a \n una aldea humana",490, 550);
      boton(490,375,70);
      boton(490,475,70);
      break;
    case 4:
      image(libro[4],0,0);
      fill(255);
      text("Mowgli es enviado a una aldea humana, \n donde intenta adaptarse a su nueva vida\n con la ayuda de los aldeanos.",300, 60);
      boton(530,530,100);
      break;
    case 5: 
      image(libro[5],0 ,0 );
      fill(255);
      text("La manada protege a Mowgli y le enseñan \n a sobrevivir en la selva",250, 530);
      boton(530,530,100);
      break;
    case 6:
      image(libro[6],0,0);
      fill(255);
      text(" Mowgli se convierte en un cazador hábil\n y aprende a respetar y proteger la selva\n desde su posición en la aldea.",300, 100);
      text("Vive una vida pacífica y armoniosa",200, 570);
      boton(530,530,100);
      break;
    case 7:
      image(libro[7],0,0);
      fill(255);
      text("Adquiere habilidades y se convierte \n en un defensor de la naturaleza.",250, 530);
      text("7",10, 10);
      boton(530,530,100);
      break;
     case 8:
      background(0,50,0);
      image(libro[8],0,0);
      fill(255);
      text("Mowgli logra una vida pacifica, \npero aún tiene mucho camino que recorrer",300, 100);
      text("8",10, 10);
      boton(530,530,100);
      break;
    case 9: 
      image(libro[9],0 ,0 );
      textAlign(LEFT, CENTER);
      fill(255);
      text("Mowgli descubre una antigua cueva llena de tesoros\n  escondidos y se encuentra con Kaa,  la serpiente\n hipnotizadora, quien le da consejos valiosos.",10, 100);
      text("9",10, 10);
      boton(530,530,100);
      break;
    case 10:
      image(libro[10],0,0);
      fill(255);
      text("Mowgli se reúne con Baloo, el oso, y aprende\n lecciones importantes sobre la amistad y\n la importancia de seguir su propio camino.",10, 520);
      boton(530,530,100);
      break;
    case 11:
      image(libro[11],0,0);
      text("11",10, 10);
      fill(255);
      text("Mowgli se encuentra con un grupo de monos\n traviesos que lo capturan y lo llevan\n a su líder, el rey Louie.",10, 520);
      boton(530,530,100);
      break;
    case 12:
      image(libro[12],0,0);
      fill(0);
      rect(10,10,580,130);
      rect(10,470,580,130);
      fill(255);
      text("Mowgli acepta la oferta de Louie\n y se convierte en un aliado de los monos.\n Juntos, planean tomar el control de la selva\n y desafiar a Shere Khan.",15, 550);
      text("Mowgli utiliza su ingenio y logra escapar de los monos.\n Regresa a la aldea humana y se convierte en \n un protector de la selva desde allí.",15, 70);
      boton(550,90,70);
      boton(550,510,70);
      break;
    case 13: 
      image(libro[13],0 ,0 );
      text("13",10, 10);
      boton(530,530,100);
      break;
    case 14:
      image(libro[14],0,0);
      text("14",10, 10);
      boton(490,375,70);
      boton(490,475,70);
      break;
    case 15:
      image(libro[15],0,0);
      text("15",10, 10);
      boton(530,530,100);
      break;
    case 16:
      image(libro[16],0,0);
      text("16",10, 10);
      boton(530,530,100);
      break;
    case 17:
      image(libro[17],0,0);
      text("17",10, 10);
      boton(530,530,100);
      break;
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
  if(estado == 3 && zonaCircular(490,375,70)){
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
  } else if (estado == 12  && zonaCircular(490,375,70)) {
    estado = 13;
  } else if (estado == 12  && zonaCircular(490,475,70)) {
    estado = 14;
  } else if (estado == 14  && zonaCircular(490,375,70)) {
    estado = 15;
  } else if (estado == 14  && zonaCircular(490,475,70)) {
    estado = 16;
  } else if (estado == 15  && zonaCircular(530,530,100)) {
    estado = 17;
  }
  
  
  //ALDEA
  if(estado == 3 && zonaCircular(490,475,70)){
   estado = 4;
  } else if (estado == 4 && zonaCircular(530,530,100)) {
    estado = 6;
  } else if (estado == 6 && zonaCircular(530,530,100)) {
    estado = 8;
  } 
  
  //fin del camino ALDEA
}
