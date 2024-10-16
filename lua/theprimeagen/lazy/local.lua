local local_plugins = {
    {
        "ThePrimeagen/harpoon",
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")
            local term = require("harpoon.term")

            require("harpoon").setup()

            --local harpoon = require("harpoon")

            --harpoon.setup()

            vim.keymap.set("n", "<leader>a", function() mark.add_file() end)
            vim.keymap.set("n", "<C-e>", function() ui.toggle_quick_menu() end)

            vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
            vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
            vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
            vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
            vim.keymap.set("n", "<leader><C-h>", function() term.gotoTerminal(1) end)
            vim.keymap.set("n", "<leader><C-t>", function() term.gotoTerminal(2) end)
            vim.keymap.set("n", "<leader><C-n>", function() term.gotoTerminal(3) end)
            vim.keymap.set("n", "<leader><C-s>", function() term.gotoTerminal(4) end)
        end
    },
    {
        "ThePrimeagen/vim-apm",
        config = function()
            --[[
            local apm = require("apm")

            apm.setup({})
            vim.keymap.set("n", "<leader>apm", function() apm.toggle_monitor() end)
            --]]
        end
    },
    {
        "ThePrimeagen/vim-with-me",
        config = function() end
    },
}

return local_plugins

