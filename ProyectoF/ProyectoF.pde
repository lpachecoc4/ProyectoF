//Bar bar;
Node start, fin, apoyoin;

Button newBar, erase, setAngle, setLength, move, force, moment, fixed, roller, collar, pinned, corde,juego,comoJuego,menu;

int mode, z, w, f, d, u, pantalla;
float x, y;
int j=0;

char[] numeros=new char[3];

Boolean P, Q, M, joda, algo=false;

PVector d1 = new PVector(0, 0), d2 = new PVector(0, 0);

PImage como;

ArrayList<Bar> barras=new ArrayList<Bar>();
ArrayList<Support> apoy =new ArrayList<Support>();
//ArrayList<Node> nodos=new ArrayList<Node>();

void setup() {
  fullScreen();
  mode=0;
  P=false;
  Q=false;
  M=false;
   
  como=loadImage("Como.png"); 
   
  newBar=new Button("xd1.png", new PVector(width*6/88, height*2/14), new PVector(40, 35), 1,true);
  setAngle= new Button("setAngle1.png", new PVector(width*6/88, height*4/14), new PVector(40, 35), 0,true );
  setLength= new Button("setLength1.png", new PVector(width*6/88, height*6/14 ), new PVector(40, 35), 3, true);
  move=new Button("mano1.png", new PVector(width*6/88, height*8/14), new PVector(40, 35), 5,true);
  force= new Button("force1.png", new PVector(width*6/88, height*10/14), new PVector(40, 35), 0,true);
  moment= new Button("moment1.png", new PVector(width*6/88, height*12/14 ), new PVector(40, 35), 0,true);
  fixed= new Button("fixed.png", new PVector(width*82/88, height*2/14), new PVector(40, 35), 7,true);
  roller=new Button("roller.png", new PVector(width*82/88, height*4/14), new PVector(40, 35), 8,true);
  collar= new Button("collar.png", new PVector(width*82/88, height*6/14), new PVector(40, 35), 0,true);
  pinned=new Button("pinned.png", new PVector(width*82/88, height*8/14), new PVector(40, 35), 10,true);
  corde= new Button("corde.png", new PVector(width*82/88, height*10/14), new PVector(40, 35), 0,true);
  erase=new Button("Papelera1.png", new PVector(width*82/88, height*12/14), new PVector(40, 35), 12,true);
  juego=new Button("Usar",new PVector(width/2,height/2-100),new PVector(100,40),1,false);
  comoJuego=new Button("Como Usar",new PVector(width/2,height/2+100),new PVector(100,40),2,false);
  menu=new Button("casa.png", new PVector(width/2, height-50), new PVector(40, 35), 0,false);
}

void draw() {
  dibujar();
}

void mousePressed() {
  if (get(mouseX, mouseY) == -3118380) {
    d1 = new PVector(mouseX, mouseY);
    algo = true;
  }
}


void mouseReleased() {
  if (mode==1&&P) {
    Q=true;
  }
  if (algo == true) {

    d2 = new PVector(mouseX, mouseY);
    
    for (int i=0; i<barras.size(); i++) {
      barras.get(i).origin.position.x = barras.get(i).origin.position.x - (d1.x-d2.x);
      barras.get(i).origin.position.y = barras.get(i).origin.position.y - (d1.y-d2.y);
      barras.get(i).end.position.x = barras.get(i).end.position.x - (d1.x-d2.x);
      barras.get(i).end.position.y = barras.get(i).end.position.y - (d1.y-d2.y);
    }
    algo = false;
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
}

boolean nose(int i) {
  return barras.get(i).origin().click()||barras.get(i).end().click();
}