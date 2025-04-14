return {
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
        enable = true,
        auto_save = true,
        auto_restore = true,
        suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
        -- log_level = 'debug',
        }
}
