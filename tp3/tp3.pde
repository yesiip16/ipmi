//Yesica Pozo || n°legajo: 119116/4
//https://youtu.be/ZKoLspCTCcY?si=tYdESPkAgoTc6Xsp

int lado;
int mitad;
color color1, color2;
PImage imagen;
boolean click;
int duracion = 50; // duración de los  colores random

void setup(){
 size (800, 400);
 imagen= loadImage("imagentp3.jpg");
 lado = 100; // Lados de cada cuadrado --> 100
 mitad = height/2;//mitad del alto=400 --> 200
 click = false;
}


void draw(){
image(imagen, 0, 0, width/2, height);
if(!click){ // conddicional
   dibujarImagen(255,0);
}else{
  if (frameCount > duracion){
    color1 = seleccionarColor();
    color2 = seleccionarColor(); 
    dibujarImagen(color1,color2);
    frameCount = 0; // lo reinicio para ue cada color tenga la misma duración
  }
}
}

color seleccionarColor(){
 float r = random (0, 255), g = random (0, 255), b = random (0, 255); // para cada variable genero un valor flotante random entre 0 y 255
  return color(r, g, b); // Use los colores RGB 
}

void dibujarImagen(color c1, color c2){
  for(int i=0; i<height; i=i+lado){   //recorre en filas 
    for(int j=height; j<width; j=j+lado){ // recorre en columnas
      if ((((i==0) ||(i==mitad)) && ((j == height)||(j == (width-mitad)))) || (((i==lado) ||(i==mitad+lado)) && ((j == height+lado)||(j == (width-lado))))){     
        color1 = c1;
        color2 = c2;
      }else{
        color1 = c2;
        color2 = c1;
      }
      hacerCuadrado(color1, color2, j, i, j+lado, i, j+lado, i+lado, j, i+lado); //llamo a la función 
    }
   }
}

void hacerCuadrado(color c1, color c2, int x1, int y1, int x2, int y2, int x3, int y3, int x4, int y4){
  fill(c1);
  noStroke();
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
  float centro; // esta bariables es para poder armarme el cuadrado interior
  centro = calcularDistancia(x1, y1, x2, y2); //todos los cuadrados miden lo mismo
  fill(c2);
  quad(x1+centro, y1, x2, y2+centro, x3-centro, y3, x4, y4-centro);
}

//función que retorna con parametros
float calcularDistancia(int x1, int y1, int x2, int y2){
  float distancia = dist(x1, y1, x2, y2); // distancia entre los dos puntos
  float esq = distancia/2;
  return (esq);
}

void mouseClicked(){
  if((mouseX > height) && (mouseX < width) && (mouseY > 0) && (mouseY < height)){
    if(!click){
       click = true;
    }else{
      click = false;
  }}
}
