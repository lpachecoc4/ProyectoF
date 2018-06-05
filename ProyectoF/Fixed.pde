class Fixed extends Support{  

  Fixed(Node pos){  
  super(pos);
  }
  @Override
  void display() {
    pushStyle();
    imageMode(CENTER);
    image(loadImage("fixed.png"),pos.position.x, pos.position.y+16);
    pos.display();
    popStyle();    
  }
}