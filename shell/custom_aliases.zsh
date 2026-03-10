# local-toolkit/shell/custom_aliases.zsh
# Aquí puedes añadir todos tus alias y funciones personalizadas

# Alias de navegación rápida
alias l='ls -lah'
alias ..='cd ..'
alias ...='cd ../..'

# Alias para el toolkit
alias toolkit='cd ~/local-toolkit'
alias tinstall='~/local-toolkit/install/install.sh'

# Alias para Git
alias gs='git status'
alias gp='git push'
alias gl='git log --oneline --graph --all'

# Función para actualizar el toolkit y refrescar la terminal
update-toolkit() {
    cd ~/local-toolkit && git pull && ./install/install.sh && source ~/.zshrc && cd -
    echo "✨ Toolkit actualizado y terminal refrescada."
}

echo "✅ Configuraciones de local-toolkit cargadas."
