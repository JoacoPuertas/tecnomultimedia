
let todo;
let MowgliFotos = [];
let tigre = [];
let tig = 0;
let arbusto

function setup() {
  createCanvas(800, 400);
  textSize(24);
  todo = new Juego();
}

function preload() {
  for(let i = 0; i < 8; i++){
    MowgliFotos[i] = loadImage("data/caminar" + i + ".png");
  }
  
  for(let i = 0; i < 4; i++){
    tigre[i] = loadImage("data/tigre" + i + ".png");
  }
  
  arbusto = loadImage("data/arbusto.png");
  fondo = loadImage("data/fondo.png");
}
function draw() {
  todo.dibujar(tigre, MowgliFotos, arbusto, fondo);
}

function keyPressed(){
  todo.saltar();
}

function mousePressed(){
  todo.comienzo();
  todo.reinicio();
}
