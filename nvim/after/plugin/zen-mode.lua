require("zen-mode").setup {
    {
        window = {
            backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
            width = 120, -- width of the Zen window
            height = 1, -- height of the Zen window
            options = {
                number = false, -- disable number column
                relativenumber = false, -- disable relative numbers
            },
        },
        plugins = {
            options = {
                enabled = true,
                ruler = true, -- disables the ruler text in the cmd line area
                showcmd = true, -- disables the command in the last line of the screen
            },
            twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
            gitsigns = { enabled = false }, -- disables git signs
            tmux = { enabled = false }, -- disables the tmux statusline
            kitty = {
                enabled = false,
                font = "+4", -- font size increment
            },
            alacritty = {
                enabled = false,
                font = "14", -- font size
            },
        },
        on_open = function(win)
        end,
        -- callback where you can add custom code when the Zen window closes
        on_close = function()
        end,
    }
}
