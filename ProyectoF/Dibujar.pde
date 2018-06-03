void dibujar(){
  background(255);
  //println(mouseX,mouseY);
  
  newBar.display();
  newArm.display();
  setLength.display();
  setAngle.display();
  erase.display();
  //println(barras.size());
  for (int i=0; i<barras.size(); i++){
        barras.get(i).display();
        if(barras.get(i).pick(mouseX, mouseY)){
          println(i);
        }
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
        
    case 3:
      for(int i=0; i<barras.size(); i++){
        if(barras.get(i).click()){
          barras.remove(i);
          mode=0;
        }
      }
    
    break;
     
  
  }

  
}