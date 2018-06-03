class Button {
  PVector position, size;  
  PImage img;
  int valor;

  Button(String tempText, PVector tempPos, PVector tempTam, int val) {
    setValor(val);
    setImg(tempText);
    position=tempPos;
    size=tempTam;
  }

  void setImg(String imgn) {
    img=loadImage(imgn);
  } 
  
  void setValor(int a) {
    valor=a;
  } 
  void display() {
    pushStyle();
    rectMode(RADIUS);
    fill(255);
    stroke(0);
    if(click()){    
    mode=valor;
    }
    if (pick(mouseX, mouseY)) {
      strokeWeight(10);
      rect(position.x, position.y, size.x, size.y, 8);
    } else {
      strokeWeight(5);      
      rect(position.x, position.y, size.x, size.y, 8);
    }
    
    imageMode(CENTER);
    image(img,position.x, position.y);
    popStyle();
  }

  boolean pick(int x, int y) {
    return (x<=position.x+(size.x) && x>=position.x-(size.x) && y<=position.y+(size.y) && y>=position.y-(size.y));
  }

  boolean click() {
    return pick(mouseX,mouseY)&&mousePressed;
  }
}