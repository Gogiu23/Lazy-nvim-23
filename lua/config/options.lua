local opt = vim.opt

--Tab Identation
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.wrap = false

--Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

--Appearance
opt.termguicolors = true
opt.relativenumber = true
opt.number = true
opt.colorcolumn = '100'
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menu,menuone,noselect"

--Beahviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = true
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow =true
opt.path:append{'**'}
opt.clipboard:append{'unnamedplus'}
opt.confirm = true
opt.laststatus = 3
opt.mouse:append("a")
opt.iskeyword:append("-")
opt.pumblend = 10
opt.pumheight = 10
opt.showmode = false
opt.virtualedit = "block"
opt.wildmode = "longest:full,full"
opt.modifiable = true
opt.encoding = "UTF-8"
if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end
