//Link al video https://www.youtube.com/watch?v=WggdWXLj-9A

let x = [], y = [], velX =[];
let cant = 8;
let m = 40;
let ys = 550;
let xs = 300;
let estado = 0;
let s = 1;
let yb = 300;
let d = 100;
let colorcito=[];
let yc = [];
let textos = [];
let reloj;
let cocodrilo = [];
let k = [];
let frog = [];
let flechas;
function setup() {
  createCanvas(600,600);
  inicioCocodrilos();
  creditos();
  colorcito[0] = color(0,100,250);
  colorcito[1] = color(255,100,0);
  textos[0] = "TP4 Tecno Multimedial";
  textos[1] = "Productor: Joaquin Roman Puertas"
  textos[2] = "Programador: Joaquin Roman Puertas"
  textos[3] = "Diseñador: Joaquin Roman Puertas"
  reloj = 0;
}

function preload(){
  cocodrilo[0] = loadImage("data/cocodriloDerecha.png");
  cocodrilo[1] = loadImage("data/cocodriloIzquierda.png");
  for(let i = 1; i < 5 ; i++){
    frog[i] = loadImage("data/frog" + i + ".png");
  flechas = loadImage("data/flechas.png");
  }
}
function draw() {
  if (estado == 0) {
    estado0();
    reloj = 0;
  } else if (estado == 1) {
      background(20,70,20);
      rectMode(CENTER);
      fill(50,30,0);
      noStroke();
      rect(300,280,width,420);
      sapo();
      dibujarCocodrilos();
      moverCocodrilosF()
      colision();
      win();
      timer();
  
  } else if (estado == 2) {
      background(20,70,20);
      rectMode(CENTER);
      fill(50,30,0);
      noStroke();
      rect(300,280,width,420);
      sapo();
      dibujarCocodrilos();
      moverCocodrilosM();
      colision();
      win();
      timer();
      
  } else if (estado == 3) {
      background(20,70,20);
      rectMode(CENTER);
      fill(50,30,0);
      noStroke();
      rect(300,280,width,420);
      sapo();
      dibujarCocodrilos();
      moverCocodrilosD();
      colision();
      win();
      timer();
      
  } else if (estado == 4){
      background(50);
      textAlign(CENTER,CENTER);
      textSize(40);
      fill(200,50,50);
      text("¡PERDISTE!", 300,150);
      botonesFinales();
  } else if (estado == 5){
      reloj += 0;
      background(50);
      textAlign(CENTER,CENTER);
      textSize(40);
      fill(50,50,200);
      text("¡GANASTE CRACK!", 300,150);
      fill(255);
      text("TIME:  " + round(reloj) + "  SECONDS",300,250);
      botonesFinales();
  } else if (estado == 6){
      background(50);
      textAlign(CENTER,CENTER);
      textSize(30);
      fill(50,50,200);
      for (let i = 0; i < 4; i++){
        text(textos[i], 300 , yc[i]); 
        yc[i] += 2;
      }
      if (yc[3] > 600) {
        fill(200,50,50);
        textAlign(CENTER,CENTER);
        noStroke();
        ellipse(300,300,d + 20);
        fill(255);
        text("RESET", 300,300);
      }
  } 
}

function timer(){
  push();
  reloj = reloj + 0.015;
  fill(255);
  textAlign(LEFT, CENTER)
  text("TIME:  " +round(reloj) + " SECONDS",10,50) ;
  pop();
}
function creditos(){
  for(let i = 0; i < 4; i++){
    yc[i] = -50 - i * 150
  } 
}
function sapo(){
  noFill();
  rect(xs,ys,30,30);
  image(frog[s], xs - 15, ys - 5, 40, 40);
}

function dibujarCocodrilos() {
  for ( let i=0; i<cant; i++ ) {
    //dibujo
    noFill();
    rect(x[i], y[i], m, m);
    fotodrilos();
  }
}

function inicioCocodrilos(){
  for(let i = 0; i < cant; i++ ){
    x[i] = random(0+m,width-m);
    y[i] = 100 + 50 * i;
    velX[i] = random(3, 9);
  }
}

function moverCocodrilosF(){
  for(let i = 0; i < cant; i++){
    x[i] += velX[i] ;
    
    //LIMITES 
    if ( x[i] > width-m  ) {
      velX[i] = random(-4, -6);
    } else if ( x[i] < 0 + m  ){
      velX[i] = random(4, 6);
    }
  }

}

