" My Options "

:set number           "set numbered lines"
":set relative number "set relative numbered lines"
:set cursorline       "highlight the current line"
:set autoindent       "" 
:set tabstop=4        " insert 4 spaces for a tab"
:set shiftwidth=4     "he number of spaces inserted for each indentation"
:set smarttab         ""
:set expandtab        "convert tabs to spaces"
:set mouse=a          "allow the mouse to be used in neovim" 
:set splitright
:set splitbelow
"set wrap=false        "display lines as one long line"


"Plugins"{{{
" -------------------------------------------------------
call plug#begin()

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'                    "Useful lua functions used ny lots of plugins"
Plug 'nvim-telescope/telescope.nvim'            "telescope for fuzzy search" 

call plug#end()
"}}}

" ColorScheme and theme setup "
"------------------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  "set background=dark
  " Use NeoSolarized
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif


" LuaLine config "{{{
" ----------------------------------------------------------------
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END
"}}}
