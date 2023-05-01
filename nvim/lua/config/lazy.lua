-- Plugins
-- Plugin Manager: lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = { 
    { "LazyVim/LazyVim", 
      import = "lazyvim.plugins" },
    { 
      import = "plugins"
    }
  },
  defaults = {
    lazy = true,
    version = true
  },
  install = {
    colorscheme = { "catppuccin/nvim" }
  },
  checker = {
    enabled = true
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tohtml",
        "tutor"
      }
    }
  }
})
