return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
        local api = require('nvim-tree.api')
        local function swat_then_open_tap()
            local node = api.tree.get_node_under_cursor()
            vim.cmd('wincmd l')
            api.node.open.tab(node)
        end
        local function my_on_attach(bufnr)
            local function opts(desc)
                return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            api.config.mappings.default_on_attach(bufnr)

            vim.keymap.set('n', '<C-b>', api.tree.close, opts('close'))
            vim.keymap.set('n', 'l', api.node.open.preview, opts('open preview'))
            vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts('close parent'))
            vim.keymap.set('n', '<Esc>', api.tree.close, opts('close'))
            vim.keymap.set('n', '<C-n>', api.fs.create, opts('create file/dir'))
            vim.keymap.set('n', 't', swat_then_open_tap, opts('Open in tab'))
        end
    require("nvim-tree").setup {
            on_attach = my_on_attach,
            hijack_cursor = true,
            renderer = {
                highlight_opened_files = 'icon',
                indent_markers = {
                    enable = true,
                    inline_arrows = false,
                }
            }
        }
  end,
}
