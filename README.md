# local-toolkit - Herramientas Personales y Automatizaciones

Este repositorio contiene mi conjunto de herramientas personales portables, diseñadas para simplificar tareas recurrentes y automatizaciones en macOS. La meta es poder restaurar todas estas herramientas en cualquier Mac nuevo de manera rápida.

## 📁 Estructura del Repositorio

- `bin/`: Scripts ejecutables para diversas automatizaciones.
- `shell/`: Configuraciones personalizadas para mi terminal.
- `install/`: Scripts de instalación automatizada.
- `docs/`: Documentación detallada de cada herramienta.

## 🛠️ Herramientas Disponibles

### 🎙️ dictado (`bin/dictado`)
Permite grabar audio desde el micrófono, transcribirlo automáticamente usando `mlx_whisper` e insertarlo en la aplicación activa en ese momento.

- **Tecnología**: usa `ffmpeg` para la captura y `whisper-large-v3-mlx` para la transcripción.
- **Uso**: ejecuta el comando, habla y el texto aparecerá donde tengas el cursor.

## 🚀 Instalación en un Mac Nuevo

Sigue estos pasos para tener tus herramientas funcionando en cuestión de segundos:

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/albertoestevez/alberto-local-toolkit.git
   cd alberto-local-toolkit
   ```

2. **Ejecuta el script de instalación**:
   ```bash
   chmod +x install/install.sh
   ./install/install.sh
   ```

3. **Reinicia tu terminal**:
   ```bash
   source ~/.zshrc
   ```

Ahora puedes usar `dictado` en cualquier parte del sistema.

---
*Mantenido por Alberto Estévez.*
