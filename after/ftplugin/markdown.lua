vim.opt_local.wrap = true        -- Enable visual line wrapping
vim.opt_local.linebreak = true   -- Wrap at word boundaries instead of mid-word
vim.opt_local.breakindent = true -- Maintain indentation on wrapped lines

vim.keymap.set("n", "j", "gj", { buffer = true })
vim.keymap.set("n", "k", "gk", { buffer = true })
vim.keymap.set("n", "0", "g0", { buffer = true })
vim.keymap.set("n", "$", "g$", { buffer = true })
