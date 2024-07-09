# Clase #15: WLED Audioreactivo (ESP32 + LED direccionable + mic MAX4466)

![Esquemático](WLED_Audio_ESP32.png)

El siguiente tutorial está basado en el video [WLED Sound Reactive](https://www.youtube.com/watch?v=_jZRzWsw8gs&t=509s)

Los materiales utilizados son los siguientes:
- Aro LED Neopixel*24 (u otra) o tira LED Direccionable compatible.
- Micrófono MAX4466.
- ESP WROOM 32

Esquema de conexión:

LEDs:
VIN (5V) > Power LED
GND > GND
IN/DI > a GPIO2

Mic MAX4466:
3V > VCC micrófono
GND > GND
OUT > D35 (Cambiar en WLED puerto 36 por 35)

1. En las instrucciones del [Proyecto WLED](https://kno.wled.ge/advanced/audio-reactive/) encontrarám los detalles de instalación de [WLED 0.13.3](https://github.com/atuline/WLED/releases/tag/v0.13.3).

2. Ideal que descarguen la versión para [ESP32](https://github.com/atuline/WLED/releases/download/v0.13.3/soundReactive_WLED_0.13.3_ESP32.bin) ya que es la versión que trae Efectos Audioreactibles.

3. Se debe FLASHEAR la imagen en la ESP WROOM32 con la aplicación [ESP-Flasher](https://github.com/esphome/esphome-flasher/releases). Para la WROOM32 es importante mantener presionado el botón BOOT en todo momento durante la instalaión de la imagen BIN.

4. Una vez instalado entrar a la RED local WLED (Password: *wled1234*)

5. Configura tu RED Local, guarda los cambios y reinicia.

6. En las opciones de Audio cambiar el puerto 36 por 35; guardar y probar.
