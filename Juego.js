class Juego{
  constructor(){
 
    this.Mowgli = new Player();
    this.Caja = [];
    this.Shere = new Enemigo();
    this.estado = 0;
    this.a = 0;
    this.contador = 0;
    this.tiempo = 1000;
    
  }
  
  dibujar(img, img2, img3,selva){
    if (this.estado == 0){
      
      background(50,125,25);
      fill(0);
      textAlign(CENTER, CENTER);
      //text("Pulsa el mouse para comenzar", width/2, height/2);
      text("Utiliza la tecla espacio para saltar los arbustos", width/2, height/3 * 2);
      fill( 25, 100, 0);
      ellipse(width/2, height/3, 150, 80);
      fill(255);
      text("START", width/2, height/3);
      
    } else if (this.estado == 1) {
      
      // Distancia entre caja y caja
      background(selva);
      this.tiempo --;
      fill(0);
      //text("Tiempo:" + this.tiempo, 550, 50 ); No lo puse en el juego porque creo que es mejor que quede en la incognita de cuanto falta para terminar :-)
      this.contador += 1;
      this.a += 0.00005;
      if (random(1) < 0.0005 + this.a && this.contador >= 30) {
        this.Caja.push(new Obstaculo());
        this.contador = 0;
      }
    
      this.Mowgli.dibujar(img2);
      this.Mowgli.mover();
  
      for(let t of this.Caja){
        t.dibujar(img3);
        t.mover();
        if (this.Mowgli.hits(t)){
        
          this.Mowgli.x -= 5;
        
        }
      }
    
      this.Shere.dibujar(img);
      if ( this.tiempo == 0) {
        this.estado = 3
      }
      if (this.Shere.x + this.Shere.tam > this.Mowgli.x &&
      this.Shere.x < this.Mowgli.x + this.Mowgli.tam &&
      this.Shere.y + this.Shere.tam > this.Mowgli.y &&
      this.Shere.y < this.Mowgli.y + this.Mowgli.tam) {
      
        fill(0);
        textAlign(CENTER,CENTER);
        this.estado = 2;
      }
    } else if (this.estado == 2) {
      background(230,30,12);
      fill(0);
      text("Te atrapo Shere Khan!",width/2, height/3)
      fill(250,50,35);
      ellipse(width/2, height/3 * 2, 150, 80);
      fill(0);
      text("RESET", width/2, height/3 * 2);
    } else if( this.estado == 3) {
      background(30,230,12);
      fill(0);
      text("Escapaste de shere Khan!",width/2, height/3)
      fill(50,250,35);
      ellipse(width/2, height/3 * 2, 150, 80);
      fill(0);
      text("RESET", width/2, height/3 * 2);
    }
  }
  saltar(){
    if (key == ' ') {
      this.Mowgli.saltar();
    }
  }
  comienzo(){
    if (dist(mouseX, mouseY, width/2, height/3) < 150 && this.estado == 0){
      this.estado = 1;
    }
  }
  reinicio(){
    if (dist(mouseX, mouseY, width/2, height/3 * 2) < 150 && this.estado == 2){
      this.estado = 0;
      this.a = 0;
      this.contador = 0;
      this.tiempo = 1000;
      this.Mowgli.reinicio();
      this.Caja = [];
      //No puedo hacer que el arbusto esté en width cuando reinicio el programa, debe ser por que es la posicion inicial de cada arreglo que creo. No queda mal igual pero bueno 
      this.Caja.reinicio();
    }
  }
}
