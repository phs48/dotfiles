if status is-interactive
    # Commands to run in interactive sessions can go here
    fzf_configure_bindings --directory=\cg

    zoxide init fish | source
    source /usr/local/opt/asdf/libexec/asdf.fish
    starship init fish | source
    # oh-my-posh init fish --config ~/.ehi.omp.yaml | source
    # enable_poshtransientprompt

    # test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
end

# pnpm
set -gx PNPM_HOME "/Users/ehi/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end