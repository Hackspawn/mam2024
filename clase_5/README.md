# Clase #5: Captura y escritura de información con Arduino + MicroSD

### Actividad en Clases:

Capturar información mediante arduino y [librería SD](https://www.arduino.cc/reference/en/libraries/sd/)
  - Primero distinguimos entre los protocolos de comunicación [I2C o IIC](https://aprendiendoarduino.wordpress.com/2017/07/09/i2c/) y [SPI](https://es.wikipedia.org/wiki/Serial_Peripheral_Interface)
  - Con una tarjeta microSD en formato [FAT32](https://es.wikipedia.org/wiki/Tabla_de_asignación_de_archivos) creamos un archivo de *texto sin formato* llamado *datalog.txt* y lo guardamos en la MicroSD
  - Con un potenciometro conectado al Analog 0 (A0) mapeamos su data con la función *map()* de 0-1023 a 0-100
  - Según el esquemático de conexión el **módulo para MicroSD** debería quedar de la siguiente manera:
    [!esquema de conexión módulo MicroSD](arduino-micro-sd-esquema.png) 
