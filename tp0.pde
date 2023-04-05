PImage zorro ;
void setup() {
  size(800,400);
  zorro = loadImage("data/zorro.jpeg");
}

void draw(){
  
  //nieve abajo
  background(190,190,190);
  //img zorrito hermoso
  image( zorro , 400, 0);
  
  //fondo
  //agua
  fill(0,70,160);
  noStroke();
  rect(0,0,400,200);
  //nieve arriba
  fill(210,210,210);
  noStroke();
  quad(0,0,0,114,270,170,130,0);
  fill(180,180,180);
  noStroke();
  triangle(0,75,0,115,270,170);
  fill(150,150,150);
  noStroke();
  triangle(0,80,0,115,270,170);
  fill(210,210,210);
  ellipse(220,135,40,30);
  ellipse(235,145,30,20);
  ellipse(140,55,50,120);
  //Ramas
  //gruesas
  stroke(80,40,0);
  strokeWeight(7);
  line(50,100,50,300);
  line(60,0,50,100);
  strokeWeight(5);
  line(190,0,50,100);
  line(20,0,50,100);
  line(50,200,200,100);
  line(50,170,150,60);
  stroke(130,90,0);
  strokeWeight(3);
  line(53,100,53,300);
  line(62,0,53,102);
  strokeWeight(2);
  line(196,0,54,100);
  line(22,0,52,100);
  line(52,202,202,102);
  line(52,172,152,60);
  //finitas
  strokeWeight(3);
  stroke(130,90,0);
  //primer rama
  line(10,10,35,50);
  line(10,30,35,50);
  line(40,20,35,50);
  line(45,80,20,65);
  //segunda rama
  line(55,90,70,20);
  line(55,90,80,40);
  //tercer rama
  line(130,10,85,78);
  line(130,70,85,78);
  line(200,30,85,78);
  line(190,35,210,10);
  line(190,35,210,50);
  line(68,90,100,20);
  line(80,20,90,37);
  line(130,45,150,10);
  //cuarta rama
  //1
  line(70,150,80,90);
  line(72,130,70,100);
  //2
  line(70,150,100,95);
  line(110,93,100,95);
  line(110,85,100,95);
  line(90,85,100,95);
  //3
  line(70,150,130,110);
  line(145,115,130,110);
  line(145,95,130,110);
  //4
  line(70,150,120,130);
  line(130,135,120,130);
  line(134,130,120,130);
  //quinta rama
  //1
  line(64,195,100,150);
  line(105,150,100,150);
  line(90,150,90,160);
  //2
  line(64,195,200,130);
  //3
  line(64,195,150,180);
  line(170,185,150,180);
  line(150,200,110,187);
  
  //4
  line(64,195,100,200);
  line(120,210,100,200);
  line(120,195,100,200);
  
  
  
  //nieve abajo
  fill(230,230,230);
  noStroke();
  rect(0,240,400,160);
  fill(190,190,190);
  noStroke();
  ellipse(300,200,200,30);
  
  
  //CUERPO
  //PATAS
  //Derecha
  strokeWeight(0);
  noStroke();
  fill(70,20,0);
  rect(185,190,13,50);
  fill(230,120,0);
  triangle(185,189,198,194,185,200);
  fill(150,50,0);
  triangle(185,200,198,193,198,215);
  fill(80,20,0);
  triangle(198,215,185,225,198,239);
  //izquierda
  fill(70,20,0);
  rect(212,190,13,50);
  fill(150,50,0);
  triangle(225,200,212,193,212,215);
  fill(80,20,0);
  triangle(212,215,225,225,212,239);
  
  //Cuello
  noStroke();
  fill(200);
  triangle(206,139,190,135,180,155);//cuello izq medio
  fill(230,120,0);
  triangle(180,155,175,125,190,135);//izq
  fill(230);
  triangle(206,139,180,155,222,125); //medio
  triangle(180,155,225,120,227,165);//medio
  fill(230,120,0);
  triangle(227,165,222,125,230,133);//der
  triangle(221,125,229,120,230,133);//der
  
  //Pecho
  fill(190);
  triangle(179,154,185,180,227,164);//medio
  triangle(227,163,184,180,229,185);//medio abajo
  triangle(185,180,229,184,225,190);//media abajo
  triangle(229,185,220,190,225,220);//medio abajo
  fill(230,120,0);
  triangle(182,140,185,190,175,175);//izq
  
  //Panza
  fill(215);
  triangle(183,178,223,189,185,190); //izq
  triangle(223,189,184,189,223,205);//izq abajo
  fill(80,60,50);
  triangle(243,240,225,240,225,220);
  
  //Espalda 
  fill(250,140,0);
  triangle(227,164,229,133,250,145); //arriba
  triangle(226,164,249,145,245,180);//arriba
  fill(230,120,0);
  triangle(249,145,244,180,270,164);//arriba derecha
  fill(250,140,0);
  triangle(270,163,244,180,265,178);
  fill(230,120,0);
  triangle(227,164,245,180,230,185);//espalda medio izq
  triangle(245,179,230,184,225,220);
  fill(255,150,45);
  triangle(265,178,244,179,240,190);//espalda clarito izq
  triangle(270,164,265,178,285,200);//espalda clarito der
  fill(230,120,0);
  triangle(265,177,285,199,240,190);
  fill(240,150,0);
  triangle(225,220,240,188,285,199);
  fill(230,120,0);
  triangle(285,199,224,219,295,230);
  
  //Cola
  fill(240,140,0);
  triangle(224,219,295,229,270,270);//derecha arriba
  fill(220,130,0);
  triangle(270,270,243,240,160,235);//medio arriba
  fill(170);
  triangle(160,235,126,237,147,250);//izq arriba
  triangle(147,250,133,260,110,230);//izq arriba
  triangle(110,231,149,251,126,236);//izq arriba
  fill(190);
  triangle(133,260,147,250,195,273);//izq abajo
  triangle(133,259,195,273,150,285);//izq abajo
  triangle(149,285,195,272,190,290);//izq abajo
  fill(210,120,0);
  triangle(195,272,190,290,270,270);//medio abajo
  fill(240,140,0);
  triangle(270,270,195,272,147,250);//medio
  triangle(270,270,147,250,160,235);//medio
  
  
  //CARA
  //barbilla
  fill(250,140,0);
  triangle(205,121,203,140,235,121);//derecha
  triangle(196,121,199,140,165,121);//izq
  rect(196,121,10,18.5);//medio
  stroke(0);
  strokeWeight(1);
  line(196,130,204,130);
  noStroke();
  strokeWeight(0);
  
  //mejilla
  fill(250,140,0);
  rect(165,96,70,25);
  
  //frente
  triangle(200,96,225,80,175,80);//medio
  triangle(224,80,197,97,240,96);//der
  triangle(176,80,203,97,160,96);//izq
  triangle(165,100,160,96,200,96);//izq abajo
  triangle(235,100,240,96,230,96);//der abajo

  //orejas
  triangle(200,80,240,80,240,60);//der 1
  triangle(240,60,240,80,244,64);//der 2
  triangle(244,64,240,80,242,80);//der 3
  triangle(242,80,240,96,220,80);//der 4
  
  triangle(160,60,160,80,200,80); //izq 1
  triangle(160,60,154,64,200,80); //izq 2
  triangle(154,64,158,80,200,80); //izq 3
  triangle(180,80,158,80,160,96); //izq 4
  
  //color oreja
  fill(210);
  triangle(220,80,233,90,236,70); //color der
  triangle(180,80,167,90,164,70); //color izq
  
  //ojos
  fill(0);
  stroke(0);
  triangle(196,106,175,100,186,110);//izq
  triangle(204,106,225,100,214,110);//der
  
  //Nariz
  fill(0);
  stroke(0);
  triangle(200,125,202,120,198,120);//medio
  triangle(200,125,202,120,204,121);//der
  triangle(200,125,198,120,196,121);//izq
  
}
