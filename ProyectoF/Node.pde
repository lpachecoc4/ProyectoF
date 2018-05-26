class Node{

  PVector position;
  
  
  Node(PVector tempPos){
    position=tempPos;
  }
  
  Node(int x, int y){
    position=new PVector(x,y);
  }
  
  void display(){
    pushStyle();
    if(pick(mouseX, mouseY)){
      strokeWeight(3);
      stroke(0);      
    }else{
      pushStyle();
      strokeWeight(1);
      stroke(0);
      }
    
    ellipse(position.x,position.y,10,10);
    popStyle();
  }
  
  boolean pick(int x, int y){
    return sqrt(sq(x-position.x) + sq(y-position.y)) <=10;
  }
  
  boolean click(){
    return pick(mouseX, mouseY)&&mousePressed;
  }
  
  int x(){
    return int (position.x);
  }
  
  int y(){
    return int (position.y);
  }
}