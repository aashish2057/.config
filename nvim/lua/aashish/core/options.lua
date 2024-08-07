local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true
-- opt.scrolloff = 100

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- line wrapping
opt.wrap = true
opt.linebreak = true
opt.wrapmargin = 0
opt.textwidth = 0
opt.number = true

-- search setttings
opt.ignorecase = true
opt.smartcase = true

-- apperance
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- text deleting
opt.iskeyword:append("-")
