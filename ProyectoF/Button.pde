class Button{
  PVector position;
  PImage img;
  
  Button(String tempText, PVector tempPos){
    setImg(tempText);
    position=tempPos;
  }
  
  void setImg(String imgn){
    img=loadImage(imgn);
  } 
  
  void display(){
    rectMode(RADIUS);
    fill(255);
    stroke(0);
    if(pick(mouseX,mouseY)){
      strokeWeight(15);
      rect(position.x, position.y, 90, 90);
      
    }else{
      strokeWeight(5);      
      rect(position.x, position.y, 90, 90);
      }
     image(img,position.x-90, position.y-90);
  }
  
  boolean pick(int x, int y){
    return abs(x-position.x)<=90&&abs(y-position.y)<=90;
  }
  
  boolean click(int x, int y){
    return pick(x,y)&&mousePressed;
  }
  
}