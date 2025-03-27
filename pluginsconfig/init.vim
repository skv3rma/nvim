" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" === Editing Plugins === "
Plug 'norcalli/nvim-colorizer.lua'

" === Appearance
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)

Plug 'tjdevries/colorbuddy.vim'
" creating themes in real time
Plug 'rktjmp/lush.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'kvrohit/mellow.nvim'
Plug 'rose-pine/neovim'
" Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
Plug 'eddyekofo94/gruvbox-flat.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'EdenEast/nightfox.nvim'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
Plug 'navarasu/onedark.nvim'
Plug 'wadackel/vim-dogrun'
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/everforest'
Plug 'rakr/vim-two-firewatch'

" smooth scrolling of vim motions
" Plug 'declancm/cinnamon.nvim'
Plug 'michaelb/sniprun', {'do': 'sh ./install.sh'}
" Plug 'akinsho/toggleterm.nvim'
Plug 'm-demare/hlargs.nvim'
Plug 'xiyaowong/transparent.nvim'
Plug 'lukas-reineke/indent-blankline.nvim',  {'branch': 'master'}
" Plug 'nvimdev/dashboard-nvim'
Plug 'jparise/vim-graphql'
Plug 'mbbill/undotree'
Plug 'uzxmx/vim-widgets'
" === Editor Settings
Plug 'tpope/vim-sensible'
Plug 'David-Kunz/markid'

" " Note taking
" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'
" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" vim-startify alternative
Plug 'goolord/alpha-nvim'

" Plug 'folke/twilight.nvim'
" Plug 'folke/zen-mode.nvim'
Plug 'folke/tokyonight.nvim'

Plug 'unblevable/quick-scope'
Plug 'ludovicchabant/vim-gutentags'
Plug 'stevearc/dressing.nvim'

Plug 'airblade/vim-rooter'
Plug 'numToStr/Comment.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'akinsho/nvim-bufferline.lua'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'rking/ag.vim'

" Telescope is a required dependency for :ScribeFind to work
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Telescope extensions
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'ThePrimeagen/harpoon' , {'branch': 'harpoon2'}
Plug 'fannheyward/telescope-coc.nvim'
" lsp config
Plug 'rcarriga/nvim-notify'
" === Language Servers === "
" Intellisense Engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vista.vim'
Plug 'dstein64/vim-startuptime'
" Plug 'neoclide/jsonc.vim'
Plug 'rhysd/clever-f.vim'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'famiu/nvim-reload'

" nvim ui libs
Plug 'stevearc/dressing.nvim'
" Plug 'MunifTanjim/nui.nvim'
" lua mappings for fzf
Plug 'ibhagwan/fzf-lua'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'MunifTanjim/nui.nvim'
Plug 'kndndrj/nvim-dbee'
"Plug 'Exafunction/codeium.vim', { 'branch': 'main' }

" Initialize plugin system
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
