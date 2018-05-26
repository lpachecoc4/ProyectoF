class Bar{
  Node origin;
  Node end;
  
  
  Bar(Node tempOrigin, Node tempEnd){
    origin=tempOrigin;
    end=tempEnd;
  }
  
  Bar(Node tempOrigin, int tempLength, int tempAngle){
    origin=tempOrigin;
    end=new Node(new PVector(tempOrigin.x()+tempLength*cos(radians(tempAngle)),tempOrigin.y()-tempLength*sin(radians(tempAngle))));
  }
  
  //void setEnd(int tempLength){
  //  end=new Node();
  //}
  
  void display(){
    pushStyle();
    stroke(color(208, 206, 212));
    strokeWeight(20);
    //fill(208, 206, 212);
    line(origin.x(), origin.y(), end.x(), end.y());
    popStyle();
    origin.display();
    end.display();
    //println(arccos(sqrt(sq(origin.x-end.x)+sq(origin.y-end.y))));
  }
  
  Node origin(){
    return origin;
  }
  
  Node end(){
    return end;
  }
}