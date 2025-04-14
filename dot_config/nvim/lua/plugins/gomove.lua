return {
    'booperlv/nvim-gomove',
    config = function()
        local gomove = require('gomove')
        gomove.setup({
            map_defaults = true,
        })
    end,
}
