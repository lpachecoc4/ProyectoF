class Bar{
  PVector origin;
  PVector end;
  
  
  Bar(PVector tempOrigin, PVector tempEnd){
    origin=tempOrigin;
    end=tempEnd;
  }
  
  Bar(PVector tempOrigin, int tempLength, int tempAngle){
    origin=tempOrigin;
    end=new PVector(tempOrigin.x+tempLength*cos(radians(tempAngle)),tempOrigin.y-tempLength*sin(radians(tempAngle)));
  }
  
  void display(){
    pushStyle();
    stroke(color(208, 206, 212));
    strokeWeight(20);
    //fill(208, 206, 212);
    line(origin.x, origin.y, end.x, end.y);
    popStyle();
    
    pushStyle();
    stroke(0);
    strokeWeight(1);
    ellipse(origin.x,origin.y,10,10);
    ellipse(end.x,end.y,10,10);
    popStyle();
    //println(arccos(sqrt(sq(origin.x-end.x)+sq(origin.y-end.y))));
  }
  
  
}