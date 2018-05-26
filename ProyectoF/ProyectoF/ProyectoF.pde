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
  background(255);
  //println(mouseX,mouseY);
  
  newBar.display();
  newArm.display();
  setLength.display();
  setAngle.display();
  //println(barras.size());
  for (int i=0; i<barras.size(); i++){
        barras.get(i).display();
        
        }
  switch (mode){
    case 0:
      
        break;
    case 1:
         
      if(!P&&!Q&&mouseY<700&&mousePressed){
        if (barras.size()>0){
          for(int i=0; i<barras.size(); i++){
            if (barras.get(i).origin().click()){
              start=barras.get(i).origin();
              x=start.x();
              y=start.y();
              P=true;
            }else if(barras.get(i).end().click()){
              start=barras.get(i).end();
              x=start.x();
              y=start.y();
              P=true;
            }
          }
          if(!P){
            x=mouseX;
            y=mouseY;
            start=new Node(x,y);
            P=true;
          }
        }else{ 
          x=mouseX;
          y=mouseY;
          start=new Node(x,y);
          P=true;
         }
        }
        
      if(P){
        pushStyle();
        stroke(0);
        strokeWeight(1);
        ellipse(x,y,10,10);
        popStyle();
        }
        
      if(Q&&mouseY<700&&mousePressed){
        if (barras.size()>0){
          for(int i=0; i<barras.size(); i++){
            if (barras.get(i).origin().click()){
              fin=barras.get(i).origin();
              P=false;
              mode=0;
              Q=false;
              
            }else if(barras.get(i).end().click()){
              fin=barras.get(i).end();
              P=false;
              Q=false;
              mode=0;
            }
          }
         if(Q){
              fin=new Node(mouseX,mouseY);
              P=false;
              Q=false;
              mode=0;
         }
        }else{
          if(Q&&mouseY<700&&mousePressed){
          
          fin=new Node(mouseX,mouseY);
          P=false;
          Q=false;
          mode=0;
          }
        }
        barras.add(new Bar(fin,start));
      }
      break;
        
      
     
  
  }

  
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