abstract class Support {
  Node pos;
 
  Support(Node tempPos) {
    pos=tempPos;
  }
  abstract void display();
  Node pos() {
    return pos;
  }
}