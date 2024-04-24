# Código creado por Hackspawn
live_loop :midi_piano do
  #ren sync recuerden poner la ruta del dispositivo midi en note_on
  note, velocity = sync "/midi:arduino_zero:2/note_on"
  #en synth eligen el sintetizador que desean
  synth :rodeo, note: note
end
