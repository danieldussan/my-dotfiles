# Dotfiles para Kali Linux con Hyprland

Este repositorio contiene mis archivos de configuración personalizados (dotfiles) para Kali Linux con el entorno de escritorio Hyprland. Utilizo [chezmoi](https://www.chezmoi.io/) para gestionar y sincronizar estas configuraciones entre diferentes máquinas.

## Contenido del Repositorio

### Configuración de Shell

- **ZSH**: Configuración de zsh con Powerlevel10k para un prompt interactivo y personalizado
- **p10k**: Tema personalizado para Powerlevel10k con indicadores de estado de Git, entornos virtuales y más

### Gestores de Ventanas y Escritorio

#### Hyprland

Configuración modular de Hyprland dividida en:

- **Configuración base**: Importaciones y estructura principal
- **Atajos de teclado**: Combinaciones personalizadas para acciones comunes
- **Efectos visuales**: Animaciones, decoración y transparencias
- **Reglas de ventanas**: Comportamiento específico para diferentes aplicaciones
- **Configuración de monitores**: Disposición y preferencias de pantallas
- **Scripts personalizados**: Herramientas para gestionar brillo, modos de juego, etc.
- **Hipridle/Hyprlock**: Configuración de bloqueo de pantalla y suspensión

#### Waybar

Barra de estado modular y personalizada con:

- **Módulos estándar**: Carga del sistema, fecha/hora, batería, etc.
- **Módulos personalizados**: Integración con scripts propios
- **Diferentes layouts**: Configuraciones para distintas disposiciones de pantalla

### Aplicaciones

#### Kitty

Terminal con:

- Opacidad/transparencia
- Fuente Fira Code SemiBold
- Layouts flexibles y atajos de teclado personalizados

#### Neovim

Editor de texto completo con:

- Integración con LSP (Language Server Protocol)
- Sistema de plugins basado en lazy.nvim
- Atajos de teclado personalizados

#### Rofi

Lanzador de aplicaciones y menús:

- Temas personalizados para diferentes funciones
- Applets para gestión de energía, emojis, etc.
- Scripts para selección de fondos de pantalla y efectos

#### Otras Configuraciones

- **swappy**: Herramienta de anotación de capturas de pantalla
- **swaync**: Centro de notificaciones personalizado
- **wallust**: Generación de esquemas de color basados en fondos de pantalla
- **wlogout**: Menú de cierre de sesión personalizado
- **yazi**: Explorador de archivos en terminal

## Instalación

Este repositorio está diseñado para ser utilizado con [chezmoi](https://www.chezmoi.io/), una herramienta de gestión de dotfiles:

```bash
# Instalar chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply ddussan

# O si ya tienes chezmoi instalado:
chezmoi init --apply ddussan
```

## Personalización

Los archivos de configuración están organizados de forma modular para facilitar su personalización:

- Cada componente tiene su propia carpeta con archivos de configuración separados
- Los scripts personalizados están en carpetas específicas dentro de cada componente
- La configuración de Hyprland se divide en archivos base y archivos de usuario para facilitar las actualizaciones

## Características Principales

- **Tema oscuro**: Configuración optimizada para uso nocturno con colores suaves
- **Accesibilidad**: Atajos de teclado intuitivos y consistentes entre aplicaciones
- **Productividad**: Configuraciones optimizadas para desarrollo y pentesting
- **Personalización**: Estructura modular que facilita modificaciones
- **Rendimiento**: Configuraciones ligeras para un sistema rápido y eficiente

## Capturas de Pantalla

(Se pueden agregar capturas de pantalla del sistema)

## Reconocimientos

- Basado parcialmente en las configuraciones de [JaKooLit](https://github.com/JaKooLit)
- Inspirado por varias comunidades de Linux y ricing

---

**Nota**: Este repositorio está en constante evolución y se actualiza regularmente con nuevas configuraciones y mejoras.
