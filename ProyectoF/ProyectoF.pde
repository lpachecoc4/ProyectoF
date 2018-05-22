Bar bar;
PVector start;
PVector end;
Button newBar;
Button newArm;
Button setAngle;
Button setLength;

void setup(){
  size(1200,900);
  start= new PVector(500,500);
  //end=new PVector(900,500);
  bar = new Bar(start, /*end);*/500, 45);
  newBar=new Button("xd.png", new PVector(200,800));
  newArm=new Button("newarm.png", new PVector(1100,800));
  setAngle= new Button("setAngle.png",new PVector(380,800));
  setLength= new Button("setLength.png",new PVector(560,800));
}

void draw(){
  background(255);
  println(mouseX,mouseY);
  bar.display();
  newBar.display();
  newArm.display();
  setLength.display();
  setAngle.display();
}