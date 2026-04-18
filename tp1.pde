PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage ("Ghirlandaio-Giovanna_Tornabuoni_cropped.jpg");
}

void draw(){
  background(200);
  background(#2c2538);
  image(miImagen, 0, 0, 400, 400);
  fill(#ead0bc);
  ellipse(598, 100, 100, 100);
  
  fill(#403d49);
  noStroke();
  rect(399, 0, 29, 800);
  line(640,282, 471,20);
  square(686, 0, 282);
  line (0, 0, 0 ,0);
  fill(#464451);
  rect(463, 0, 20, 800);
  fill(#171521);
  rect(445, 0, 20, 800);
  fill(#1f1e2a);
  rect(427, 0, 20, 800);
  fill(#3c3744);
  rect(399, 282, 700, 200);
    
    fill(#f1d976);
  ellipse(580, 249, 100, 100);
  fill(#ead0bc);
  ellipse(611, 239, 129, 100);
    fill(#f1d976);
  ellipse(630, 259, 130, 100);
  fill(#9b3f43);
  rect(534, 244, 70, 260);
  fill(#f1d976);
  ellipse(600, 329, 149, 200);
  fill(#f1d976);
  ellipse(580, 399, 149, 100);
  fill(#f1d976);
  rect(623, 244, 70, 260);
  fill(#d46550);
  rect(592, 246, 70, 260);
  fill(#d46550);
  ellipse(534, 423, 149, 100);
  fill(#ead0bc);
  ellipse(435, 400, 79, 20);
    
    fill(#ead0bc);
    square(552, 78, 92);
     fill(#ead0bc);
    square(584, 132, 69);
    
     fill(#a1704e);
  ellipse(632, 90, 70, 120);
  fill(#ad7a50);
  ellipse(610, 90, 100, 100);
  fill(#a56e3f);
  square(566, 99,67);
  fill(#a56e3f);
  ellipse(660, 97, 60, 60);
  
  
  textSize(30);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
}
