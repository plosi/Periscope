# Define Paths
set HOMEBREW /usr/local/sbin
set -gx PATH $HOMEBREW $PATH
set -gx fish_greeting (set_color magenta)(date +"%A, %B %d, %Y at %r (%Z)")

# Git Prompt Configuration
set __fish_git_prompt_showupstream "verbose"
set __fish_git_prompt_color_branch blue -o
set __fish_git_prompt_color_upstream cyan -o
set __fish_git_prompt_color_suffix cyan -o
set __fish_git_prompt_char_upstream_ahead "↑"
set __fish_git_prompt_char_upstream_behind "↓"
set __fish_git_prompt_char_upstream_diverged "? "
set __fish_git_prompt_char_upstream_equal "="
set __fish_git_prompt_char_upstream_prefix " ["

# Override Terminal Title and Set Prompt
function fish_title; echo $PWD | sed -e "s|^$HOME|~|" | tr -d "\n"; end
function fish_prompt

    set_color -o red;       echo -n (whoami)
    set_color    normal;    echo -n " at "
    set_color -o yellow;    echo -n (hostname -s)
    set_color    normal;    echo -n " in "
    set_color -o green;     echo -n (fish_title)
    set_color    normal;    echo -n " "
    if __fish_git_prompt > /dev/null
        printf "on%s\n" (__fish_git_prompt " %s]")
    end
    set_color    white;     echo -e "🍣  "

end
