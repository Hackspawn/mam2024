//incluir la librería SD
#include <SD.h>
 
//variable para logFile
File logFile;
 
void setup()
{
  Serial.begin(9600);
  Serial.print(F("Iniciando SD ..."));
  if (!SD.begin(9))
  {
    Serial.println(F("Error al iniciar"));
    return;
  }
  Serial.println(F("Iniciado correctamente"));
}

void loop()
{
  //en este caso leo data desde un potenciometro conectado a A0
  int val2 = analogRead(A0);
  //lo mapeo de 10 bits a porcentajes con map()
  int val3 = map(val2, 0, 1023, 0, 100);
  // Abrir archivo y escribir valor en un archivo TXT
  logFile = SD.open("datalog.txt", FILE_WRITE);
  if (logFile) {
    Serial.println(val3);
    logFile.print(val3);
    logFile.println(",");
    logFile.close();
  } 
  else {
    Serial.println("Error al abrir el archivo");
  }
  delay(500);
}