function moverCocodrilosM(){
  for(let i = 0; i < cant; i++){
    x[i] += velX[i] ;
    
    //LIMITES 
    if ( x[i] > width-m  ) {
      velX[i] = random(-7, -9);
    } else if ( x[i] < 0 + m  ){
      velX[i] = random(7, 9);
    }
  }

}

function moverCocodrilosD(){
  for(let i = 0; i < cant; i++){
    x[i] += velX[i] ;
    
    //LIMITES 
    if ( x[i] > width-m  ) {
      velX[i] = random(-9, -11);
    } else if ( x[i] < 0 + m  ){
      velX[i] = random(9, 11);
    }
  }

}
function win(){
  for(let i = 0; i < cant; i++){
    if (ys < 100) {
      estado = 5;
    }
  }
}

//COLISION 
function colision(){
  for(let i = 0; i < cant; i++){
    if (xs + 30 > x[i] && xs < x[i] + 40 && ys + 30 > y[i] && ys < y[i] + 40){
      estado = 4;
    }
  }
}
function botones(){
  for(let i = 0; i < 3; i = i + 1){
    noStroke();
    ellipse(100 + 200 * i, yb, d);
  }
}

function botonesFinales(){
  for(let i = 0; i < 2; i++){
    textAlign(CENTER,CENTER);
    textSize(20);
    fill(colorcito[i]);
    noStroke();
    ellipse(200 + 200 * i,400,d);
    fill(255);
    text("CRED", 200,400);
    text("RESET", 400,400);
  }
}

function fotodrilos(){
  for (let i = 0; i < cant; i++){
    if ( velX[i] < 0  ) {
      image (cocodrilo[1], x[i] - 25, y[i] -27, m + 40, m + 30 );
    } else {
      image (cocodrilo[0], x[i] - 25, y[i] -15, m + 40, m + 10);
    }
  }
  
}

function estado0(){
  //MENU
    ys = 550;
    xs = 300;
    creditos();
    background(145,0,240);
    fill(0,40,160);
    botones();
    textSize(50);
    textAlign(CENTER,CENTER);
    fill(20,255,100);
    text("RUN AC",300, 150);
    fill(255);
    textSize(20);
    text("FACIL",100, yb);
    text("MEDIA",100 + 200, yb);
    text("DIFICIL",100 + 400, yb);
    textSize(18);
    textAlign(LEFT,CENTER);
    text("Usa las flechas para atravesar el pantano", 50 , 475);
    text("Pero OJO! Cuidado con los cocodrilos que andan con hambre" , 50 ,550);
    image(flechas, 425, 400,125,125);
}
function mousePressed(){
  // BOTONES DE DIFICULTAD
  if ( estado == 0 && dist(100,yb,mouseX,mouseY) < d/2) {
    estado = 1;
  } else if (estado == 0 && dist(300,yb,mouseX,mouseY) < d/2) {
    estado = 2;
  } else if (estado == 0 && dist(500,yb,mouseX,mouseY) < d/2) {
    estado = 3;
  }
  
  // CREDITOS Y REINICIO
  if ( estado == 4  && dist(200,400,mouseX,mouseY) < d/2) {
    estado = 6;
  } else if ( estado == 4  && dist(400,400,mouseX,mouseY) < d/2) {
    estado = 0;
  } else if ( estado == 5  && dist(200,400,mouseX,mouseY) < d/2) {
    estado = 6;
  } else if ( estado == 5  && dist(400,400,mouseX,mouseY) < d/2) {
    estado = 0;
  } else if ( estado == 6  && yc[3] > 600 && dist(300,300,mouseX,mouseY) < (d + 10)/2) {
    estado = 0;
  }
}
function keyPressed(){
  if (keyCode === UP_ARROW && ys > 50 ) {
    s = 1;
    ys = ys - 50 ;
  } else if (keyCode === DOWN_ARROW && ys < height - 50 ) {
    s = 2;
    ys = ys + 50 ;
  }  else if (keyCode === LEFT_ARROW && xs > 0 + 50 ) {
    s = 3;
    xs = xs - 50 ;
  }  else if (keyCode === RIGHT_ARROW && xs < width -50 ) {
    s = 4;
    xs = xs + 50;
  }
}
