class Node{

  PVector position;
  
  
  Node(PVector tempPos){
    position=tempPos;
  }
  
  Node(float x, float y){
    position=new PVector(x,y);
  }
  
  void display(){
    pushStyle();
    if(pick(mouseX, mouseY)){
      strokeWeight(3);
      stroke(0);      
    }else{
      strokeWeight(1);
      stroke(0);
      }    
    ellipse(position.x,position.y,10,10);
    popStyle();
  }
  
  boolean pick(int x, int y){
    return sqrt(sq(x-position.x) + sq(y-position.y)) <=5;
  }
  
  boolean click(){
    return pick(mouseX, mouseY)&&mousePressed;
  }
  
  float x(){
    return position.x;
  }
  
  float y(){
    return position.y;
  }
}