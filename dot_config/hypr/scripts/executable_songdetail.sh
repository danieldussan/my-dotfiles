#!/bin/bash

# Obtener el nombre del reproductor activo
player_name=$(playerctl -l | head -n 1)

# Obtener información de la canción
song_title=$(playerctl metadata --format '{{title}}' 2>/dev/null)
artist=$(playerctl metadata --format '{{artist}}' 2>/dev/null)
url=$(playerctl metadata --format '{{xesam:url}}' 2>/dev/null)

# Determinar el ícono según la aplicación o URL
if [[ "$player_name" == *"spotify"* ]]; then
  icon=" " # Ícono de Spotify
elif [[ "$player_name" == *"firefox"* || "$player_name" == *"brave"* ]]; then
  if [[ "$url" == *"youtube.com"* || "$url" == *"youtu.be"* ]]; then
    icon=" " # Ícono de YouTube
  elif [[ "$url" == *"spotify"* ]]; then
    icon=" " # Ícono de Netflix
  else
    icon=" " # Ícono genérico de navegador (Firefox/Brave)
  fi
elif [[ "$player_name" == *"vlc"* ]]; then
  icon="嗢" # Ícono de VLC
elif [[ "$player_name" == *"mpv"* ]]; then
  icon="" # Ícono de MPV
elif [[ "$player_name" == *"rhythmbox"* ]]; then
  icon="" # Ícono genérico de música
else
  icon="" # Ícono por defecto
fi

# Mostrar la información con el ícono correspondiente
echo "$song_title  $icon  $artist"
