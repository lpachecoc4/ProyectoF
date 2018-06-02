//Bar bar;
Node start;
Node fin;

Button newBar;
Button newArm;
Button setAngle;
Button setLength;

int mode;
int x;
int y;
int z,w;

Boolean P;
Boolean Q;
Boolean M;

ArrayList<Bar> barras=new ArrayList<Bar>();
//ArrayList<Node> nodos=new ArrayList<Node>();

void setup(){
  size(1200,900);
  mode=0;
  P=false;
  Q=false;
  M=false;
    
  newBar=new Button("xd.png", new PVector(170,800));
  newArm=new Button("newarm.png", new PVector(1100,800));
  setAngle= new Button("setAngle.png",new PVector(360,800));
  setLength= new Button("setLength.png",new PVector(550,800));
}

void draw(){
dibujar();
}

void mousePressed(){
  if (mode==0&&newBar.click(mouseX,mouseY)){
    mode=1;
  }  
}


void mouseReleased(){
  if(mode==1&&P){
    Q=true;
  }
}

boolean nose(int i){
  return barras.get(i).origin().click()||barras.get(i).end().click();
}
