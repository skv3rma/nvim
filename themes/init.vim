
" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

" italic support in terminal

if (has("nvim"))
"  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" this is useful in case of alacritty
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" cursor shape fix as per the mode
set t_ZH=^[[3m
set t_ZR=^[[23m


" ==================== themes      ====================

" ==================== Dark Themes ====================
" source ~/.config/nvim/themes/theme-onehalf.vim
" source ~/.config/nvim/themes/theme-jellybeans.vim
" source ~/.config/nvim/themes/theme-dracula.vim
" source ~/.config/nvim/themes/theme-tomorrow.vim
" source ~/.config/nvim/themes/theme-codedark.vim
" source ~/.config/nvim/themes/theme-nord.vim
" source ~/.config/nvim/themes/theme-codedark.vim
"source ~/.config/nvim/themes/theme-dogrun.vim
" source ~/.config/nvim/themes/theme-one.vim
" source ~/.config/nvim/themes/themes-palenight.vim
" source ~/.config/nvim/themes/sonokai.vim
" source ~/.config/nvim/themes/theme-sonokai.vim

" source ~/.config/nvim/themes/theme-tokyo.vim
" source ~/.config/nvim/themes/theme-minimalist.vim
" source ~/.config/nvim/themes/theme-zenburn.vim
" source ~/.config/nvim/themes/theme-sonokai.vim
" source ~/.config/nvim/themes/theme-monokai-pro.vim
" source ~/.config/nvim/themes/theme-moonlight.vim
" ==================== Dark & Light Themes ==============
"
" ==================== AYU THEMES          ==============
" source ~/.config/nvim/themes/theme-ayudark.vim
" source ~/.config/nvim/themes/theme-ayulight.vim

" =================== SOLARIZED THEMES
" source ~/.config/nvim/themes/theme-solarized.vim
" source ~/.config/nvim/themes/theme-solarizeddark.vim
" source ~/.config/nvim/themes/theme-solarizedlight.vim
" source ~/.config/nvim/themes/theme-toast.vim

" =================== GRUVBOX THEMES
" source ~/.config/nvim/themes/theme-gruvbox.vim
" source ~/.config/nvim/themes/theme-gruvboxmaterial.vim
" source ~/.config/nvim/themes/theme-phoenix.vim
" source ~/.config/nvim/themes/theme-predawn.vim
" source ~/.config/nvim/themes/everforest.vim

" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE



