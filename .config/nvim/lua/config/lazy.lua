-- https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.notify("Download lazy.nvim ...")
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.runtimepath:prepend(lazypath)

local opts = {
    defaults = {
        lazy = false,
        version = false,
    },
    checker = {
        -- auto check update
        enabled = true,
        notify = true,
    },
    --install = {
    --    colorscheme = {
    --        "tokyonight-storm"
    --    },
    --},
}

require("lazy").setup("plugins", opts)

