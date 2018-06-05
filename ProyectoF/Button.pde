class Button {
  String texto;
  PVector position, size;  
  PImage img;
  int valor;
  boolean tipo;

  Button(String tempText, PVector tempPos, PVector tempTam, int val, boolean tip) {
    setValor(val);
    setImg(tempText);
    position=tempPos;
    size=tempTam;
    setTipo(tip);
    setTex(tempText);
  }

  void setTipo(boolean a) {
    tipo=a;
  }
  void setImg(String imgn) {
    img=loadImage(imgn);
  } 
  void setTex(String txt) {
    texto=txt;
  } 

  void setValor(int a) {
    valor=a;
  } 
  void display() {
    pushStyle();
    rectMode(RADIUS);
    fill(255);
    stroke(0);
    if (click()) { 
      if (tipo) {
        mode=valor;
      } else {
        pantalla=valor;
      }
    }
    if (pick(mouseX, mouseY)) {
      strokeWeight(8);
      rect(position.x, position.y, size.x, size.y, 8);
    } else {
      strokeWeight(5);
      rect(position.x, position.y, size.x, size.y, 8);
    }
    if (tipo||valor==0) {
      imageMode(CENTER);
      image(img, position.x, position.y);
    } else {
      fill(0);
      textSize(25);
      textAlign(CENTER);
      text(texto, position.x, position.y);
    } 
    popStyle();
  }

  boolean pick(int x, int y) {
    return (x<=position.x+(size.x) && x>=position.x-(size.x) && y<=position.y+(size.y) && y>=position.y-(size.y));
  }

  boolean click() {
    return pick(mouseX, mouseY)&&mousePressed;
  }
}