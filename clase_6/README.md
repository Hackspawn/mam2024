# Clase #6: Conexión Arduino+Processing (vía Serial)

### Actividad en Clases:
Mediante un código de arduino envíar información mediante Serailprint a Processing usando la librería [Serial](https://processing.org/reference/libraries/serial/index.html)

Aspectos importantes a considerar:
1. Serial necesita acceder al puerto donde está conectado arduino. Para ello, *printArray(Serial.list());* nos va a arrojar un listado de puertos de conexión a arduino: "dev" si es en linux o mac y "COM" si es en windows.
2. Una vez identificado el puerto de la lista reemplazar el valor de la lista en *myPort = new Serial(this, Serial.list()[3], 9600);* esto establece el puerto de conexión y la velocidad de transferencia de bits, en este caso 9600.
3. Si llegamos a tener un **error de puerto ocupado** es que seguramente tenemos el IDLE de Arduino abierto. Es quien tiene prioridad de lectura de dicho puerto.
4. Independiente del valor que mande arduino es importante entender que serial leerá el campo de datos del monitor serial por lo tanto la caracterización de la data pude ser declarada en el mismo código de processing (ejemplo: *"int in ="*).

En el caso de hoy trabajamos con el mismo sensor SHARP IR de la clase#4. Los datos obtenidos fueron utilizados para modificar el color de fondo dentro de "while".

Intenta conectar un sensor distinto como un potenciometro, mapea los valores con *map()* y registralos en serial con *Serial.print*

Suerte!
