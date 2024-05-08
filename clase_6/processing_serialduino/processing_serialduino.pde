import processing.serial.*;
//este es mi primer código en processing
Serial myPort; // Crea un objeto desde class Serial


void setup(){
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[3], 9600);
  myPort.clear();
  size(1024,768); //determina el tamaño de la ventana de draw
  //fullScreen();
}

void draw(){
  background(255, 128, 0);//fondo naranjo inicial en RGB
  while (myPort.available() > 0) {
    int in = myPort.read();
    background(in*3, in*4, in*5);//fondo naranjo
    line(mouseX, mouseY, 700, in*2);//linea = trazo
    stroke(2);// grosor es de 2px
    println(in);
  }
}
