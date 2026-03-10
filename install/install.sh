#!/usr/bin/env zsh
# install/install.sh - Instalador idempotente para local-toolkit

set -e

BIN_DIR="$HOME/bin"
TOOLKIT_BIN="$(cd "$(dirname "$0")/../bin" && pwd)"

echo "🚀 Iniciando instalación de local-toolkit..."

# 1. Crear ~/bin si no existe
if [[ ! -d "$BIN_DIR" ]]; then
    echo "📁 Creando $BIN_DIR..."
    mkdir -p "$BIN_DIR"
fi

# 2. Copiar scripts y aplicar permisos
echo "🛡️ Copiando binarios y aplicando permisos..."
for tool in "$TOOLKIT_BIN"/*; do
    tool_name=$(basename "$tool")
    cp "$tool" "$BIN_DIR/"
    chmod +x "$BIN_DIR/$tool_name"
    echo "   ✅ $tool_name instalado en $BIN_DIR"
done

# 3. Añadir bin al PATH en ~/.zshrc si no está presente
ZSHRC="$HOME/.zshrc"
PATH_EXPORT="export PATH=\"\$HOME/bin:\$PATH\""

if ! grep -q "$PATH_EXPORT" "$ZSHRC"; then
    echo "🔗 Añadiendo ~/bin al PATH en $ZSHRC..."
    echo -e "\n# Antigravity local-toolkit path" >> "$ZSHRC"
    echo "$PATH_EXPORT" >> "$ZSHRC"
fi

# 4. Enlazar configuraciones de shell personalizadas
SHELL_CONFIG_SOURCE="source \"$(pwd)/shell/custom_aliases.zsh\""

if ! grep -q "custom_aliases.zsh" "$ZSHRC"; then
    echo "🔗 Enlazando configuraciones de shell en $ZSHRC..."
    echo -e "\n# Antigravity local-toolkit custom aliases" >> "$ZSHRC"
    echo "$SHELL_CONFIG_SOURCE" >> "$ZSHRC"
    echo "✅ Configuraciones de shell enlazadas."
else
    echo "ℹ️ Las configuraciones de shell ya están enlazadas en $ZSHRC."
fi

echo "\n✨ Instalación completada con éxito."
echo "Puedes probar el comando escribiendo: dictado"
echo "O usar tus nuevos alias tras ejecutar: source ~/.zshrc"
