# 🧹 Reset Launchpad para macOS

Este proyecto proporciona un pequeño script de shell que restablece la disposición del Launchpad en macOS eliminando su caché y reiniciando el Dock.

Ideal si:
- El orden de tus aplicaciones se ha desorganizado.
- Hay iconos de apps fantasma que ya no están instaladas.
- Quieres volver al Launchpad por defecto, limpio y ordenado.

---

## ⚙️ ¿Qué hace exactamente?

Ejecuta este comando:

```bash
sudo find /private/var/folders/ -type d -name com.apple.dock.launchpad -exec rm -rf {} + 2>/dev/null
killall Dock
```

Este script hace lo siguiente:

- 🔍 Busca las carpetas de configuración del Launchpad dentro de `/private/var/folders/`.
- 🗑️ Elimina dichas carpetas para borrar la caché visual del Launchpad.
- 🔄 Reinicia el Dock para que se apliquen los cambios al instante.

---

## 🚀 Cómo usar

### Opción 1: Script en Terminal

1. Crea un archivo llamado `reset_launchpad.sh` y copia dentro lo siguiente:

```bash
#!/bin/bash
sudo find /private/var/folders/ -type d -name com.apple.dock.launchpad -exec rm -rf {} + 2>/dev/null
killall Dock
```

2. Abre la Terminal, navega hasta el directorio donde guardaste el archivo y ejecuta:

```bash
chmod +x reset_launchpad.sh
./reset_launchpad.sh
```

> Se solicitará tu contraseña de administrador (es necesario para eliminar archivos del sistema).

---

### Opción 2: Aplicación para macOS (opcional)

También puedes usar la versión `.app` si la hemos empaquetado. Estará disponible en la sección [Releases](https://github.com/TU-USUARIO/resetlaunchpad/releases).

---

## 🛑 Advertencia

> Este script **restablece completamente** la organización del Launchpad.

Lo que **sí** hace:
- Elimina la disposición personalizada de las apps y carpetas del Launchpad.

Lo que **no** hace:
- No borra ninguna app instalada.
- No afecta a tus datos o configuraciones de usuario fuera del Launchpad.

---

## 📂 Archivos incluidos

### `reset_launchpad.sh`

```bash
#!/bin/bash
sudo find /private/var/folders/ -type d -name com.apple.dock.launchpad -exec rm -rf {} + 2>/dev/null
killall Dock
```

### `LICENSE`

```text
MIT License

Copyright (c) 2025 Cristóbal Ruiz Lorite

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

## 🙋‍♂️ Autor

Desarrollado por [Cristóbal Ruiz Lorite](https://crinlorite.com)  
📬 contacto@crinlorite.com
