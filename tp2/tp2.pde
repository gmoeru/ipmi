PImage miImagen;
PImage miImagen2;
PImage miImagen3;
PImage miImagen4;
PImage miImagen5;
PImage miImagen6;
PImage miImagen7;
PImage miImagen8;
PImage miImagen9;
PImage miImagen10;
int posX = -300;
int x = 0;
int x2 = 0;
int posX2= 500;
int escena = 0;
boolean sobreBoton = false;
int tiempoEscena = 0;
int alpha = 255;
String textoYoshiki = "Es un adolescente reservado de la zona rural de Japón cuya vida cambia cuando descubre que su mejor amigo ya no es quien parece ser.";
int letras = 0;
int letras2 = 0;
int panelY = -220;
int imgFinalY = 480;
int alphaFinal = 0;

String textoHikaru = "Tras desaparecer en las montañas, Hikaru regresó... pero ya no es el mismo. Aunque conserva su apariencia y recuerdos, en realidad es una entidad desconocida que intenta comprender las emociones humanas.";

int cieloY = 0;



void setup(){
  size (640,480);
  miImagen2 = loadImage ("tiitulo.png");
  miImagen = loadImage ("tshd.jpg");
  miImagen4 = loadImage ("pueblo.jpg");
  miImagen5 = loadImage ("pueblo2.jpg");
  miImagen6 = loadImage ("yoshiki.png");
  miImagen7 = loadImage ("hikaru.png");
  miImagen8 = loadImage ("cielo.jpg");
  miImagen9 = loadImage ("tshd1.jpg");
  miImagen10 = loadImage ("tshd2.jpg");
}

void draw(){
  background(255);
  
  if(escena == 0){
    pantallaInicio();
  }
  else if(escena == 1){
    pantallaSipnosis();
  }
  else if(escena == 2){
    pantallaYoshiki();
  }
  else if(escena == 3){
    pantallaHikaru();
  }
  else if(escena == 4){
    pantallaFinal();
  }
}
  void pantallaInicio(){
    background(255);
    image(miImagen, 0, 0, 690, 490);
    image(miImagen2, 199, 99, 270, 200);
    if(mouseX > 220 && mouseX < 420 && mouseY > 360 && mouseY < 410){
      sobreBoton = true;
    }else{
      sobreBoton = false;
    }
      if(sobreBoton){
        fill(200);
      }else{
        fill(255);
      }
      stroke(0);
      rect(220, 360, 200, 50, 15);
      fill(0);
      textAlign(CENTER, CENTER);
      textSize(28);
      text("INICIAR", 320, 385);
  }
  
void pantallaSipnosis(){
  background(255);
  image(miImagen8, 0, -cieloY, 640, 1200);
  if(cieloY < 720){
    cieloY += 1;
  }

  tint(255, alpha);
  image(miImagen4, posX, 240, 270, 200);
  image(miImagen5, 10, posX, 270, 200);
  noTint();

  if(millis() - tiempoEscena < 6000){
    if(posX < 10){
      posX += 5;
    }
  }
  if(millis() - tiempoEscena > 6000){
    if(posX > -300){
      posX -= 4;
    }
    if(alpha > 0){
      alpha -= 4;
    }
  }

fill(0, alpha * 150 / 255);
rect(300,20,320,430);

fill(255, alpha);
textSize(25);
text("La historia sigue a dos amigos inseparables, Yoshiki y Hikaru, en un pueblo rural de Japón. Tras la misteriosa desaparición de Hikaru en las montañas durante una semana, este regresa aparentemente igual. Sin embargo, Yoshiki descubre que el verdadero Hikaru murió y que su cuerpo fue reemplazado por una entidad sobrenatural.",310,30,290,400); if(millis() - tiempoEscena > 8000){
}
if(millis() - tiempoEscena > 8000){
    escena = 2;
    tiempoEscena = millis();
  }
}

void pantallaYoshiki(){
  background(255);
  image(miImagen8, 0, -cieloY, 640, 1200);

  if(cieloY < 720){
    cieloY += 1;
  }

  fill(0,150);
  rect(130,100,x,200,20);

  if(x < 450){
    x += 5;
  }

  image(miImagen6, 0, 0, 300, 800);

  if(x >= 450){
    if(letras < textoYoshiki.length()){
      letras++;
    }
  }

  fill(255);
  textSize(22);
  text(textoYoshiki.substring(0, letras),240,70,250,250);

  if(millis() - tiempoEscena > 8000){
    escena = 3;
    tiempoEscena = millis();

    x2 = 0;
    letras2 = 0;
  }
}
void pantallaHikaru(){
  background(255);
  image(miImagen8, 0, -cieloY, 640, 1200);
  if(cieloY < 720){
    cieloY += 1;
  }

  fill(0,150);
  rect(490 - x2, 80, x2, 260, 20);

  if(x2 < 450){
    x2 += 5;
  }

  image(miImagen7, 340, 0, 300, 800);

  if(x2 >= 380){
    if(letras2 < textoHikaru.length()){
      letras2++;
    }
  }

  fill(255);
  textSize(22);
  text(textoHikaru.substring(0, letras2), 90, 90, 360, 230);
  
  if(millis() - tiempoEscena > 8000){
    escena = 4;
    tiempoEscena = millis();

    panelY = -220;
    imgFinalY = 480;
    alphaFinal = 0;
}
}

void pantallaFinal(){
  background(255);
  image(miImagen8, 0, 0, 640, 1200);

  fill(30);
  rect(20, panelY, 600, 220, 20);
  if(panelY < 40){
    panelY += 4;
  }

  fill(255);
  textSize(28);
  text("mensaje", 120, panelY + 60);

  textSize(18);
  text("El verano en que Hikaru murió explora el duelo y la identidad. El mensaje central de la obra es cómo lidiamos con el dolor de perder a alguien y la incapacidad de aceptar esa pérdida, mostrando hasta qué punto nos aferramos a una ilusión reconfortante antes que soltar el pasado.", 45, panelY + 95, 550, 160);
  if(alphaFinal < 255){
    alphaFinal += 3;
  }

  fill(255, alphaFinal);
  textAlign(CENTER);
  textSize(24);
  text("Presione R para reiniciar", width/2, 290);

  if(imgFinalY > 300){
    imgFinalY -= 3;
  }

  image(miImagen9, 0, imgFinalY, 320, 180);
  image(miImagen10, 320, imgFinalY, 320, 180);
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    escena = 0;
    tiempoEscena = millis();

    posX = -300;
    x = 0;
    x2 = 0;
    letras = 0;
    letras2 = 0;
    alpha = 255;

    cieloY = 0;

    panelY = -220;
    imgFinalY = 480;
    alphaFinal = 0;
  }
}
    void mousePressed(){
      if(escena == 0 && sobreBoton){
        escena = 1;
      }
    }
