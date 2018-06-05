class Pinned extends Support{
  Pinned(Node pos){  
  super(pos);
  }
  @Override
  void display() {
    pushStyle();
    imageMode(CENTER);
    pos.display();
    image(loadImage("pinned2.png"),pos.position.x, pos.position.y);
    popStyle();    
  }
}