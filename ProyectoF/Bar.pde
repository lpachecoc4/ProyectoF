class Bar {
  Node origin;
  Node end;


  Bar(Node tempOrigin, Node tempEnd) {
    origin=tempOrigin;
    end=tempEnd;
  }

  Bar(Node tempOrigin, int tempLength, int tempAngle) {
    origin=tempOrigin;
    end=new Node(new PVector(tempOrigin.x()+tempLength*cos(radians(tempAngle)), tempOrigin.y()-tempLength*sin(radians(tempAngle))));
  }

  //void setEnd(int tempLength){
  //  end=new Node();
  //}

  boolean pick(int x, int y) {
    float x1, y1, x2, y2, m, b, y3, m2, b2, x3;
    x1=origin.position.x;
    y1=origin.position.y;    
    x2=end.position.x;
    y2=end.position.y;

    m=((y2-y1)/(x2-x1));
    b=(y1-(x1*m));
    
    m2=-1/m;
    b2=(y-(x*m2));
    
    x3=((b2-b)/(m-m2));
    y3=(x3*m+b);
    
    return sqrt(sq(y-y3)+sq(x-x3))<=10 &&((x>=x2 && x<=x1)||(y>=y2 && y<=y1));
  }

  void display() {
    pushStyle();
    if (pick(mouseX, mouseY)) {
      stroke(color(208, 106, 212));
      //strokeWeight(3);
      //fill(0);
    } else {
      stroke(color(208, 206, 212));
      //fill(208, 206, 212);

      //println(arccos(sqrt(sq(origin.x-end.x)+sq(origin.y-end.y))));
    }
    strokeWeight(20);
    line(origin.x(), origin.y(), end.x(), end.y());
    popStyle();
    origin.display();
    end.display();
  }

  Node origin() {
    return origin;
  }

  Node end() {
    return end;
  }
}
