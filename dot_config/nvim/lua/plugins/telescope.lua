return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local tele = require('telescope')
        local actions = require('telescope.actions')
        tele.setup({
            defaults = {
                mappings = {
                    i = {
                        ['<CR>'] = actions.select_tab,
                        ['<C-Down>'] = actions.cycle_history_next,
                        ['<C-Up>'] = actions.cycle_history_prev,
                    }
                }
            }
        })
    end,
}
