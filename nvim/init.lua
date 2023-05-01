-- Author: Patrick Moehrke

-- Basics
local vopt = vim.opt
local vwo = vim.wo
local vcmd = vim.cmd

vopt.number = true
vopt.ignorecase = true
vopt.compatible = false
vopt.cursorline = true
vopt.swapfile = false
vopt.writebackup = false
vopt.backup = false
vopt.autoindent = true
vopt.shiftwidth = 2
vwo.relativenumber = true

-- Plugins
require("config.lazy")
