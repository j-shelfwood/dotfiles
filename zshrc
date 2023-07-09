if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export PATH="/opt/homebrew/bin:$PATH"
else
    eval "$(/usr/local/bin/brew shellenv)"
    export PATH="/usr/local/bin:$PATH"
fi

# Add composer's global bin directory to the PATH
if [ -d "$HOME/.composer/vendor/bin" ]; then
    export PATH="$HOME/.composer/vendor/bin:$PATH"
elif [ -d "$HOME/.config/composer/vendor/bin" ]; then
    export PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

function create_database() {
    mysql -u root -proot -e "CREATE DATABASE IF NOT EXISTS $1 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
}

alias create_database=create_database
alias sourceit="source ~/.zshrc"
alias art="php artisan"
alias nah="git reset --hard && git clean -df"
alias diablo="arch -x86_64 gameportingtoolkit-no-hud ~/diablo 'C:\Program Files (x86)\Diablo IV\Diablo IV Launcher.exe'"
