# FIREFLY Fish Shell Configuration
# Illuminating Your Terminal Experience

if status is-interactive
    # Commands to run in interactive sessions can go here

    # Initialize Starship prompt
    starship init fish | source



    # Useful Aliases
    # Navigation
    alias .. 'cd ..'
    alias ... 'cd ../..'
    alias .... 'cd ../../..'
    alias home 'cd ~'

    # List files with better defaults (using eza for icons and colors)
    alias ls 'eza --icons --group-directories-first'
    alias ll 'eza -lah --icons --group-directories-first --git'
    alias la 'eza -a --icons --group-directories-first'
    alias l 'eza -lh --icons --group-directories-first'
    alias tree 'eza --tree --icons --group-directories-first'

    # Better cat with syntax highlighting
    alias cat 'bat --style=plain --paging=never'
    alias catp 'bat --style=full'

    # Git shortcuts
    alias g 'git'
    alias gs 'git status'
    alias ga 'git add'
    alias gc 'git commit'
    alias gp 'git push'
    alias gl 'git log --oneline --graph --decorate'
    alias gd 'git diff'
    alias gco 'git checkout'
    alias gb 'git branch'

    # Safety nets
    alias rm 'rm -i'
    alias cp 'cp -i'
    alias mv 'mv -i'

    # System shortcuts
    alias update 'sudo pacman -Syu'
    alias install 'sudo pacman -S'
    alias search 'pacman -Ss'
    alias cleanup 'sudo pacman -Rns (pacman -Qtdq)'

    # Utility
    alias h 'history'
    alias c 'clear'
    alias q 'exit'
    alias mkdir 'mkdir -p'
    alias grep 'grep --color=auto'

    # Neovim shortcuts
    alias vi 'nvim'
    alias n 'nvim'
    alias vim 'nvim'

    # Network
    alias ports 'ss -tulanp'
    alias myip 'curl -s ifconfig.me'

    # Disk usage
    alias du 'du -h'
    alias df 'df -h'

    # Useful Functions
    # Extract any archive
    function extract
        if test -f $argv[1]
            switch $argv[1]
                case '*.tar.bz2'
                    tar xjf $argv[1]
                case '*.tar.gz'
                    tar xzf $argv[1]
                case '*.bz2'
                    bunzip2 $argv[1]
                case '*.rar'
                    unrar x $argv[1]
                case '*.gz'
                    gunzip $argv[1]
                case '*.tar'
                    tar xf $argv[1]
                case '*.tbz2'
                    tar xjf $argv[1]
                case '*.tgz'
                    tar xzf $argv[1]
                case '*.zip'
                    unzip $argv[1]
                case '*.Z'
                    uncompress $argv[1]
                case '*.7z'
                    7z x $argv[1]
                case '*'
                    echo "'$argv[1]' cannot be extracted"
            end
        else
            echo "'$argv[1]' is not a valid file"
        end
    end

    # Create directory and cd into it
    function mkcd
        mkdir -p $argv[1]; and cd $argv[1]
    end

    # Quick backup of a file
    function backup
        cp $argv[1] $argv[1].backup-(date +%Y%m%d-%H%M%S)
    end

    # FIREFLY Color Scheme for Fish
    set -g fish_color_normal e8eaed
    set -g fish_color_command ffb300
    set -g fish_color_keyword ffd93d
    set -g fish_color_quote 51cf66
    set -g fish_color_redirection ffa94d
    set -g fish_color_end ff9500
    set -g fish_color_error ff6b6b
    set -g fish_color_param e8eaed
    set -g fish_color_comment 4a5568
    set -g fish_color_selection --background=ffb300 --foreground=0d1117
    set -g fish_color_search_match --background=ffb300 --foreground=0d1117
    set -g fish_color_operator ffc078
    set -g fish_color_escape ffd93d
    set -g fish_color_autosuggestion 4a5568

    # Pager colors (for completions)
    set -g fish_pager_color_progress ffd93d
    set -g fish_pager_color_prefix ffb300
    set -g fish_pager_color_completion e8eaed
    set -g fish_pager_color_description 4a5568
    set -g fish_pager_color_selected_background --background=ffb300 --foreground=0d1117

    # FIREFLY-themed greeting (disabled in favor of welcome banner)
    set -g fish_greeting

    # Fish shell enhancements
    # Enable vi keybindings (optional - comment out if you prefer default)
    # fish_vi_key_bindings

    # Better history search
    bind \e\[A history-search-backward
    bind \e\[B history-search-forward

    # Enable fzf if available
    if type -q fzf
        fzf --fish | source
    end

    # Enhanced prompt (optional - uncomment to use)
    # function fish_prompt
    #     set_color ffb300
    #     echo -n "FIREFLY"
    #     set_color normal
    #     echo -n " "
    #     set_color ffd93d
    #     echo -n (prompt_pwd)
    #     set_color normal
    #     echo -n " ❯ "
    # end

    # MCP Server Environment Variables
    set -gx BRAVE_API_KEY BSAbDqNGFqhgzH9n1uESkBOTvlZxdJB
    set -gx GITLAB_PERSONAL_ACCESS_TOKEN ITS-e33-u7glWZG32uLstBSBPm86MQp1OjRhCA.01.0y1wr78l6
    set -gx GITLAB_API_URL https://gitlab.interlandtech.com/api/v4
    set -gx ORACLE_JDBC_URL jdbc:oracle:thin:@//150.230.247.43:1521/ORCLPDB1
    set -gx ORACLE_USER EMSSAIB
    set -gx ORACLE_PASSWORD EMSSAIB@2026
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
