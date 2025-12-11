_mulle_menu_complete()
{
    local cur prev words cword
    _get_comp_words_by_ref -n = cur prev words cword

    # List of all options
    local options=(
        -f --force
        -h --help
        --title --final-title
        --enable-single-option --single-option
        --disable-single-option --no-single-option
        --gui
        --select --selected-prefix --option-prefix
        --option --options
        -n --visible-items
        --no-ctrl-c --sv-rc --no-search
        --version
    )

    # Check if previous word is an option that takes an argument
    case "$prev" in
        --title|--final-title|--select|--selected-prefix|--option-prefix|--option|--options|--visible-items|-n)
            # These take a value, likely string or number; no specific completion
            COMPREPLY=()
            return 0
            ;;
        *)
            ;;
    esac

    # If current word starts with -, complete options
    if [[ "$cur" == -* ]]; then
        COMPREPLY=($(compgen -W "${options[*]}" -- "$cur"))
        return 0
    fi

    # For positional arguments (menu options), no completion
    COMPREPLY=()
    return 0
}

complete -F _mulle_menu_complete mulle-menu
