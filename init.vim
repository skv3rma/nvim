"these files should be loaded in the sequence
set exrc
if exists('g:vscode')
    " VSCode extension
    source ~/.config/nvim/pluginsconfig/general-settings.vim
    source ~/.config/nvim/pluginsconfig/keybindings.vim
else
    " ordinary neovim
    source ~/.config/nvim/pluginsconfig/general-settings.vim
    source ~/.config/nvim/pluginsconfig/init.vim

    luafile ~/.config/nvim/lua/configs/init.lua

    source ~/.config/nvim/pluginsconfig/vim-rooter.vim
    source ~/.config/nvim/pluginsconfig/coc.vim
    source ~/.config/nvim/pluginsconfig/coc-yank.vim
    source ~/.config/nvim/pluginsconfig/neovide-config.vim
    source ~/.config/nvim/pluginsconfig/coc-dep.vim
    source ~/.config/nvim/pluginsconfig/coc-explorer.vim
    source ~/.config/nvim/pluginsconfig/better-whitespace.vim
    source ~/.config/nvim/pluginsconfig/easy-motion.vim
    source ~/.config/nvim/pluginsconfig/quick-scope.vim
    source ~/.config/nvim/pluginsconfig/comments.vim
    source ~/.config/nvim/pluginsconfig/BufOnly.vim
    source ~/.config/nvim/pluginsconfig/trouble.vim

    " source ~/.config/nvim/pluginsconfig/indentlines.vim
    " keybindings file
    source ~/.config/nvim/pluginsconfig/keybindings.vim
    " source ~/.config/nvim/pluginsconfig/async.vim
    " ==================== Language Specific Settings ======
    " source ~/.config/nvim/pluginsconfig/java-script.vim
    source ~/.config/nvim/pluginsconfig/symbols.vim
    " source ~/.config/nvim/pluginsconfig/misc.vim

    source ~/.config/nvim/pluginsconfig/which-key.vim
    " source ~/.config/nvim/pluginsconfig/startify.vim

    " source ~/.config/nvim/pluginsconfig/notify.vim
    " colorscheme rose-pine-moon "  rose-pine-moon
    " source ~/.config/nvim/pluginsconfig/luasnips.vim
    source ~/.config/nvim/pluginsconfig/vista.vim
    source ~/.config/nvim/pluginsconfig/floaterm.vim
    source ~/.config/nvim/pluginsconfig/telescope.vim
    source ~/.config/nvim/pluginsconfig/SyntaxAttr.vim
    source ~/.config/nvim/pluginsconfig/mysql.vim

    " source ~/.config/nvim/pluginsconfig/harpoon.vim
    " source ~/.config/nvim/themes/everforest.vim
    " source ~/.config/nvim/pluginsconfig/gruvbox.vim
    " source ~/.config/nvim/themes/theme-iceberg-dark.vim
    " source ~/.config/nvim/pluginsconfig/gruvbox-material.vim
    " source ~/.config/nvim/pluginsconfig/gruvbox-flat.vim
    " source ~/.config/nvim/themes/theme-dogrun.vim
    let g:indent_blankline_enabled = v:false
    let g:indent_guides_start_level=2
    let g:indent_guides_guide_size=2

    set colorcolumn=0
    set cmdheight=1
    let g:gutentags_enabled=1
    " let g:vim_json_conceal=0
    " let g:vim_markdown_conceal=0
    " let g:vim_json_syntax_conceal = 0
    " let g:vim_json_syntax_conceal = 0
    " source ~/.config/nvim/pluginsconfig/sonokai.vim
    "

    " source ~/.config/nvim/pluginsconfig/rainbow-paren.vim
endif
