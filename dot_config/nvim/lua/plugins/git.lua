return {
    'lewis6991/gitsigns.nvim',
    config = function()
        local git = require('gitsigns')
        git.setup({
            current_line_blame = true,
        })
    end,
}
