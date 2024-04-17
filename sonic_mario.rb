#Programación de música Mario Bros para Sonic Pi
#Code by Hackspawn

use_bpm 280  # Define el tempo en beats por minuto

# Lista intercalada de notas y duraciones
notes_and_durations = [76, 12, 76, 12, 20, 12, 76, 12, 20, 12, 72, 12, 76, 12, 20, 12, 79, 12, 20, 36, 67, 12, 20, 36]

# Iterar sobre la lista en pasos de 2
notes_and_durations.each_slice(2) do |note, duration|
  play note
  sleep duration * 0.1  # Ajusta el 0.1 a tu preferencia para cambiar la duración de las pausas
end
