PImage foto;
void setup(){
  size(800, 400);
  background(173, 211, 211);
  foto = loadImage("montaña.jpg");
}


 void draw(){
 image(foto, 0, 0, 400, 400);

 //color de M.D//
 fill(#9EB6C1);
//montaña derecha//
 triangle(800, 60, 400, 320, 800, 320);
 
 //color de M.M.D//
 fill(48, 103, 129);
//montaña del medio derecha//
 quad(665, 80, 590, 110, 660, 151, 730, 106);

 //color de M.I//
 fill(52, 130, 167);
//montaña de la izquierda//
 quad(535, 78, 400, 170, 400, 320, 660, 151);
 
 //color de M.M.I//
 fill(171, 193, 203);
///montaña del medio de la izquierda//
 quad(605, 78, 570, 98, 590, 110, 645, 89);
 
 //color del lago//
 fill(10, 171, 201);
 //lago// 
 quad(400, 320, 400, 400, 800, 370, 800, 300);
 
 //color del techo de la casa//
 fill(206, 153, 73);
 //techo de la casa//
 quad(780, 260, 707, 311, 800, 314, 800, 260);
 
 //color de la pared//
 fill(62, 22, 6);
  //pared de la casa//
 quad(737, 312, 737, 346, 800, 348, 800, 314);
 
 //color de la puerta//
 fill(85, 72, 46);
 //puerta//
 quad(739, 316, 739, 343, 755, 343, 755, 316);
 
 //color de la ventana//
 fill(160, 147, 123);
 //ventana de puerta//
 quad(741, 318, 741, 332, 752, 332, 752, 318);
 
 //color de la base de la casa//
 fill(139, 139, 139);
 //base de la casa//
 quad(752, 346, 752, 374, 800, 370, 800, 348);
 
 //color del palo de la base//
 fill(126, 84, 6);
 //palo de la base// 
 quad(738, 346, 752, 364, 752, 357, 743, 346);
 
 //color del pasto//
 fill(46, 160, 2);
 //pasto//
 triangle(400, 400, 800, 370, 800, 400);
 
 //color del pino de la izquierda//
 fill(70, 113, 53);
 //pino de la izquierda//
 triangle(422, 290, 400, 320, 442, 320);
 triangle(422, 320, 400, 350, 442, 350);
 triangle(422, 350, 400, 380, 442, 380);
 
 //color del tronco del P.I//
 fill(103, 82, 27);
 //tronco del pino de la izquierda
 quad(415, 380, 415, 400, 425, 399, 425, 380);
 
 //color del pino de la derecha//
 fill(32, 126, 6);
 //pino de la derecha//
 triangle(695, 265, 675, 300, 715, 300);
 triangle(695, 300, 673, 330, 717, 330);
 triangle(695, 330, 670, 360, 719, 360);
 
 //color del tronco del P.D//
 fill(137, 98, 26);
  //tronco del pino de la derecha//
 quad(688, 360, 688, 381, 698, 380, 698, 360);
 }
 
 
 
