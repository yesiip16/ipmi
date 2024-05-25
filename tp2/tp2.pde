//yesica pozo n° 116119/4
//Dimensiones del boton
int x = 450;
int y = 400;
int ancho = 175;
int alto = 60;

//variables
int time;
String botonTxt;
int tamTxt;
PImage [] imagenes;//vector de imagenes
String titulo, txt1,txt2,txt3;
int posX, posY;
boolean iniciar;
 
void setup(){
   size(640, 480);
   botonTxt = "Inicio";
   tamTxt = 50;
   imagenes = new PImage[4];
   imagenes[0] = loadImage("monopoly.jpg");
   imagenes[1] = loadImage("jugando.jpg");
   imagenes[2] = loadImage("juego.jpg");
   imagenes[3] = loadImage("tablerocaja.jpg");
   titulo = "Como jugar Monopoly";
   txt1  = "El juego contiene un tablero, \ndinero, cartas  \n(propiedades, comunidad, suerte), \nfichas, dados, casas y hoteles. \n\nPreparación: Cada jugador elige una ficha y recibe \nuna cantidad igual de dinero. \nLas cartas de comunidad y suerte se mezclan y \nse colocan en su lugar en el tablero.\nInicio del juego: los jugadores lanzan los dados y \nel valor más alto empieza el juego. \nTurnos, en cada turno los jugadores lanzan los dados y \nmueve su ficha por el tablero.";
   txt2  = "Luego, toma acciones según la casilla en donde cae: \ncomprar propiedades, pagar alquiler, \ntomar carta de suerte o comunidad, entre otros.\nCompras de propiedades: \nsi caes en una propiedad sin dueño, \npodés comprarla.Si no lo haces, \nse subasta entre los jugadores.\nConstrucción: si tienes todas las \npropiedades de un color, \npodés construir casas \ny hoteles en ellas \npara aumentar el alquiler.";
   txt3 = "Ingresos: ganas dinero de otros jugadores \nque caen en tus propiedades.\nTarjetas de suerte y comunidad: \ncuando caigas en estas casillas, tomas una carta \ny sigue las instrucciones.\nBancarrota: pierdes si no \npuedes pagar la deuda. \nEn este caso, vendes tus propiedades y \nel juego continúa sin ti.\nel juego termina cuando solo queda \nun jugador en pie. \nEste jugador es el ganador."; 
   posX = 30;
   iniciar = false;
   imagenes[1].filter(BLUR, 1.5);
   imagenes[2].filter(BLUR, 1.5);
   imagenes[3].filter(BLUR, 1.5);
}


void draw(){
  frameRate(15);
  if(!iniciar){
    image(imagenes[0], 0, 0);
    text(titulo, 90, 380);
    fill(255);
    rect(x, y, ancho, alto);
    fill(0);
    textSize(tamTxt);
    text(botonTxt, 483, 445);
  }
  else{
    posX = 20;
    time = (frameCount/3);
    fill(0, 0, 255);
    textSize(23);
    if (time < 160){
      posY = time;
      image(imagenes[1], 0, 0);
      text(txt1, posX, posY);
    }
    else if(time < 320){
      image(imagenes[2], 0, 0);
      posX = time-200;
      posY = (height/2)-100;
      text(txt2, posX,posY);
    }
    else if(time < 480){
      image(imagenes[3], 0, 0);
      posY = time-350;
      text(txt3, posX, posY);
    }
    else{
      iniciar = false;
      frameCount = 0;
      botonTxt = "Reiniciar";
      tamTxt = 30;
    }
  }  
}

void mousePressed(){
  if ((mouseX > x && mouseX < x+ancho && mouseY > y && mouseY < y+alto) && (iniciar == false)){
      iniciar = true;
  }
}
