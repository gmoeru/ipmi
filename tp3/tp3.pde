//https://youtu.be/M00lh2gmLWE

PImage miImagen;
float radio = 50;
int modo = 0;

void setup(){
  size(800,400);
  miImagen = loadImage("01.jpg");
  rectMode(CORNER);
}

float calcularGiro(float distancia){
  return map(distancia,0,radio,0.18,0);
}

void dibujarMarco(float x,float y,boolean cerca){
  stroke(0);
  noFill();
  if(cerca){
    strokeWeight(3);
    rect(x-2,y-2,44,44);
  }else{
    strokeWeight(2);
  
    rect(x,y,40,40);
  }
}

void draw(){
  background(255);
  image(miImagen, 0, 0, 400, 400);
  for(int y=0; y<400; y+=40){
  for(int x=400; x<800; x+=40){
      float d = dist(mouseX, mouseY, x+20, y+20);
      boolean cerca = d < radio;
      float giro = calcularGiro(d);
     
     pushMatrix();

float mover = map(d,0,radio,8,0);
mover = constrain(mover,0,8);
float ondaX = cos(frameCount*0.08 + d*0.08)*mover;
float ondaY = sin(frameCount*0.08 + d*0.08)*mover;
translate(x+20+ondaX, y+20+ondaY);
if(cerca){
  rotate(giro);
}

translate(-20,-20);
      for(int i=0; i<40; i++){
       if(modo==0){
  if(cerca){
    if((y/40)%2==0){
      stroke(map(i,0,40,180,0));
    }else{
      stroke(map(i,0,40,0,180));
    }

  }else{
    if((y/40)%2==0){
      stroke(map(i,0,40,0,180));
    }else{
      stroke(map(i,0,40,180,0));
    }
  }

}else if(modo==1){
  if((x/40)%2==0){
    stroke(map(i,0,40,0,180));
  }else{
    stroke(map(i,0,40,180,0));
  }

}else{
  if((x/40)%2==0){
    stroke(map(i,0,40,255,0));
  }else{
    stroke(map(i,0,40,0,255));
  }

 line(0,i,40,i);
  continue;

}
line(i,0,i,40);
      }

      dibujarMarco(0,0,cerca);
      popMatrix();
    }
  }
}

void mousePressed(){
  modo++;

  if(modo>2){
    modo=0;
  }
}

void keyPressed(){
  if(key=='r' || key=='R'){
    radio=50;
    modo=0;
  }

}
