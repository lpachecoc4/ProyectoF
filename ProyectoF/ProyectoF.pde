//Bar bar;
Node start;
Node fin;

Button newBar;
Button erase;
Button setAngle;
Button setLength;
Button move;
Button force;
Button moment;

int mode, x, y, z, w, f,d,u;
int j=0;

char[] numeros=new char[3];

Boolean P, Q, M;

ArrayList<Bar> barras=new ArrayList<Bar>();
//ArrayList<Node> nodos=new ArrayList<Node>();

void setup() {
  fullScreen();
  mode=0;
  P=false;
  Q=false;
  M=false;
  numeros[0]=0;
  numeros[1]=0;
  numeros[2]=0;
  
  erase=new Button("Papelera1.png", new PVector(width*6/88, height*1/11), new PVector(40, 35),2);
  newBar=new Button("xd1.png", new PVector(width*6/88, height*5/22), new PVector(40, 35),1);
  setAngle= new Button("setAngle1.png", new PVector(width*6/88, height*4/11), new PVector(40, 35),0);
  setLength= new Button("setLength1.png", new PVector(width*6/88, height*11/22 ), new PVector(40, 35),3);
  move=new Button("mano1.png", new PVector(width*6/88, height*7/11), new PVector(40, 35),5);
  force= new Button("force1.png", new PVector(width*6/88, height*17/22), new PVector(40, 35),0);
  moment= new Button("moment1.png", new PVector(width*6/88, height*10/11 ), new PVector(40, 35),0);
}

void draw() {
  dibujar();
}

void mousePressed() {
}


void mouseReleased() {
  if (mode==1&&P) {
    Q=true;
  }
}

void mouseWheel(MouseEvent event) {
  float q=event.getCount();
  if (q==-1) {
    f++;
  }
  if (q==1) {
    f--;
  }
  println(f);
}

boolean nose(int i) {
  return barras.get(i).origin().click()||barras.get(i).end().click();
}