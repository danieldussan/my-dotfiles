#!/bin/bash
NOTES_FILE="$HOME/.config/rofi/important_notes.txt"

# Si el archivo no existe, se crea vacio
if [ ! -f "$NOTES_FILE" ]; then
  echo -e "" >"$NOTES_FILE"
fi

# Agregar opción para editar al menú
echo "✏️ Editar notas" >/tmp/notes_menu.txt
cat "$NOTES_FILE" >>/tmp/notes_menu.txt

# Mostrar la lista con rofi y capturar la selección
selected=$(rofi -i -dmenu -config ~/.config/rofi/config-clipboard.rasi </tmp/notes_menu.txt)

# Si seleccionaste "Editar notas", abrir nvim
if [ "$selected" == "✏️ Editar notas" ]; then
  kitty --detach nvim "$NOTES_FILE"
  exit 0
fi

# Si seleccionaste algo distinto, copiarlo al portapapeles
if [ -n "$selected" ]; then
  echo -n "$selected" | wl-copy
fi
