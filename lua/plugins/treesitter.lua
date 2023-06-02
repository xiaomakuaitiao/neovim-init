require'nvim-treesitter.configs'.setup {
    -- 添加不同的语言
    ensure_installed = { "lua", "vim", "vimdoc", "javascript", "json", "python", "go", "php", "html", "css" },

    highlight = { enable = true },
    indent = { enable = true},


    -- 不同括号颜色区分
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
