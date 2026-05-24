function fish_prompt
    set_color 5c6370
    printf '%s ' (prompt_pwd)

    set_color c7ccd1
    printf '❯ '

    set_color normal
end
