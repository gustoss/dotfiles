return {
    'neovim/nvim-lspconfig',
    config = function()
        local lsp = require('lspconfig')
        local confLsp = require('lspconfig.configs')

        if not confLsp.q92_lsp then
            confLsp.q92_lsp = {
                default_config = {
                    cmd = { 
                        '/home/asimoes/.scripts/clangd_cmd.sh', 
                        'q92_1.5.0'
                    },
                    filetypes = { 'c', 'h' },
                    -- on_new_config = function(new_config, new_root_dir)
                        -- local path = string.find(new_root_dir, 'mp35')
                        -- if path ~= nil then
                        --     new_config = 'mp35_1.5.0'
                        --     return
                        -- end
                        --
                        -- new_config = 'q92_1.5.0'
                    -- end,
                    root_dir = function(fname)
                        local pathFile = lsp.util.find_git_ancestor(fname)
                        pathFile = string.gsub(pathFile, '%/point%-libs', '')
                        return pathFile
                    end,
                    settings = {}
                }
            } 
        end
        lsp.q92_lsp.setup({})
    end,
}
