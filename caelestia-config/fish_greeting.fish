function fish_greeting
    echo -ne '\x1b[38;5;16m'
    echo '                                                 '
    echo '▄▄▄▄▄▄     ▄▄▄▄▄   ▄▄▄▄▄▄▄   ▄▄▄▄▄▄▄   ▄▄▄   ▄▄▄ '
    echo '███▀▀██▄ ▄███████▄ ███▀▀███▄ ███▀▀███▄ ███   ███ '
    echo '███  ███ ███   ███ ███▄▄███▀ ███▄▄███▀ ▀███▄███▀ '
    echo '███  ███ ███▄▄▄███ ███  ███▄ ███  ███▄   ▀███▀   '
    echo '██████▀   ▀█████▀  ████████▀ ████████▀    ███    '
    echo '                                                 '
    set_color normal
    fastfetch --key-padding-left 5
end
