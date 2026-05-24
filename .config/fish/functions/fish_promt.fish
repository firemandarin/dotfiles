function fish_prompt
    set_color 5c6370
    echo -n (prompt_pwd)

    echo -n ' '

    set_color c7ccd1
    echo -n '❯ '

    set_color normal
end
