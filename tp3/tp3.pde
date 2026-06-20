//https://youtu.be/M00lh2gmLWE

PImage miImagen;

void setup(){
size(800,400); 
miImagen = loadImage("01.jpg"); 
}

void draw(){
  
  background(255); 
  image (miImagen, 0, 0, 400, 600);
  
  for(int y=0; y<400; y+=40){
  for(int x=400; x<800; x+=40){
      
  float d = dist(mouseX, mouseY, x+20, y+20);
  boolean cerca = d < 25;
    
  for(int i=0; i<40; i++){
      
  if(cerca){
  strokeWeight(3);
  }else{
  strokeWeight(1);
  }
  if(cerca){
  rect(x-2, y-2,44,44);
   }else{
  rect(x,y,40,40);
 }
      
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
      
          line(x+i, y, x+i, y+40);
        }
        
        strokeWeight(2);
        stroke(0);
        noFill();
        rect(x, y, 40, 40);
        
        //textSize(30);
        //text((400 + mouseX) + " - " + mouseY, mouseX, mouseY);
    }
    }
  }
