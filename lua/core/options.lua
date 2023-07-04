local opt = vim.opt

opt.guicursor = ""

-- 行号
opt.relativenumber = true
opt.number = true


opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true


opt.hlsearch = false
opt.incsearch = true

-- 缩进

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true


-- 防止包裹
opt.wrap = false


--光标行
opt.cursorline = true


-- 启用鼠标
opt.mouse:append("a")


-- 系统剪贴板
opt.clipboard:append("unnamedplus")


-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索 不区分大小写
opt.ignorecase = true
opt.smartcase = true


-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

opt.termguicolors = true
opt.scrolloff = 8
opt.isfname:append("@-@")

opt.updatetime = 50
opt.colorcolumn = "80"


-- Lua
vim.cmd[[colorscheme tokyonight-moon]]

-- 半透明
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

