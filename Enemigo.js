class Enemigo{
  
  constructor(){
    this.tig = 0;
    this.tam = 140;
    this.x = 60;
    this.y = height - this.tam; 
    
  }
  dibujar(img){
    //fill(211,134,8);
    //rect(this.x, this.y, this.tam, this.tam);
    image(img[this.tig],this.x, this.y + 15, this.tam, this.tam);
    if ( frameCount%10== 0 ) {  
      this.tig++;
    }
    if ( this.tig == 4 ) {
      this.tig = 0;
    }
  }
}
